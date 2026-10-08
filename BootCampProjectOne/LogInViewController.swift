//
//  ViewController.swift
//  BootCampProjectOne
//
//  Created by Arpit 24 on 01/07/26.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var dontHaveAcc: UILabel!
    @IBOutlet weak var rightLine: UILabel!
    @IBOutlet weak var leftLine: UILabel!
    @IBOutlet weak var orContinueWith: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var facebookBtn: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var signInToYourAccount: UILabel!
    @IBOutlet weak var eyeButton: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginWithMobile: UIButton!

    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    
    var isPassword: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerImageView.image = UIImage(named: "HeaderViewBlue")
        signInToYourAccount.text = "Sign in to your \naccount"
        signInToYourAccount.textColor = UIColor(hexString: "#ffffff")
        signInToYourAccount.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        
        emailAddressTextField.layer.borderWidth = 1
        emailAddressTextField.layer.borderColor = UIColor(hexString: "#E5E6E8")?.cgColor
        emailAddressTextField.layer.cornerRadius = 10
        emailAddressTextField.placeholder = "Email address"
        emailAddressTextField.setLeftPaddingPoints(15)
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor(hexString: "#E5E6E8")?.cgColor
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.placeholder = "Password"
        passwordTextField.setLeftPaddingPoints(15)
        passwordTextField.isSecureTextEntry = true
        
        forgotPassword.setTitle("Forgot password?", for: .normal)
        forgotPassword.setTitleColor(UIColor(hexString: "#4896FF"), for: .normal)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor(hexString: "#ffffff"), for: .normal)
        loginButton.layer.backgroundColor = UIColor(hexString: "#006AF9")?.cgColor
        loginButton.layer.cornerRadius = 10
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        loginWithMobile.setTitle("Login with mobile number", for: .normal)
        loginWithMobile.setTitleColor(UIColor(hexString: "#4896FF"), for: .normal)
        
        orContinueWith.text = "Or \n\ncontinue with"
        orContinueWith.numberOfLines = 3
        orContinueWith.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        orContinueWith.textColor = UIColor(hexString: "#4D5561")
        
        leftLine.layer.backgroundColor = UIColor(hexString: "#E5E6E8")?.cgColor
        
        rightLine.layer.backgroundColor = UIColor(hexString: "#E5E6E8")?.cgColor
        
        dontHaveAcc.text = "Don't have an account?"
        dontHaveAcc.textColor = UIColor(hexString: "#4D5561")
        
        signUpBtn.setTitle("Signup", for: .normal)
        signUpBtn.setTitleColor(UIColor(hexString: "##4896FF"), for: .normal)
        
        googleBtn.setImage(UIImage(named: "googleIcon"), for: .normal)
        facebookBtn.setImage(UIImage(named: "fbIcon"), for: .normal)
        appleBtn.setImage(UIImage(named: "appleIcon"), for: .normal)

    
    }

    @IBAction func loginWithMobile(_ sender: Any) {
    }
    @IBAction func loginButton(_ sender: Any) {
    }
    @IBAction func forgotPassword(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let tabVC = storyBoard.instantiateViewController(withIdentifier: "ForgotVC") as? ForgotViewController {
            self.navigationController?.pushViewController(tabVC, animated: true)
        }
    }
    
    @IBAction func eyeButton(_ sender: Any) {
        if isPassword {
            isPassword = false
            
            passwordTextField.isSecureTextEntry = false
            eyeButton.setImage(UIImage(named: "eyeIcon"), for: .normal)
        } else {
            isPassword = true
            passwordTextField.isSecureTextEntry = true
            eyeButton.setImage(UIImage(named: "eyeCrossIcon"), for: .normal)
        }
    }
    
    @IBAction func facebookBtn(_ sender: Any) {
    }
    @IBAction func appleBtn(_ sender: Any) {
    }
    @IBAction func signUpBtn(_ sender: Any) {
    }
    @IBAction func googleBtn(_ sender: Any) {
    }
    
}

