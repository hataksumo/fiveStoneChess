using UnityEngine;
using System.Collections;

public class DoubleUV : MonoBehaviour {

	Material m;
	public float speed = 1.0f;
	private float uvY = 0;

	// Use this for initialization
	void Start () 
	{
		MeshRenderer render = gameObject.GetComponent<MeshRenderer>();
		if (render != null) 
		{
			m = render.material;
		}
		SkinnedMeshRenderer skinRender = gameObject.GetComponent<SkinnedMeshRenderer> ();
		if (skinRender != null) 
		{
			m = skinRender.material;
		}

	}
	
	// Update is called once per frame
	void Update () 
	{
		uvY += Time.deltaTime * speed;
		if (uvY >= 1)
		{
			uvY = -1;
		}
		m.SetFloat("vAdd", uvY);
	}
}
