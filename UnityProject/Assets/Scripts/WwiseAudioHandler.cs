using UnityEngine;
using System.Collections;

public class WwiseAudioHandler : MonoBehaviour {

  
    GameObject Ghost, MusicBox;

    Animator anim;

    void Start()
    {
        Ghost = GameObject.Find("FollowGhost");
        MusicBox = GameObject.Find("MusicBox");
        anim = MusicBox.GetComponent<Animator>();

        GameHandler.instance.OnGhostAttack += AuGhostAtk;
        GameHandler.instance.SoundOnMusicBoxPlay += AuStartMusicBox;
        GameHandler.instance.SoundOnMusicBoxRewind += AuRewindMusicBox;
        GameHandler.instance.SoundOnMusicBoxStop += AuStopMusicBox;
        GameHandler.instance.SoundOnMusicBoxResume += AuResumeMusicBox;
        GameHandler.instance.SoundOnMusicBoxPause += AuPauseMusicBox;
        GameHandler.instance.SoundOnMusicBoxRewindStop += AuRewindStopMusicBox;
    }
    public void AuGhostAtk()
    {
        AkSoundEngine.PostEvent("Ghost_Attack", Ghost);
        AkSoundEngine.RenderAudio();
    }
    public void AuPlaySound(GameObject x, string AudioName)
    {
        AkSoundEngine.PostEvent(AudioName, x);
        AkSoundEngine.RenderAudio();
    }
    public void AuStartMusicBox ()
    {
        AkSoundEngine.PostEvent("MusicBox_Stop", MusicBox);
        AkSoundEngine.RenderAudio();
        AkSoundEngine.PostEvent("MusicBox_Play", MusicBox);
        AkSoundEngine.RenderAudio();
        MusicBox.GetComponent<Animator>().SetBool("Rewinding", false);
    }
    public void AuRewindMusicBox()
    {
        AkSoundEngine.PostEvent("MusicBox_Windup", MusicBox);
        AkSoundEngine.RenderAudio();
        MusicBox.GetComponent<Animator>().SetBool("Rewinding", true);
        MusicBox.GetComponent<Animator>().speed = 1;
    }
    public void AuStopMusicBox()
    {
        AkSoundEngine.PostEvent("MusicBox_Stop", MusicBox);
        AkSoundEngine.RenderAudio();
    }
    public void AuResumeMusicBox()
    {
        print("Resume");
        AkSoundEngine.PostEvent("MusicBox_Resume", MusicBox);
        AkSoundEngine.RenderAudio();
    }
    public void AuPauseMusicBox()
    {
        print("pauseNu");
        AkSoundEngine.PostEvent("MusicBox_Pause", MusicBox);
        AkSoundEngine.RenderAudio();
    }
    public void AuRewindStopMusicBox()
    {
        AkSoundEngine.PostEvent("MusicBox_Windup_Stop", MusicBox);
        AkSoundEngine.RenderAudio();
        MusicBox.GetComponent<Animator>().speed = 0;
        //MusicBox.GetComponent<Animator>().SetBool("Rewinding", false);
    }

}
