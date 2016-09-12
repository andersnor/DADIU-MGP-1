using UnityEditor;

public static class AndroidSDKFolder{

    public static string Path
        {
            get { return EditorPrefs.GetString("C:\\Users\\dadiu\\AppData\\Local\\Android\\sdk"); }
            set { EditorPrefs.SetString("C:\\Users\\dadiu\\AppData\\Local\\Android\\sdk", value); }
        }
}

