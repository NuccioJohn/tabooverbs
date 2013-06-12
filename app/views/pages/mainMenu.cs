using UnityEngine;
using System.Collections;
 
public class MenuObject : MonoBehaviour 
{
 
    public bool isQuit = false;
 
    void OnMouseEnter()
    {
       renderer.material.color = Color.blue; 
    }
 
    void OnMouseExit()
    {
       renderer.material.color = Color.white;
    }
 
    void OnMouseDown()
    {
       if(isQuit)
       {
         Application.Quit();  
       }
       else
       {
         Application.LoadLevel(1); //Make sure that level "1" is located in your build settings. You can also change the 1 with a name of your scene.
 
       }
    }
}