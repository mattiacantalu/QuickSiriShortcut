# QuickSiriShortcut

Easy way to add a simple Siri shortcut to your app!

### .plist:
```
<key>NSUserActivityTypes</key>
<array>
  <string>com.yourname.appname.yoursirishorcut</string>
</array>
```
### Framework `Intent.framework`
 
### Activity:
```
let activity = NSUserActivity(activityType: "com.yourname.appname.yoursirishorcut")
activity.title = "Button tapped!"
activity.isEligibleForSearch = true
activity.isEligibleForPrediction = true
activity.persistentIdentifier = "com.yourname.appname.yoursirishorcut"
view.userActivity = activity
activity.becomeCurrent()
