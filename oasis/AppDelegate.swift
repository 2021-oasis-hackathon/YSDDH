import GoogleMaps
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let gmApiKey: String = "AIzaSyDHxS1gPdX8ZEEmblHIKZ6xJaTONbFfuR0"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSServices.provideAPIKey(self.gmApiKey)
        //if using the Places API
//        GMSPlacesClient.provideAPIKey(self.gmApiKey)
        return true
    }
  
  /*
  * ...
  */
}

