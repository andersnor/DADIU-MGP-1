using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RandomMusicSpawn : MonoBehaviour {

    public float spawnRange;
    public float pointRange;
    public GameObject player;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void SpawnRandomInRange()
    {
        print("Spawning...");
        // Find spawn points in range, and all spawn points in case there are no in range, then remove self
        GameObject[] allPoints = GameObject.FindGameObjectsWithTag("MusicSpawn");
        Collider[] collided = Physics.OverlapSphere(player.transform.position, spawnRange);
        List<GameObject> inRange = removeSelf(gameObject, collided);
        if(inRange.Count == 0)
        {
            // No points in range, move to any random point including self
            transform.position = allPoints[Random.Range(0, allPoints.Length)].transform.position;
        }
        else
        {
            // Move to a random point in range
            transform.position = inRange[Random.Range(0, inRange.Count)].transform.position;
        }
    }

    public void SpawnRandomOutRange()
    {
        GameObject[] allPoints = GameObject.FindGameObjectsWithTag("MusicSpawn");
        Collider[] collided = Physics.OverlapSphere(player.transform.position, spawnRange);

        List<GameObject> outRange = sortOut(collided, allPoints);
        if(outRange.Count == 0)
        {
            // No points outside range, move to any random point including self
            transform.position = allPoints[Random.Range(0, allPoints.Length)].transform.position;
        }
        else
        {
            // Move to a random point in range
            transform.position = outRange[Random.Range(0, outRange.Count)].transform.position;
        }
        
    }

    List<GameObject> sortOut(Collider[] inside, GameObject[] all)
    {
        List<GameObject> result = new List<GameObject>();
        for(int i = 0; i < all.Length; i++)
        {
            if (contains(inside, all[i]))
            {
                all[i].GetComponent<Renderer>().material.color = Color.red;
            }
            else
            {
                result.Add(all[i]);
                all[i].GetComponent<Renderer>().material.color = Color.black;
            }
        }
        return result;
    }

    bool contains(Collider[] list, GameObject obj)
    {
        for(int i = 0; i < list.Length; i++)
        {
            if(list[i].gameObject == obj)
            {
                return true;
            }
        }
        return false;
    }

    // Sort out music spawn points and remove self from the list
    List<GameObject> removeSelf(GameObject self, Collider[] list)
    {
        List<GameObject> result = new List<GameObject>();
        for (int i = 0; i < list.Length; i++)
        {
            if (list[i].tag == "MusicSpawn")
            {
                if (Vector3.Distance(self.transform.position, list[i].gameObject.transform.position) > pointRange)
                {
                    result.Add(list[i].gameObject);
                }
            }
        }
        return result;
    }
}
