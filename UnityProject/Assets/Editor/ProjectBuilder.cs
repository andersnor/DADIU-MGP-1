using UnityEngine;
using System.Collections;
using UnityEditor;
using System;

public class ProjectBuilder{

	public static void BuildProject()
    {
        string[] scenes = { "Assets/Scenes/StartScene.unity", "Assets/Scenes/Gray box.unity", "Assets/Scenes/EndSceneMusic", "Assets/Scenes/EndSceneGhost" };
        //AndroidSDKFolder.Path = "C:/Users/dadiu/AppData/Local/Android/sdk";
        Debug.Log("TESTING PATH '" + EditorPrefs.GetString("AndroidSdkRoot") + "'");
        BuildPipeline.BuildPlayer(scenes, "TestBuilds/FirstBuild.apk", BuildTarget.Android, BuildOptions.None);
    }
}
