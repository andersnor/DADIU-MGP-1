using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameMenu : MonoBehaviour {
    public int gameSceneIndex;

    void Start()
    {
        if (SceneManager.GetSceneAt(gameSceneIndex) == null || SceneManager.GetSceneAt(gameSceneIndex) == SceneManager.GetSceneAt(Application.loadedLevel))
            print("gameSceneIndex appears to incorrectly set - Assing gameSceneIndex variable");
    }
    public void StartGame()
    {
        if (SceneManager.GetSceneAt(gameSceneIndex) != null)
            SceneManager.LoadScene(gameSceneIndex);
    }
}
