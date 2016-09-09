using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class HealthTracker : MonoBehaviour {

    [SerializeField]
    int health;

	void Start () {
        GameHandler.instance.OnGhostAttack += TakeDamage;
	}
	
	void Update () {
	    
	}

    void TakeDamage()
    {
        health--;
        if(health <= 0)
            GameHandler.instance.GameOver();
    }
}
