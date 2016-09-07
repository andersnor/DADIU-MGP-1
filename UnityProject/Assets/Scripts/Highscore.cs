using UnityEngine;
using System.Collections;

public class Highscore : MonoBehaviour {

    public float beg;

	// Use this for initialization
	void Start (){
        beg = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
	}

    public float getScore()
    {
        return Time.time - beg;
    }
}
