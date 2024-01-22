using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class subeCamara : MonoBehaviour
{
    public Transform objetoDestino;
    public float desfaseVertical = 0.0f;

    private Camera mi_camara;

    private void Start()
    {
        mi_camara = GetComponent<Camera>();
    }

    private void Update()
    {
        if(objetoDestino != null)
        {
            Vector3 posicion_camara = mi_camara.transform.position;
            posicion_camara.y = objetoDestino.position.y + desfaseVertical;
            mi_camara.transform.position = posicion_camara;
        }
    }
}
