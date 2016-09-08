using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class HealthTracker : MonoBehaviour {

    [SerializeField]
    int health;

	// Use this for initialization
	void Start () {
        GameHandler.instance.OnGhostAttack += TakeDamage;
	}
	
	// Update is called once per frame
	void Update () {
	    
	}

    void TakeDamage()
    {
        health--;
        if(health <= 0)
            GameHandler.instance.reset();
    }
}
