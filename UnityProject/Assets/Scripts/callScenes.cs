using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class callScenes : MonoBehaviour {

    public GameObject instructionsScreen;

    public void loadScene(string sceneName)
    {
        Debug.Log("Loading scene " + sceneName);
        SceneManager.LoadScene(sceneName);

        if (sceneName == "StartScene")
            GameHandler.Clear();
    }

    public void TriggerInstructions(bool trigger)
    {
        instructionsScreen.SetActive(trigger);
    }
}
