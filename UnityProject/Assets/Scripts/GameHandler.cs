using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class GameHandler{

    private static GameHandler current;
    public GameObject player;
    public GameObject ghost;
    public GameObject snake;
    public GameObject musicBox;
    public GameObject highscore;

    public delegate void MusicBoxRewind();
    public event MusicBoxRewind OnMusicBoxRewind;

    public delegate void MusicBoxTimeout();
    public event MusicBoxTimeout OnMusicBoxTimeout;

    public delegate void GhostStep();
    public event GhostStep OnGhostStep;

    public delegate void PlayerStep();
    public event PlayerStep OnPlayerStep;

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

    public void reset()
    {
        current = null;
        SceneManager.LoadScene(0);
    }
}
