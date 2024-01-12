package com.ines.variaspantallas

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.provider.Telephony.Mms.Intents
import android.widget.Button
import android.widget.Toast
import android.widget.Toolbar

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Primero selecciono el boton
        val miboton: Button = findViewById(R.id.miboton)

        // Primero selecciono el boton
        val miboton3: Button = findViewById(R.id.miboton3)

        // Voy a añadir un escuchador para escuchar el click
        miboton.setOnClickListener {
        var edad:Int = 90
        //Toast.makeText(applicationContext, "Ok boton pulsado",Toast.LENGTH_SHORT).show()
        // Voy a lanzar una actividad 2 desde la actividad 1
        val intent = Intent(this@MainActivity, MainActivity2::class.java)
        intent.putExtra("edad",edad.toString())
        startActivity(intent)
        }

        // Voy a añadir un escuchador para escuchar el click
        miboton3.setOnClickListener{
            var edad:Int = 60
            // Voy a lanzar una actividad 3 desde la actividad 1
            val intent = Intent( this@MainActivity,MainActivity3::class.java)
            intent.putExtra("edad",edad.toString())
            startActivity(intent)
        }
    }
}