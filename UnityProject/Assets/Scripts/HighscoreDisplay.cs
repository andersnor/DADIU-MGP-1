using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class HighscoreDisplay : MonoBehaviour {

    public Text txtHighscore;
    public Text txtScore;

    private Highscore highscore;
    private bool isNew;

    void Start () {
        highscore = GameHandler.instance.highscore;

        int score = highscore.GetScore();
        int prevHighscore = highscore.GetHighscore();

        highscore.UpdateHighscore();
        int newHighscore = highscore.GetHighscore();

        isNew = newHighscore > prevHighscore;

        txtHighscore.text = newHighscore + (isNew ? "(Ny)" : "");
        txtScore.text = score.ToString();
    }
}
