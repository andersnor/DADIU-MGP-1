using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BezierSnakeHead : MonoBehaviour { 
    public BezierCurve[] bezCurve;
    BezierCurve curCurve;
    [SerializeField]
    float moveDuration;
   
    float dist = 0, distThreshHold, speed;
    float step = 0, snakeLength, bezLength;
    Transform parent;
    Quaternion origRot, tarRot;
    Vector3 distPos, tarPos;

    void Start()
    {
        parent = transform.parent;
        curCurve = bezCurve[0];
        origRot = Quaternion.Euler(0, -90, -90);
        snakeLength = Vector3.Distance(transform.position, parent.GetChild(parent.childCount - 1).position);
        bezLength = curCurve.length;
        distThreshHold = snakeLength / 40;
        speed = 1 / moveDuration;
    }
    void Update()
    {
        distPos = transform.position;
        if (dist > distThreshHold)
        {
            moveToParent();
            dist = 0;
        }
        moveBezierPoint();
        dist += Vector3.Distance(distPos, transform.position);
    }

    void moveToParent()
    {
        if (dist > distThreshHold)
        {
            for (int x = parent.childCount - 1; x > 1; --x)
            {
                parent.GetChild(x).position = parent.GetChild(x - 1).position;
                parent.GetChild(x).rotation = parent.GetChild(x - 1).rotation;
            }
        }
    }
    void moveBezierPoint()
    {
        step += speed * Time.deltaTime;
        transform.position = curCurve.GetPointAt(step);
        transform.rotation = Quaternion.LookRotation(curCurve.GetPointAt(step + speed + Time.deltaTime) - transform.position) * origRot;
    }
}
