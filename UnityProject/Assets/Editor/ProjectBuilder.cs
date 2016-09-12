using UnityEngine;
using System.Collections;
using UnityEditor;

public class ProjectBuilder{

	public static void BuildProject()
    {
        string[] scenes = { "Assets/Scenes/StartScene.unity", "Assets/Scenes/Gray box.unity", "Assets/Scenes/EndSceneMusic", "Assets/Scenes/EndSceneGhost" };
        BuildPipeline.BuildPlayer(scenes, "TestBuilds/FirstBuild.apk", BuildTarget.StandaloneWindows, BuildOptions.None);
    }
}
