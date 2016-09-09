using UnityEngine;
using UnityEditor;
using NUnit.Framework;

public class Test1 {

	[Test]
	public void PlayerExists()
	{
		GameObject player = GameObject.FindGameObjectWithTag("Player");
        Assert.True(player != null);
	}

    [Test]
    public void MusicBoxExists()
    {
        GameObject music = GameObject.FindGameObjectWithTag("MusicBox");
    }
}
