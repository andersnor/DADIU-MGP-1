using UnityEngine;
using System.Collections;

public class SpawnIdles : MonoBehaviour {
    GameObject levelField;
    GameObject idleTar; 
    [Header("Input GameObject-name of base level:")]
    [SerializeField]
    string baseLevel;

	// Use this for initialization
	void Awake () {
        idleTar = (GameObject) Resources.Load("Prefabs/idleTar");
        if (GameObject.Find(baseLevel) == null)
            print("No BASE LEVEL object found, input string-name under \"idleTarget\" script");
        else
            levelField = GameObject.Find(baseLevel);
        for(int i = -1; i<2; i+=2)
        {
           for (int k = -2; k < 3; ++k)
            { 
                GameObject newTar = (GameObject)Instantiate(idleTar, new Vector3(levelField.GetComponent<Collider>().bounds.extents.x * i - 2,
                                                                                 1, levelField.GetComponent<Collider>().bounds.extents.z / 2 * k - 2), Quaternion.identity);
                newTar.transform.SetParent(transform);
            }
        }
        for (int x = -1; x < 2; x += 2)
        {
            for (int y = -1; y < 2; ++y)
            {
                GameObject newTar = (GameObject)Instantiate(idleTar, new Vector3(levelField.GetComponent<Collider>().bounds.extents.x / 2 * y - 2,
                                                                                 1, levelField.GetComponent<Collider>().bounds.extents.z * x - 2), Quaternion.identity);
                newTar.transform.SetParent(transform);
            }
        }

    }
}
