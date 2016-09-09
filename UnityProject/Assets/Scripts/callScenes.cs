using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class callScenes : MonoBehaviour {

    public void loadScene(string sceneName)
    {
        Debug.Log("Loading scene " + sceneName);
        SceneManager.LoadScene(sceneName);

    }
}
