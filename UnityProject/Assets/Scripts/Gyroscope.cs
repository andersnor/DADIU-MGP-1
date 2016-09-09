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
    
    [Header("Distance between player-steps (m):")]
    [SerializeField]
    float stepThold;
    float dist = 0;
    Vector3 prevPos;

    void Start()
    {
        rid = GetComponent<Rigidbody>();
        Input.gyro.enabled = true;
        Input.compass.enabled = true;
        Input.location.Start();
    }


    void FixedUpdate()
    {
        Quaternion myGyro = Input.gyro.attitude;
        myGyro *= Quaternion.Euler(new Vector3 (0,0, 0));
        //Move player x,y.
        //player.transform.rotation = Quaternion.Euler(0, -Input.compass.trueHeading, 0);
        //Move camera z.
        //playerCamera.transform.Rotate(0, 0, Input.gyro.rotationRateUnbiased.z);

        //OLD LINE~~~~~~~~~~
        playerCamera.transform.Rotate(0, -Input.gyro.rotationRateUnbiased.y, 0);
        playerCamera.transform.rotation = myGyro; 
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
