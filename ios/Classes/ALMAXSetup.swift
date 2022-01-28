import Flutter
import UIKit
import AppLovinSDK

class ALMAXSetup: NSObject {
     func privacyData(_ call: FlutterMethodCall) {
       if let args = call.arguments as? Dictionary<String, Any>,
       let ageRestricted = args["ageRestricted"] as? Bool, 
       let hasConsent = args["hasGDPRConsent"] as? Bool {  
         ALPrivacySettings.setIsAgeRestrictedUser(ageRestricted)
         ALPrivacySettings.setHasUserConsent(hasConsent)
       }
    }

    func openDebugger() {
        ALSdk.shared()!.showMediationDebugger()
    }
}