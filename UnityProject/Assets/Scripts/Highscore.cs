using UnityEngine;
using System.Collections;

public class Highscore {

    public float beg;

    public Highscore()
    {
        beg = Time.time;
    }

    public float getScore()
    {
        return Time.time - beg;
    }
}
