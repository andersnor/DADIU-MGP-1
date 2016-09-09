using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class GameHandler{

    private static GameHandler current;
    public GameObject player;
    public GameObject ghost;
    public GameObject snake;
    public GameObject musicBox;

    public Highscore highscore;

    public delegate void MusicBoxRewind();
    public event MusicBoxRewind OnMusicBoxRewind;

    public delegate void MusicBoxRewinded();
    public event MusicBoxRewinded OnMusicBoxRewinded;

    public delegate void MusicBoxTimeout();
    public event MusicBoxTimeout OnMusicBoxTimeout;

    public delegate void PlayerStep();
    public event PlayerStep OnPlayerStep;

    public delegate void GhostStep();
    public event GhostStep OnGhostStep;

    public delegate void GhostAttack();
    public event GhostAttack OnGhostAttack;

    public static GameHandler instance{
        get
        {
            if (current == null)
                current = new GameHandler();
            return current;
        }
    }

    public void loadScene(int sceneNr)
    {
        current = null;
        SceneManager.LoadScene(sceneNr);
    }

    public void reset()
    {
        current = null;
        SceneManager.LoadScene(0);
    }

    public void TriggerMusicBoxRewind()
    {
        if (OnMusicBoxRewind != null)
            OnMusicBoxRewind();
    }

    public void TriggerMusicBoxRewinded()
    {
        if (OnMusicBoxRewinded != null)
            OnMusicBoxRewinded();
    }

    public void TriggerMusicBoxTimeout()
    {
        if (OnMusicBoxTimeout != null)
            OnMusicBoxTimeout();
        GameOver(0);
    }

    public void TriggerPlayerStep()
    {
        if (OnPlayerStep != null)
        OnPlayerStep();
    }

    public void TriggerGhostStep()
    {
        if(OnGhostStep != null)
            OnGhostStep();
    }

    public void TriggerGhostAttack()
    {
        if (OnGhostAttack != null)
            OnGhostAttack();
    }

    public void GameOver(int mode) {

        switch (mode)
        {
            case 0:
                // Death by silence
                SceneManager.LoadScene("EndSceneMusic");
                break;
            case 1:
                // Death by ghost
                SceneManager.LoadScene("EndSceneGhost");
                break;
        }
    }


    public void StartTime()
    {
        highscore = new Highscore();
    }
}
