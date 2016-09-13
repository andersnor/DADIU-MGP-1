using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SmoothBezMovement : MonoBehaviour
{
    public BezierCurve[] bezCurve;
    BezierCurve curCurve;
    [SerializeField]
    float moveDuration;

    float dist = 0, distThreshHold, speed;
    float[] step;
    float snakeLength, bezLength;
    Transform parent;
    Quaternion origRot, tarRot;
    Vector3 distPos, tarPos;

    void Start()
    {
        parent = transform.parent;
        step = new float[parent.childCount];
        curCurve = bezCurve[0];
        origRot = Quaternion.Euler(0, -90, -90);
        snakeLength = Vector3.Distance(transform.position, parent.GetChild(parent.childCount - 1).position);
        bezLength = curCurve.length;
        distThreshHold = snakeLength / 20;
        speed = 1 / moveDuration;
        for(int k = step.Length; k>1; --k)
        {
            step[k-1] = Vector3.Distance(parent.GetChild(k-1).position, parent.GetChild(parent.childCount-1).position) / bezLength;
        }
    }
    void Update()
    {
        if (step[1] >= 1)
        {

        }
        else
        for (int x = parent.childCount - 1; x > 0; --x)
        {
            step[x] += speed * Time.deltaTime;
            parent.GetChild(x).position = curCurve.GetPointAt(step[x]);
            parent.GetChild(x).rotation = Quaternion.LookRotation(curCurve.GetPointAt(step[x] + speed + Time.deltaTime) - parent.GetChild(x).position) * origRot;
        }
    }
}
