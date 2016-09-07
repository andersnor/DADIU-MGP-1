using UnityEngine;
using System.Collections;

public class Test1 : MonoBehaviour {

	void Start () {
        GameHandler.instance.player = gameObject;
        Debug.Log(GameHandler.instance.player);
	}
	
	void Update () {
	
	}
}
