using UnityEngine;
using System.Collections;

public class PlayerPrint : MonoBehaviour {
    [Header("Foot-print left/right off-set")]
    public int printOffSet;
    PlayerPrintPool printPool;
    bool foot = false; //True = left, false = right

    // Use this for initialization
    void Start () {
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
