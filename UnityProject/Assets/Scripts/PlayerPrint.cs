using UnityEngine;
using System.Collections;

public class PlayerPrint : MonoBehaviour {
    [Header("Distance between player-feet(m):")]
    [SerializeField]
    float feetDistance;
    float printOffset, surfDist;
    PlayerPrintPool printPool;
    bool foot = false; //True = left, false = right
    Collider surface;

    void Start () {
        surfDist = 0 - transform.position.y * 2 + 0.005f;
        surface = GameObject.Find("Terrain").GetComponent<Collider>();
        printPool = GameObject.Find("_SCRIPTS").GetComponent<PlayerPrintPool>();
        printOffset = feetDistance / 2;
        GameHandler.instance.OnPlayerStep += spawnStep;
	}

    
    void spawnStep()
    {
        GameObject newPrint = printPool.getNextPrint();
        if (!newPrint.CompareTag("spawned"))
        {
            newPrint = Instantiate(newPrint);
            newPrint.tag = "spawned";
            printPool.registerPrint(newPrint);
        }
        newPrint.transform.SetParent(transform);
        if (foot)
            newPrint.transform.localPosition = new Vector3(-printOffset, surfDist, 0);
        else
            newPrint.transform.localPosition = new Vector3(printOffset, surfDist, 0);
        newPrint.transform.rotation = transform.rotation;
        newPrint.GetComponent<AudioSource>().Play();
        //newPrint.GetComponent<AkAmbient>().triggered(); // PLAY AUDIO WWIVE SHIT
        newPrint.transform.SetParent(null);
        newPrint.transform.position = new Vector3(newPrint.transform.position.x, 0.005f, transform.position.z);
        foot = !foot;
    }

    void OnDestroy()
    {
        print("destroy");
        GameHandler.instance.OnPlayerStep -= spawnStep;
    }
}
