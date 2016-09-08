using UnityEngine;
using System.Collections;

public class PlayerPrint : MonoBehaviour {
    [Header("Distance between player-feet(m):")]
    [SerializeField]
    float feetDistance;
    float printOffSet;
    PlayerPrintPool printPool;
    bool foot = false; //True = left, false = right

    // Use this for initialization
    void Start () {
        printPool = GameObject.Find("_SCRIPTS").GetComponent<PlayerPrintPool>();
        printOffSet = feetDistance / 2;
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
            newPrint.transform.localPosition = new Vector3(-printOffSet, 0, 0);
        else
            newPrint.transform.localPosition = new Vector3(printOffSet, 0, 0);
        newPrint.transform.localRotation = transform.rotation;
        newPrint.transform.SetParent(null);
        foot = !foot;
    }
}
