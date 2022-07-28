google maps plugin ni ishlatish uchun qlinadigan ishlar ketma ketligi

yengi project ochilganidan kegin pubspec.yaml ichida google_maps_flutter ning oxirgi versiyasini ustanovka qlinadi
uning uchun terminalda project ichida turib 
flutter pub add google_maps_flutter
codde ni terminaldan terib run berilsa ozi qoshvoladi
kegin google map ni codeni project ichida yozish mumkin boladi 
lekin google platform orqali google key olib uni androidmanifest.xml ichida yozilmaguncha project ishlamiydi
uning uchun qlinadigan ishlar ketma ketligi:

https://mapsplatform.google.com/ ichiga kiriladi va get started button ni bosiladi
agar oldin royxatdan otmagan bolsangiz otish kerak boladi
getstarted bn kirgandan kegin tepadigi search qismini ichida google maps platform yozib shunda kiriladi

yangi app create qlish knopkasini bosib android yoki ios uchun app kreate qlinadi 
uning uchun app ni android/app/src/main/AndroidManifest.xml file ichida com.example.project name ni yozish soraydi shuni qoyib project create qlasiz

google maps platform ichida project create bolganidan kegin APIs qismiga kirib Maps SDK for Android va Maps SDK for IOS ni ichiga kirib enable qlb qoyish kerak boladi 
ana endi Credentional ichiga kirib api keyni copy qilib olish mumkin boladi buning uchun api keys pasida actions ni tegida show keys button ni bossa key chiqadi uni copy qvolish kerak

ANDROID UCHUN
ana endi project ga qaytamiza va android/app/src/main/kotlin/com/example/projectname/MainActivity.kt file ichiga kirib 

package com.example.google_maps_example
// mana shu qatordan pasini polni copy paste qlw kerak
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.embedding.engine.FlutterEngine
import androidx.annotation.NonNull;

class MainActivity: FlutterFragmentActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}

bundan kegin android/app/src/main/AndroidManifest.xml file ichida 
<manifest pasida shu codelarni yozish kerak
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

bundan kegin <application ichida 
        <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="API key"/>
Api key ni orniga googple platform ichidan olingan api keyni joylanadi

build.grade file ichida  compileSdkVersion 33 qlish kerak boladi


IOS UCHUN
eng birinchi orinda ios ga generatsiya qlish uchun ios platformadigi device kerak boladi yani macbook yoki yana bowqasi
xCode ichida ios/Runner/AppDelagate.swift/ file ichida 

import UIKit
import Flutter
// google maps ni import qlish kerak
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  // mana shu joydan 1 qator code yoziladi
    GMSServices.provideAPIKey("API key");
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

Api key ornida Google platform ichidan olingan api keyni qoyasiz

boldi shu bn endi projectni terminaldan flutter clean va flutter pub get qlib yuborilsa run berishga tayor boladi
