using UnityEngine;
using System.Collections;

public class GhostSounds : MonoBehaviour {


    public void FootPrintSound(string eventName)
    {
        AkSoundEngine.PostEvent(eventName, gameObject); //Footprint i stedet for gameobject for mere præcis lyd position
    }
}
