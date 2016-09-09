using UnityEngine;
using System.Collections;

public class testmove : MonoBehaviour {

    public BezierCurve bezCurve;
    int pointInArray = 0;
    float speed = 0.14f;
    float stepwait=0;
    public float step = 0f;
    float distanceFromBack; // tidligere Front  
    float distanceFromFront; 
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
            trueDad = FindTrueDad(transform).GetChild(2).GetChild(1);//For at komme til taill_end_jnt //.GetChild(7)
        else
            trueDad = transform;
        if (!imNoDad)
            TrueChild = FindTrueChild(transform);
        else
            TrueChild = transform;
        bezCurve = GameObject.Find("BezierCurve").GetComponent<BezierCurve>(); // VIGTIGT HVIS DER ER FLERE!?!
        print(bezCurve.pointCount);
        if (!imNoChild)
            distanceFromFront = Vector3.Distance(transform.position, trueDad.position);  //distanceFromBack = Vector3.Distance(transform.position, TrueChild.position);
        else
            distanceFromFront = Vector3.Distance(transform.position, GameObject.Find("taill_end_jnt").transform.position);
        //step = transform.parent.GetComponent<testmove>().step;
            step = distanceFromFront / bezCurve.length;//step = distanceFromBack / bezCurve.length;
        findMyOwnRotation = transform.rotation * trueDad.rotation;



        print("my name is: " + gameObject + "and my child is " + trueDad + "and my distance is " + distanceFromFront);
        
    }

    // Update is called once per frame
    void FixedUpdate() {
        if (!stop)
        {
            step += speed * Time.deltaTime;
            transform.position = new Vector3(bezCurve.GetPointAt(step).x,transform.position.y, bezCurve.GetPointAt(step).z);
            if (rotate)
            {
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
