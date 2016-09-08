using UnityEngine;
using System.Collections;

public class Gyroscope : MonoBehaviour {
    public GameObject player;
    private Rigidbody rid;

    //MOVE VARIABLES
    private bool isMoving = false;
    private float movementSpeed = 150.0f;
    private float drag = 0.9f;

    //STEP VARIABLES
    public float stepThold, idleTimer;
    float dist = 0;
    Vector3 prevPos;
   
    void Start() {
        rid = GetComponent<Rigidbody>();
        Input.gyro.enabled = true;
    }


    void FixedUpdate() {
        player.transform.Rotate(-Input.gyro.rotationRateUnbiased.x, -Input.gyro.rotationRateUnbiased.y, Input.gyro.rotationRateUnbiased.z);
        //Check for touch input and set movement to true
        if (Input.touchCount != 0)
            isMoving = true;
        else
            isMoving = false;

        //If moving move towards facing direction
        if (isMoving == true)
        {
            rid.velocity = transform.forward * movementSpeed * Time.deltaTime;
        }
        else {
            rid.velocity = rid.velocity * (1 - drag * Time.deltaTime);
        }
        //Footsteps following the player
        dist += (prevPos - transform.position).magnitude;
        prevPos = transform.position;
        if (dist > stepThold)
        {
            dist = 0;
            GameHandler.instance.TriggerPlayerStep();
        }

    }

}
