import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTap(_ sender: Any) {
        let activity = NSUserActivity(activityType: "com.mattiacantalu.siri.shortcut")
        activity.title = "Button tapped!"
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = "com.mattiacantalu.siri.shortcut"
        view.userActivity = activity
        activity.becomeCurrent()
        
        showAlert()
    }
}

extension ViewController {
    func showAlert() {
        let alert = UIAlertController(title: "BUTTON TAPPED!!!", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
