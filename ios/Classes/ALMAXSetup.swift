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

    func setUserID(_ call: FlutterMethodCall) {
        if let args = call.arguments as? Dictionary<String, Any>,
        let userid = args["userid"] as? String {
            ALSdk.shared()!.userIdentifier = userid
        }
    }

    func openDebugger() {
        ALSdk.shared()!.showMediationDebugger()
    }
}