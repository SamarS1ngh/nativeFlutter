package com.example.mahawanti_task

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.speech.tts.TextToSpeech
import androidx.annotation.NonNull
import java.util.Locale



class MainActivity: FlutterActivity() 
{
    
    private val CHANNEL = "com.example.mahawanti_task/tts"
    private lateinit var tts: TextToSpeech
    
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
    
        tts = TextToSpeech(applicationContext) { status ->
            if (status != TextToSpeech.ERROR) {
                tts.language = Locale.US
            }
        }
    
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "sendDataToAndroid") {
                val data = call.arguments as Map<*, *>
    
                val username = data["username"] as String
                val city = data["city"] as String
                val state = data["state"] as String
                val country = data["country"] as String
                val address = data["address"] as String
    
                val textToSpeak = "Hello $username. You live at $address in $city, $state, $country."
                tts.speak(textToSpeak, TextToSpeech.QUEUE_FLUSH, null, null)
    
                result.success("Data received and processed for text-to-speech")
            } else {
                result.notImplemented()
            }
        }
    }
  
}