using UnityEngine;
using System.Collections;

public class GameHandler : MonoBehaviour {

    private static GameHandler current;

    public static GameHandler instance{
        get
        {
            if (!current)
            {
                current = FindObjectOfType(typeof(GameHandler)) as GameHandler;
                if (!current)
                    Debug.LogError("There has to be a GameHandler in the scene.");
            }
            return current;
        }
    }

	void Start () {
	
	}
	
	void Update () {
	
	}
}
