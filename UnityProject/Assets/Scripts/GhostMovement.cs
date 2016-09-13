using UnityEngine;
using System.Collections;

public class GhostMovement : MonoBehaviour {

    [Header("Follow target variables")]
    public Transform followTar;
    [SerializeField]
    float stepThold, idleTimer;
    float dist = 0, followTimeout = float.MaxValue;
    [Header("Ghost movement variables")]
    [SerializeField]
    float sprintSpeed;
    [SerializeField]
    float walkSpeed;
    [SerializeField]
    float followSpeed;
    [SerializeField]
    float chaseStepsThreshold, chaseStepsDecayTime;
    [Header("Distance between ghost feet (m):")]
    [SerializeField]
    float feetDistance;
    float printOffset, surfDist;
    private bool isSprinting = false, isChasingPlayer = false;

    private float chaseSteps = 0, chaseStepsTimestamp = 0;

    Vector3 prevPos;
    GhostPrintPool printPool;
    bool foot = false; //True = left, false = right

    NavMeshAgent agent;
    Transform[] randTar;
    Collider surface;

    void Start () {
        GameHandler.instance.ghost = gameObject;
        surfDist = 0 - transform.position.y + 0.005f;
        surface = GameObject.Find("Terrain").GetComponent<Collider>();
        printOffset = feetDistance / 2;
        Transform idleLookUp = GameObject.Find("idleTargets").transform;
        randTar = new Transform[idleLookUp.childCount];
        for (int i = 0; i < randTar.Length; i++)
            randTar[i] = idleLookUp.GetChild(i);
        printPool = GameObject.Find("_SCRIPTS").GetComponent<GhostPrintPool>();
        agent = GetComponent<NavMeshAgent>();
    }
	void Awake()
    {

    }
	void Update () {
        dist += (prevPos - transform.position).magnitude;
        prevPos = transform.position;

        if (Time.time > chaseStepsTimestamp + chaseStepsDecayTime)
        {
            if (chaseSteps > 0)
                chaseSteps--;
            chaseStepsTimestamp = Time.time;
        }

        if (dist > stepThold)
        {
            spawnStep();
            dist = 0;
            GameHandler.instance.TriggerGhostStep();
        }
        followTimeout += 1 * Time.deltaTime;
        if (followTimeout > idleTimer && !isSprinting)
        {
            agent.destination = randTar[Random.Range(0, randTar.Length)].position;
            agent.speed = walkSpeed;
            followTimeout = 0;
        }
    }

    void spawnStep()
    {
     
        GameObject newPrint = printPool.getNextPrint();
        if(!newPrint.CompareTag("spawned"))
        {
            newPrint = Instantiate(newPrint);
            newPrint.tag = "spawned";
            printPool.registerPrint(newPrint);
        }
        newPrint.transform.SetParent(transform);
        if (foot)
            newPrint.transform.localPosition = new Vector3(-printOffset, 0, 0);
        else
        {
            newPrint.transform.localPosition = new Vector3(printOffset, 0, 0);
            newPrint.GetComponent<Renderer>().material.mainTextureScale = new Vector2(-1f,1);
        }
        newPrint.transform.rotation = transform.rotation;
        newPrint.GetComponent<AudioSource>().Play();
        //newPrint.GetComponent<AkAmbient>().triggered(); //PLAY AUDIO WWIVE SHIT
        newPrint.transform.SetParent(null);
        newPrint.transform.position = new Vector3(newPrint.transform.position.x, 0.005f, newPrint.transform.position.z);
        foot =! foot;
    }
    void musicBoxWind()
    {
        agent.destination = followTar.position;
        agent.speed = sprintSpeed;
        isSprinting = true;
    }
    void musicBoxWinded()
    {
        followTimeout = 0;
        agent.speed = followSpeed;
        agent.destination = followTar.position;
        isSprinting = false;
    }
    void updatePlayerPos()
    {
        if (chaseSteps < chaseStepsThreshold)
            chaseSteps++;
        if (chaseSteps >= chaseStepsThreshold)
        {
            followTimeout = 0;
            agent.speed = followSpeed;
            agent.destination = followTar.position;
        }
        //Debug.Log(chaseSteps + ", " + chaseStepsThreshold);
    }

    void OnDestroy()
    {
        GameHandler.instance.OnMusicBoxRewind -= musicBoxWind;
        GameHandler.instance.OnMusicBoxRewinded -= musicBoxWinded;
        GameHandler.instance.OnPlayerStep -= updatePlayerPos;
    }

    public void ChasePlayer()
    {
        Debug.Log("Chasing Player");
        if (!isChasingPlayer)
        {
            isChasingPlayer = true;
            followTimeout = 0;
            GameHandler.instance.OnMusicBoxRewind += musicBoxWind;
            GameHandler.instance.OnMusicBoxRewinded += musicBoxWinded;
            GameHandler.instance.OnPlayerStep += updatePlayerPos;
        }
    }
}
