using UnityEngine;
using System.Collections;

public class RandomTrigger : MonoBehaviour {

    public GameObject musicBox;
    public float speed;
    public bool insideRange;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        transform.position = Vector3.MoveTowards(transform.position, musicBox.transform.position, speed * Time.deltaTime);
	}

    void OnTriggerStay(Collider coll)
    {
        if(coll.gameObject.tag == "MusicBox")
        {
            if (insideRange)
            {
                musicBox.GetComponent<RandomMusicSpawn>().SpawnRandomInRange();
            }
            else
            {
                musicBox.GetComponent<RandomMusicSpawn>().SpawnRandomOutRange();
            }
        }
    }
}
