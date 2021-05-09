//
//  LoginViewController.swift
//  MealDeals
//
//  Created by Drew Scheffer on 5/9/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    var continueButton: RoundedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        

        continueButton = RoundedButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        continueButton.setTitleColor(secondaryColor, for: .normal)
        continueButton.setTitle("Continue", for: .normal)
        continueButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: .bold)
        continueButton.center = CGPoint(x: view.center.x, y: view.frame.height - continueButton.frame.height)
        continueButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
        continueButton.defaultColor = .white
        continueButton.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)
        toggleContinueButton(isEnabled: false)
        view.addSubview(continueButton)
        
        emailField.delegate = self
        passField.delegate = self
    }
    
    @IBAction func dismissButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func toggleContinueButton(isEnabled: Bool){
        if isEnabled {
            continueButton.alpha = 0.5
        }else{
            continueButton.alpha = 1.0
        }
    }
    
    @objc func handleSignIn() {
        toggleContinueButton(isEnabled: true)
        if let email = emailField.text, let password = passField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                if let e = error {
                    print (e.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    


}
