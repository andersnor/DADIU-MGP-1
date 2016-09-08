using UnityEngine;
using System.Collections;

public class DamageTrigger : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter(Collider coll)
    {
        if(coll.CompareTag("Player"))
            GameHandler.instance.TriggerGhostAttack();
    }
}
