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
    public int spawnInside;

    public int playTime = 60;
    private float timestamp;

    // Use this for initialization
    void Start () {
        timestamp = Time.time;
    }

    // Update is called once per frame
    void Update () {
        if (Visible())
        {
            print("Yes");
        }
        else
        {
            print("No");
        }

        if (timestamp + playTime < Time.time)
        {
            GameHandler.instance.TriggerMusicBoxTimeout();
        }
    }

    void OnTriggerStay(Collider col)
    {
        if(col.tag == "Player")
        {
            if (Visible())
            {
                timestamp = Time.time;

                if (spawnInside-- > 0)
                {
                    spawnRandomInRange();
                }
                else
                {
                    GameHandler.instance.ghost.GetComponent<GhostMovement>().ChasePlayer();
                    SpawnRandomOutRange();
                }

                spawnRange += rangeIncrease;
                GameHandler.instance.highscore.IncrementScore();
                //player.GetComponentInChildren<SphereCollider>().radius = spawnRange;
            }
        }
    }

    private bool Visible()
    {
        return gameObject.GetComponent<Renderer>().isVisible;
    }

    public void spawnRandomInRange()
    {
        spawnRange -= rangeIncrease;
        GameObject[] allPoints = GameObject.FindGameObjectsWithTag(musicSpawnTag);
        List<GameObject> insideRange = sortOutTooClose(getMusicSpawns(Physics.OverlapSphere(player.transform.position, spawnRange)));
        if (insideRange.Count > 0)
        {
            transform.position = insideRange[Random.Range(0, insideRange.Count)].transform.position;

            if (debug)
            {
                for (int i = 0; i < allPoints.Length; i++)
                {
                    allPoints[i].gameObject.GetComponent<Renderer>().material.color = Color.black;
                }
                for (int i = 0; i < insideRange.Count; i++)
                {
                    insideRange[i].gameObject.GetComponent<Renderer>().material.color = Color.red;
                }
            }
        }
        else
        {
            transform.position = findClosest(sortOutTooClose(GameObject.FindGameObjectsWithTag(musicSpawnTag)), gameObject).transform.position;
        }
    }

    public void SpawnRandomOutRange()
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

    private List<GameObject> sortOutTooClose(List<GameObject> list)
    {
        List<GameObject> result = new List<GameObject>();

        for (int i = 0; i < list.Count; i++)
        {
            if (Vector3.Distance(list[i].transform.position, player.transform.position) > minSpawnRange)
            {
                result.Add(list[i]);
            }
        }

        return result;
    }

    private GameObject findClosest(List<GameObject> list, GameObject obj)
    {
        if (list.Count > 0)
        {
            GameObject result = list[0];
            float dist = Vector3.Distance(list[0].transform.position, obj.transform.position);
            for(int i = 0; i < list.Count; i++)
            {
                float tempDist = Vector3.Distance(list[i].transform.position, obj.transform.position);
                if (tempDist < dist)
                {
                    result = list[i];
                    dist = tempDist;
                }
            }
            return result;
        }
        else return null;
    }
}
