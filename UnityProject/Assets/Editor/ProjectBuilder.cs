using System.Collections;
using UnityEditor;
using System;
using System.IO;
using UnityEngine;

public class ProjectBuilder{

    static string path = "C:/Builds";

	public static void BuildProject()
    {
        string[] scenes = { "Scenes/StartScene.unity", "Scenes/Gray box.unity", "Scenes/EndSceneMusic", "Scenes/EndSceneGhost" };

        FileUtil.DeleteFileOrDirectory("C:/Users/dadiu/AppData/Local/Unity/Editor/Editor.log");

        Directory.CreateDirectory(path);

        string buildFolder = System.DateTime.Now.ToString("dd-MM-yy HH.mm.ss");

        Directory.CreateDirectory(path + "/" + buildFolder);

        BuildPipeline.BuildPlayer(scenes, path + "/" + buildFolder + "/" + "FirstBuild.apk", BuildTarget.Android, BuildOptions.None);
        
        FileUtil.CopyFileOrDirectory("C:/Users/dadiu/AppData/Local/Unity/Editor/Editor.log", path + "/" + buildFolder + "/" + "log.txt");
    }
}