using UnityEngine;
using System.Collections;

public class Gyroscope : MonoBehaviour
{
    public GameObject player;
    public GameObject playerCamera;
    private Rigidbody rid;

    //MOVE VARIABLES

    [SerializeField]
    float movementSpeed = 150.0f;
    [SerializeField]
    float drag = 0.9f;
    private Vector3 currentOrientation;

    //STEP VARIABLES
    public float stepThold, idleTimer;
    float dist = 0;
    Vector3 prevPos;

    void Start()
    {
        rid = GetComponent<Rigidbody>();
        Input.gyro.enabled = true;
    }


    void FixedUpdate()
    {
        playerCamera.transform.Rotate(-Input.gyro.rotationRateUnbiased.x, -Input.gyro.rotationRateUnbiased.y, Input.gyro.rotationRateUnbiased.z);
        //Check for touch input and set movement to true
        if (Input.touchCount < 2)
        {
            currentOrientation = playerCamera.transform.forward;
        }

        if (Input.touchCount == 1)
        {
            rid.velocity = playerCamera.transform.forward * movementSpeed * Time.deltaTime;
            //Debug.Log("singletouch");
        }
        else if (Input.touchCount == 2)
        {
            rid.velocity = currentOrientation * movementSpeed * Time.deltaTime;
            //Debug.Log("doubletouch");
        }
        else if (Input.touchCount == 0)
        {
            rid.velocity = rid.velocity * (1 - drag * Time.deltaTime);
            //Debug.Log("notouch");
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
