using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MultiBezMove : MonoBehaviour
{
    public BezierCurve curCurve;
    float moveDuration = 10;

    float speed;
    float step;
    float snakeLength, bezLength;
    Transform parent;
    Quaternion origRot, tarRot;
    Vector3 distPos, tarPos;

    void Start()
    {
        parent = transform.parent;
        bezLength = curCurve.length;
        step = Vector3.Distance(transform.position, parent.GetChild(parent.childCount - 1).position) / bezLength;
        origRot = Quaternion.Euler(0, -90, -90);
        speed = 1 / moveDuration;
    }
    void Update()
    {
                step += speed * Time.deltaTime;
                transform.position = curCurve.GetPointAt(step);
                transform.rotation = Quaternion.LookRotation(curCurve.GetPointAt(step + speed + Time.deltaTime) - transform.position) * origRot;
    }
}
