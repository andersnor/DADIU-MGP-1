using UnityEngine;
using System.Collections;
using UnityEditor;

public static class AndroidSDKFolder{

    public static string Path
    {
        get { return EditorPrefs.GetString("AndroidSdkRoot"); }
        set { EditorPrefs.SetString("AndroidSdkRoot", value); }
    }
}
