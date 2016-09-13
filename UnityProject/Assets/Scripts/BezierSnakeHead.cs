using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BezierSnakeHead : MonoBehaviour { 
    [SerializeField]
    BezierCurve curCurve;
    [SerializeField]
    float moveDuration;
   
    float dist = 0, distThreshHold, speed;
    float step = 0, snakeLength, bezLength;
    Transform parent;
    Quaternion origRot, flat = Quaternion.Euler(0, 0, -22f), rise = Quaternion.Euler(0, 0, 41f);
    Vector3 distPos, tarPos;
    int neckState = 0;
    bool neck = true;

    void Start()
    {
        parent = transform.parent;
        origRot = Quaternion.Euler(0, -90, -90);
        snakeLength = Vector3.Distance(transform.position, parent.GetChild(parent.childCount - 1).position);
        bezLength = curCurve.length;
        distThreshHold = snakeLength / 40;
        speed = 1 / moveDuration;
    }
    void Update()
    {
        if (transform.position.y > 3 && neck)
        {
            neckState++;
            neck = false;
            switch (neckState)
            {
                case 1: playAppear();
                    break;
                case 2: playMove();
                    break;
                case 3: playDisappear();
                    break;
            }
        }
        if (neckState == 1)
        {
            transform.GetChild(0).GetChild(0).localRotation = Quaternion.Slerp(transform.GetChild(0).GetChild(0).localRotation, rise, Time.deltaTime);
            if (transform.GetChild(0).GetChild(0).localEulerAngles.z >= 40 && transform.position.y < 3)
            {
                neck = true;
                neckState++;
                playMove();
            }
        }
        if (neckState == 3)
        {
            transform.GetChild(0).GetChild(0).localRotation = Quaternion.Slerp(transform.GetChild(0).GetChild(0).localRotation, flat, 8*Time.deltaTime);
            if (transform.GetChild(0).GetChild(0).localEulerAngles.z < 340 && transform.GetChild(0).GetChild(0).localEulerAngles.z > 337 && transform.position.y < 3)
            {
                neck = true;
                neckState = 0;
            }
        }

        distPos = transform.position;
        if (dist > distThreshHold)
        {
            moveToParent();
            dist = 0;
        }
        moveBezierPoint();
        dist += Vector3.Distance(distPos, transform.position);
    }

    void playAppear()
    {
        AkSoundEngine.PostEvent("Snake_Move_Stop", gameObject);
        AkSoundEngine.RenderAudio();
        AkSoundEngine.PostEvent("Snake_Appear", gameObject);
        AkSoundEngine.RenderAudio();

    }
    void playDisappear()
    {
        AkSoundEngine.PostEvent("Snake_Move_Stop", gameObject);
        AkSoundEngine.RenderAudio();
        AkSoundEngine.PostEvent("Snake_Disappear", gameObject);
        AkSoundEngine.RenderAudio();
    }
    void playMove()
    {
        AkSoundEngine.PostEvent("Snake_Move", gameObject);
        AkSoundEngine.RenderAudio();
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
        if (step >= 0.98)
            step = 0;
        transform.position = curCurve.GetPointAt(step);
        transform.rotation = Quaternion.LookRotation(curCurve.GetPointAt(step + (speed * Time.deltaTime)) - transform.position) * origRot;
    }
}
