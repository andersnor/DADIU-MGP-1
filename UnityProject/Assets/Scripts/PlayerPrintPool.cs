using UnityEngine;
using System.Collections;

public class PlayerPrintPool : MonoBehaviour {
    public GameObject printPrefab;
    GameObject[] printPool;
    [Header("Amount of maximum visible player-prints:")]
    [SerializeField]
    int poolSize;
    int index = 0;
	// Use this for initialization
	void Start () {
        printPrefab = Resources.Load("Prefabs/playerPrint") as GameObject;

        printPool = new GameObject[poolSize];
        for (int x = 0; x < poolSize; x++)
            printPool[x] = printPrefab;
	}

    public GameObject getNextPrint()
    {
        index++;
        if(index >= poolSize)
        {
            index = 0;
        }
        return printPool[index];
    }

    public void registerPrint(GameObject print)
    {
        printPool[index] = print;
    }
}
