using UnityEngine;
using System.Collections;
using UnityEditor;

public class Builder{

    static void PerformBuild()
    {
        string[] scenes = { "Assets/Scenes/Kenneth Test Scene" };
        BuildPipeline.BuildPlayer(scenes, "PlayerBuild", BuildTarget.Android,BuildOptions.None);
    }
	
}
