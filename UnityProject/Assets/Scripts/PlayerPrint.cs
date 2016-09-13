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
        surfDist = 0 - transform.GetChild(0).position.y * 2 + 0.005f;//
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
        newPrint.transform.SetParent(transform.GetChild(0));//
        if (foot)
            newPrint.transform.localPosition = new Vector3(-printOffset, 0.01f, 0);
        else
        {
            newPrint.transform.localPosition = new Vector3(printOffset, 0.01f, 0);
            newPrint.GetComponent<Renderer>().material.mainTextureScale = new Vector2(-1f, 1);
        }
        Vector3 tempRot = Vector3.zero;
        tempRot.x = 0;
        tempRot.z = 0;
        tempRot.y = transform.GetChild(0).rotation.eulerAngles.y;
        newPrint.transform.rotation = Quaternion.Euler(tempRot);

        //print(transform.GetChild(0).rotation.eulerAngles.y);
        //newPrint.GetComponent<AudioSource>().Play();
        newPrint.GetComponent<AkAmbient>().triggered(); //PLAY AUDIO WWIVE SHIT
        newPrint.GetComponent<ParticleSystem>().Play();
        newPrint.transform.SetParent(null);
        newPrint.transform.localScale = new Vector3(0.025f, 0.01f, 0.025f);
        newPrint.transform.position = new Vector3(newPrint.transform.position.x, 0.005f, newPrint.transform.position.z);
        foot = !foot;
    }

    void OnDestroy()
    {
     //   print("destroy");
        GameHandler.instance.OnPlayerStep -= spawnStep;
    }
}
