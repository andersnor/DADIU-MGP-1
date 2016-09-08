using UnityEngine;
using System.Collections;

public class HealthTracker : MonoBehaviour {

    public int health;

	// Use this for initialization
	void Start () {
	    
	}
	
	// Update is called once per frame
	void Update () {
	    
	}

    void OnCollisionEnter(Collision coll)
    {
        // Should probably check if it collided with the ghost
        health--;
        if(health == 0)
        {
            // End Game by calling event to do so
        }
    }
}
