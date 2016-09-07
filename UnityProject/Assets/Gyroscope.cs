using UnityEngine;
using System.Collections;

public class Gyroscope : MonoBehaviour {
    public GameObject player;
    private float movementSpeed = 52.0f;

    void Start () {
        Input.gyro.enabled = true;
    }
	
	
	void Update () {
        player.transform.Rotate(-Input.gyro.rotationRateUnbiased.x, -Input.gyro.rotationRateUnbiased.y, 0);
    }
    public void MoveForward() {
        transform.position += transform.forward * Time.deltaTime * movementSpeed;
    }
}
