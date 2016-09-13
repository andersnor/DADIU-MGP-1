using UnityEngine;
using System.Collections;

public class Highscore {
    [SerializeField]
    private int score = 0;

    public int GetScore()
    {
        return score;
    }

    public int GetHighscore()
    {
        return PlayerPrefs.GetInt("Highscore");
    }

    public void UpdateHighscore()
    {
        if (score > GetHighscore())
            PlayerPrefs.SetInt("Highscore",score);
    }

    public void IncrementScore()
    {
        score++;
    }
}

