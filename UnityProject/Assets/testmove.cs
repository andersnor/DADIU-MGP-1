using UnityEngine;
using System.Collections;

public class testmove : MonoBehaviour {

    public BezierCurve bezCurve;
    int pointInArray = 0;
    float speed = 0.14f;
    float stepwait=0;
    public float step = 0f;
    float distanceFromBack; // tidligere Front
    private int next_point=-1;
    public bool rotate= false;
    public bool imNoChild = false;
    public bool imNoDad = false;
    public bool tail = false;
    public bool head = false;
    public bool stop = false;
    Transform trueDad;
    Transform TrueChild;
    Quaternion findMyOwnRotation;
    // Use this for initialization
    void Start () {
        if (!imNoChild)
            trueDad = FindTrueDad(transform); //.GetChild(7)
        else
            trueDad = transform;
        if (!imNoDad)
            TrueChild = FindTrueChild(transform);
        else
            TrueChild = transform;
        bezCurve = GameObject.Find("BezierCurve (1)").GetComponent<BezierCurve>();
        print(bezCurve.pointCount);
        distanceFromBack = Vector3.Distance(transform.position, TrueChild.position);
        //step = transform.parent.GetComponent<testmove>().step;
        step = distanceFromBack / bezCurve.length;
        findMyOwnRotation = transform.rotation * trueDad.rotation;
        print("my name is: " + gameObject + "and my child is " + TrueChild + "and my rotation is " + findMyOwnRotation);
        
    }

    // Update is called once per frame
    void FixedUpdate() {
        if (!stop)
        {
            step += speed * Time.deltaTime;

            //}

            transform.position = bezCurve.GetPointAt(step);
            if (rotate)
            {
                //            Vector3 newDir = Vector3.RotateTowards(transform.forward, bezCurve.GetPointAt(step), step, 0.0F);
                // DET ER OMVENDT FORDI JOINTET ER OMVENDT !!!!
                if (!tail)
                    transform.rotation = Quaternion.LookRotation(bezCurve.GetPointAt(step + speed * Time.deltaTime) - transform.position) * findMyOwnRotation;
                else
                    transform.rotation = transform.parent.rotation;
            }
            if (step >= 0.99f) //ARRIVE AT LAST POINT
            {
                stop = true;
                cascadingStop();
            }
        }
    }
    Transform FindTrueDad(Transform me)
    {
        if (me.parent == null)
            return me;
        else
        {
            Transform dad = me.parent;
            return FindTrueDad(dad);
        }
    }
    Transform FindTrueChild(Transform me)
    {
        if (me.childCount == 0)
            return me;
        else
        {
            Transform child = me.GetChild(0);
            return FindTrueChild(child);
        }

    }

    public void StartAnimation()
    {


    }
    public void cascadingStop()
    {
        stop = true;
        if (transform.childCount == 1)
            transform.GetChild(0).GetComponent<testmove>().cascadingStop();
            //transform.GetChild(0).SendMessage("cascadingStop");
        return;
    }
}
