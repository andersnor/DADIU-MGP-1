using UnityEngine;
using System.Collections;

public class GhostMovement : MonoBehaviour {

    [Header("Follow target variables")]
    public Transform followTar;
    public float stepThold, idleTimer;
    float dist = 0, followTimeout = 0;
    [Header("Ghost movement variables")]
    public float sprintSpeed;
    public float walkSpeed;
    public float followSpeed;
    [Header("Print position off-set (Left/Right)")]
    [SerializeField]
    float printOffSet;

    Vector3 prevPos;
    GhostPrintPool printPool;
    bool foot = false; //True = left, false = right

    NavMeshAgent agent;
    Transform[] randTar;

    void Start () {
        Transform idleLookUp = GameObject.Find("idleTargets").transform;
        randTar = new Transform[idleLookUp.childCount];
        for (int i = 0; i < randTar.Length; i++)
            randTar[i] = idleLookUp.GetChild(i);
        print("Found " + randTar.Length + " random positions to idle towards. Add more \"randTar\" prefabs positioned atedges of world in scene, as child to idleTargets if necessary");
        printPool = GameObject.Find("_SCRIPTS").GetComponent<GhostPrintPool>();
        agent = GetComponent<NavMeshAgent>();
        GameHandler.instance.OnMusicBoxRewind += musicBoxWind;
        GameHandler.instance.OnPlayerStep += UpdPlayerPos;
        GameHandler.instance.OnMusicBoxRewinded += MBoxWinded;
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

        agent.destination = followTar.position;
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
            newPrint.transform.localPosition = new Vector3(-printOffSet, -GetComponent<Collider>().bounds.extents.y*2, 0);
        else
            newPrint.transform.localPosition = new Vector3(printOffSet, -GetComponent<Collider>().bounds.extents.y*2, 0);
        newPrint.transform.rotation = transform.rotation;
        newPrint.transform.SetParent(null);
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
        agent.destination = followTar.position;
    }
    void MBoxWinded()
    {
        followTimeout = 0;
        agent.speed = followSpeed;
        agent.destination = followTar.position;
    }

}
