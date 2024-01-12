package com.ines.variaspantallas

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast

class MainActivity3 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main3)

        val intent = intent
        //Si vengo de otra pantalla a traves de un intent

        if(intent != null){

            val datosrecibidos = intent.getStringExtra("edad")
            //Compruebo si es cierto que estoy recibiendo datos
            if(datosrecibidos != null){
                Toast.makeText(applicationContext,"datos recibidos: "+datosrecibidos, Toast.LENGTH_SHORT).show()
            }
        }
    }
}