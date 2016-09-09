using UnityEngine;
using System.Collections;

public class InitCamMove : MonoBehaviour {

    [Header("Initial Camera-movement (From music box to player)")]
    [SerializeField]
    int initialZoom_FOV;
    [SerializeField]
    int endZoom_FOV;
    [SerializeField]
    float startDistToBox;
    [SerializeField]
    float timeToMove;
    [SerializeField]
    AnimationCurve accelerationCurve;
    [SerializeField]
    bool useCurveForZoom = false;
    float normTime = 0, dist = 0, zoomSpeed = 0;
    int deltaZoom;
    Transform mBox, player;
   
    Vector3 dir, initPos;


    void Start () {

        deltaZoom = Mathf.Abs((int)initialZoom_FOV-endZoom_FOV);
        mBox = GameObject.Find("MusicBox").transform;
        player = GameObject.Find("Player").transform;
        dir = (mBox.position - player.position).normalized;
        transform.position = mBox.position-dir*startDistToBox;
        initPos = transform.position;
        dist = Vector3.Distance(initPos, player.position);
        dir = (initPos - player.position).normalized;
        transform.LookAt(mBox);
	
	}

    // Update is called once per frame
    void Update()
    {
        normTime += 1 * Time.deltaTime / timeToMove;
        transform.position = initPos - dir * dist * accelerationCurve.Evaluate(normTime);
        if (useCurveForZoom)
            zoomSpeed = accelerationCurve.Evaluate(normTime);
        else
            zoomSpeed = normTime;
        GetComponent<Camera>().fieldOfView = initialZoom_FOV + deltaZoom * zoomSpeed;
        if (normTime > 1)
        {
            GetComponent<Camera>().fieldOfView = endZoom_FOV;
            GetComponent<InitCamMove>().enabled = false;
        }
    }
}
