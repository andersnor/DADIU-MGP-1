using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class GameHandler{

    private static GameHandler current;
    public GameObject player;
    public GameObject ghost;
    public GameObject snake;
    public GameObject musicBox;

    public Highscore highscore = new Highscore();

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



    public delegate void SoundMusicBoxRewind();
    public event SoundMusicBoxRewind SoundOnMusicBoxRewind;

    public delegate void SoundMusicBoxPlay();
    public event SoundMusicBoxPlay SoundOnMusicBoxPlay;

    public delegate void SoundMusicBoxStop();
    public event SoundMusicBoxPlay SoundOnMusicBoxStop;

    public delegate void SoundMusicBoxPause();
    public event SoundMusicBoxPlay SoundOnMusicBoxPause;

    public delegate void SoundMusicBoxResume();
    public event SoundMusicBoxPlay SoundOnMusicBoxResume;

    public delegate void SoundMusicBoxRewindStop();
    public event SoundMusicBoxPlay SoundOnMusicBoxRewindStop;

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

    public static void Clear()
    {
        current = null;
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

    public void TriggerSoundMusicBoxStop()
    {
        if (SoundOnMusicBoxStop != null)
            SoundOnMusicBoxStop();
    }

    public void TriggerSoundMusicBoxPlay()
    {
        if (SoundOnMusicBoxPlay != null)
            SoundOnMusicBoxPlay();
    }

    public void TriggerSoundMusicBoxRewind()
    {
        if (SoundOnMusicBoxRewind != null)
            SoundOnMusicBoxRewind();
    }

    public void TriggerSoundMusicBoxResume()
    {
        if (SoundOnMusicBoxStop != null)
            SoundOnMusicBoxResume();
    }

    public void TriggerSoundMusicBoxPause()
    {
        if (SoundOnMusicBoxStop != null)
            SoundOnMusicBoxPause();
        Debug.Log("plz2");
    }

    public void TriggerSoundMusicBoxRewindStop()
    {
        if (SoundOnMusicBoxPlay != null)
            SoundOnMusicBoxRewindStop();
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
}
