using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    private void Start()
    {
        var lyrics = new HayaletSevgilim();

        foreach (var line in lyrics.Lines)
            Debug.Log(line);
    }
}
