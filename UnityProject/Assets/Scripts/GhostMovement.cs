using UnityEngine;
using System.Collections;

public class GhostMovement : MonoBehaviour {

    [Header("Follow target variables")]
    public Transform followTar;
    [SerializeField]
    float stepThold, idleTimer;
    float dist = 0, followTimeout = 0;
    [Header("Ghost movement variables")]
    [SerializeField]
    float sprintSpeed;
    [SerializeField]
    float walkSpeed;
    [SerializeField]
    float followSpeed;
    [Header("Distance between ghost feet (m):")]
    [SerializeField]
    float feetDistance;
    float printOffset, surfDist;

    Vector3 prevPos;
    GhostPrintPool printPool;
    bool foot = false; //True = left, false = right

    NavMeshAgent agent;
    Transform[] randTar;
    Collider surface;

    void Start () {
        surfDist = 0 - transform.position.y + 0.005f;
        surface = GameObject.Find("Terrain").GetComponent<Collider>();
        printOffset = feetDistance / 2;
        Transform idleLookUp = GameObject.Find("idleTargets").transform;
        randTar = new Transform[idleLookUp.childCount];
        for (int i = 0; i < randTar.Length; i++)
            randTar[i] = idleLookUp.GetChild(i);
        printPool = GameObject.Find("_SCRIPTS").GetComponent<GhostPrintPool>();
        agent = GetComponent<NavMeshAgent>();
        GameHandler.instance.OnMusicBoxRewind += musicBoxWind;
        GameHandler.instance.OnPlayerStep += UpdPlayerPos;
        GameHandler.instance.OnMusicBoxRewinded += MBoxWinded;
    }
	void Awake()
    {

    }
	void Update () {
        dist += (prevPos - transform.position).magnitude;
        prevPos = transform.position;
        if (dist > stepThold)
        {
            spawnStep();
            dist = 0;
            GameHandler.instance.TriggerGhostStep();
        }
        followTimeout += 1 * Time.deltaTime;
        if (followTimeout > idleTimer)
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
        idleTimer = -100;
    }
    void UpdPlayerPos()
    {
        followTimeout = 0;
        agent.speed = followSpeed;
        agent.destination = followTar.position;
    }
    void MBoxWinded()
    {
        followTimeout = 0;
        agent.speed = followSpeed;
        agent.destination = followTar.position;
    }

    void OnDestroy()
    {
        GameHandler.instance.OnMusicBoxRewind -= musicBoxWind;
        GameHandler.instance.OnPlayerStep -= UpdPlayerPos;
        GameHandler.instance.OnMusicBoxRewinded -= MBoxWinded;
    }
}
