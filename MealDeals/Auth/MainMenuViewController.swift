//
//  ViewController.swift
//  MealDeals
//
//  Created by Drew Scheffer on 5/9/21.
//

import UIKit
import Firebase

class MainMenuViewController: UIViewController {
        
    @IBOutlet weak var logInButton: RoundedButton!
    @IBOutlet weak var registerButton: RoundedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        logInButton.defaultColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 0.7)
        registerButton.defaultColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 0.7)
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        authenticateUserAndConfigureView()
    }
    
    
    func authenticateUserAndConfigureView() {
        if (Auth.auth().currentUser != nil){
            self.performSegue(withIdentifier: K.alreadyLoggedInSegue, sender: self)
        }
    }


}

