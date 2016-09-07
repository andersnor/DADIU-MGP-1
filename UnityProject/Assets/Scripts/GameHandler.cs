using UnityEngine;
using System.Collections;

public class GameHandler{

    private static GameHandler current;
    public GameObject player;

    public delegate void GhostStep();
    public static event GhostStep OnGhostStep;

    public static GameHandler instance{
        get
        {
            if (current == null)
                current = new GameHandler();
            return current;
        }
    }

}
