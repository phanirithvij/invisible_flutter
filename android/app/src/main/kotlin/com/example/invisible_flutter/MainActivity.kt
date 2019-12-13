package com.example.invisible_flutter

import android.graphics.PixelFormat
import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)

        val view = flutterView
        view.setZOrderMediaOverlay(true)
        view.holder.setFormat(PixelFormat.TRANSPARENT)
//    view.enableTransparentBackground()
    }
}
