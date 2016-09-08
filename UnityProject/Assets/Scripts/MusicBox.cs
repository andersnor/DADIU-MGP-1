using UnityEngine;
using System.Collections;

public class MusicBox : MonoBehaviour {

    public int rewindTime = 3;
    public int playTime = 60;
    private float timestamp;
    private State state;

    enum State {Playing, Rewinding};

    void Start () {
        Reset();
    }

    void Update () {
        if (state == State.Playing)
        {
            if (timestamp + playTime > Time.time)
            {
                GameHandler.instance.TriggerMusicBoxTimeout();
            }
        }
        else
        {
            if (timestamp + rewindTime > Time.time)
            {
                GameHandler.instance.TriggerMusicBoxRewinded();
                Reset();
            }
        }
    }

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject == GameHandler.instance.player)
        {
            GameHandler.instance.TriggerMusicBoxRewind();
            state = State.Rewinding;
            timestamp = Time.time;
        }
    }

    public void SetNewPosition()
    {

    }

    public void Reset()
    {
        SetNewPosition();
        timestamp = Time.time;
        state = State.Playing;
    }

}
