using UnityEngine;
using System.Collections;

public class GhostPrint : MonoBehaviour {

    public Transform followTar;
    public float followSpeed = 5, stepThold;
    float dist = 0;
    public Vector3 left, right;
    Vector3 prevPos, curFoot;
    PrintPool printPool;

    //NavMesh
    NavMeshAgent agent;

    bool foot=false; //True = left, false = right

	// Use this for initialization
	void Start () {
        printPool = GameObject.Find("_SCRIPTS").GetComponent<PrintPool>();
        agent = GetComponent<NavMeshAgent>();
        //SUBSCRIBE TO: PlayerMoved, OnMusicBoxRewind/Timeout

       
    }
	
	// Update is called once per frame
	void Update () {
        dist += (prevPos - transform.position).magnitude;
        prevPos = transform.position;
        if (dist > stepThold)
        {
            spawnStep();
            dist = 0;
        }
        //Evt. dynamisk stepThold

    }

    void spawnStep()
    {
        if (foot)
            curFoot = left;
        else
            curFoot = right;
        GameObject newPrint = printPool.getNextPrint();
        if(!newPrint.CompareTag("spawned"))
        {
            newPrint = Instantiate(newPrint);
            newPrint.tag = "spawned";
            printPool.registerPrint(newPrint);
        }
        newPrint.transform.SetParent(transform);
        newPrint.transform.localPosition = curFoot;
        newPrint. transform.localRotation = transform.rotation;
        newPrint.transform.SetParent(null);
        foot =! foot;
    }
}
