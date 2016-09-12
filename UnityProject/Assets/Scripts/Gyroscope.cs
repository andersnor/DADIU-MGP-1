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
    private Vector3 currentOrientation;

    [Header("Distance between player-steps (m):")]
    [SerializeField]
    float stepThold;
    float dist = 0;
    Vector3 prevPos;

    private float initialYAngle = 0f;
    private float appliedGyroYAngle = 0f;
    private float calibrationYAngle = 0f;

    void Start()
    {
        GameHandler.instance.player = gameObject;
        rid = GetComponent<Rigidbody>();
        Input.gyro.enabled = true;
        Application.targetFrameRate = 60;
        initialYAngle = transform.eulerAngles.y;
    }

    void Update()
    {
        ApplyGyroRotation();
        ApplyCalibration();
    }

    void FixedUpdate()
    {
        if (playerCamera.GetComponent<InitCamMove>().enabled)
            return;
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
            rid.velocity = Vector3.zero;
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
    public void CalibrateYAngle()
    {
        calibrationYAngle = appliedGyroYAngle - initialYAngle; // Offsets the y angle in case it wasn't 0 at edit time.
    }

    void ApplyGyroRotation()
    {
        playerCamera.transform.rotation = Input.gyro.attitude;
        playerCamera.transform.Rotate(0f, 0f, 180f, Space.Self); // Swap "handedness" of quaternion from gyro.
        playerCamera.transform.Rotate(90f, 0f, 0f, Space.World); // Rotate to make sense as a camera pointing out the back of your device.
        appliedGyroYAngle = transform.eulerAngles.y; // Save the angle around y axis for use in calibration.
    }

    void ApplyCalibration()
    {
        playerCamera.transform.Rotate(0f, -calibrationYAngle, 0f, Space.World); // Rotates y angle back however much it deviated when calibrationYAngle was saved.
    }

}
