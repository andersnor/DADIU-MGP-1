using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RandomMusicSpawn : MonoBehaviour {
    
    public float spawnRange;
    public float minSpawnRange;
    float pointRange;
    public GameObject player;
    public float rangeIncrease;
    public bool debug;
    string musicSpawnTag = "MusicSpawn";

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void SpawnRandom()
    {
        SpawnRandomOutRange();
        spawnRange += rangeIncrease;
        player.GetComponentInChildren<SphereCollider>().radius = spawnRange;
    }

    private void SpawnRandomOutRange()
    {
        GameObject[] allPoints = GameObject.FindGameObjectsWithTag(musicSpawnTag);
        List<GameObject> inRange = getMusicSpawns(Physics.OverlapSphere(player.transform.position, spawnRange));
        List<GameObject> outRange = getOutRange(allPoints);
        if(outRange.Count == 0)
        {
            // There are no points outside range, sort out the too close points, and choose a random point from them.
            List<GameObject> spawnPool = sortOutTooClose(allPoints);
            transform.position = spawnPool[Random.Range(0, spawnPool.Count)].transform.position;
            
            // Coloring of too close/points picked between for debugging.
            if (debug)
            {
                for (int i = 0; i < allPoints.Length; i++)
                {
                    allPoints[i].gameObject.GetComponent<Renderer>().material.color = Color.blue;
                }
                for (int i = 0; i < spawnPool.Count; i++)
                {
                    spawnPool[i].gameObject.GetComponent<Renderer>().material.color = Color.green;
                }
            }
        }
        else
        {
            // There were points outside of range, pick a random one of them.
            transform.position = outRange[Random.Range(0, outRange.Count)].transform.position;

            // Coloring of point in/out of range for debugging.
            if (debug)
            {
                for (int i = 0; i < allPoints.Length; i++)
                {
                    allPoints[i].gameObject.GetComponent<Renderer>().material.color = Color.black;
                }
                for (int i = 0; i < inRange.Count; i++)
                {
                    inRange[i].gameObject.GetComponent<Renderer>().material.color = Color.red;
                }
            }
        }
    }

    // Sorts out the music spawn points from all objects in range of the player
    private List<GameObject> getMusicSpawns(Collider[] list)
    {
        List<GameObject> result = new List<GameObject>();

        for (int i = 0; i < list.Length; i++)
        {
            if (list[i].gameObject.tag == musicSpawnTag)
            {
                result.Add(list[i].gameObject);
            }
        }

        return result;
    }

    private List<GameObject> getOutRange(GameObject[] list)
    {
        List<GameObject> result = new List<GameObject>();
        for(int i = 0; i < list.Length; i++)
        {
            if(Vector3.Distance(list[i].transform.position, player.transform.position) > spawnRange)
            {
                result.Add(list[i]);
            }
        }
        return result;
    }

    private List<GameObject> sortOutTooClose(GameObject[] list)
    {
        List<GameObject> result = new List<GameObject>();

        for(int i = 0; i < list.Length; i++)
        {
            if(Vector3.Distance(list[i].transform.position, player.transform.position) > minSpawnRange)
            {
                result.Add(list[i]);
            }
        }

        return result;
    }
}
