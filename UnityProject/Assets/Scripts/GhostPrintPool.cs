using UnityEngine;
using System.Collections;

public class GhostPrintPool : MonoBehaviour {
    public GameObject printPrefab;
    public GameObject[] printPool;
    public int poolSize;
    int index = 0;
	// Use this for initialization
	void Start () {
        //printPrefab = Resources.Load("/Prefabs/ghostPrint") as GameObject;
        printPool = new GameObject[poolSize];
        for (int x = 0; x < poolSize; x++)
            printPool[x] = printPrefab;
	}
	
	// Update is called once per frame
	void Update () {


	
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
