using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameMenu : MonoBehaviour {
    [Header("Index of game-scene:")]
    [SerializeField]
    short gameSceneIndex;

    public void StartGame()
    {
            SceneManager.LoadScene(gameSceneIndex);
    }
}
