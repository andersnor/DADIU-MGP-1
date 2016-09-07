using UnityEngine;
using System.Collections;

public class testmove : MonoBehaviour {

    public BezierCurve bezCurve;
    int pointInArray = 0;
    float speed = 0.08f;
    public float step = 0;
    float distanceFromFront;
    private int next_point=-1;
  
    // Use this for initialization
    void Start () {

        bezCurve = GameObject.Find("BezierCurve").GetComponent<BezierCurve>();
        print(bezCurve.pointCount);
        distanceFromFront = Vector3.Distance(transform.position, FindTrueDad(transform).GetChild(7).position);
        //step = transform.parent.GetComponent<testmove>().step;
        step = - distanceFromFront / bezCurve.length;


        print(this + " dis: " + distanceFromFront + " father to: " +FindTrueDad(transform).GetChild(7) + " step: " + step);
        
        
       
	}
    
	// Update is called once per frame
	void FixedUpdate () {
        step += speed * Time.deltaTime;
        transform.rotation = Quaternion.LookRotation(bezCurve.GetPointAt(step) - transform.position);
        transform.position = bezCurve.GetPointAt(step);

        if(step >= 0.99f)
        {
            step = 1;
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
}
