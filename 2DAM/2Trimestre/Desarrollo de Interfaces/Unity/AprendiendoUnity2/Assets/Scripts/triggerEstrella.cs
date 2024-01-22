using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class triggerEstrella : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Alguien me ha pegado");
        Destroy(gameObject);
    }
}
