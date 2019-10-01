package com.example.invisible_flutter

import android.graphics.PixelFormat
import android.os.Bundle
import android.util.Log

import io.flutter.app.FlutterActivity
import io.flutter.embedding.android.FlutterView
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    Log.d("RAMBO", "help me help you")
    val view = flutterView
    view.setZOrderMediaOverlay(true)
    view.holder.setFormat(PixelFormat.TRANSPARENT)
//    view.enableTransparentBackground()
    Log.d("RAMBO", "${FlutterView.TransparencyMode.transparent}")
  }
}
