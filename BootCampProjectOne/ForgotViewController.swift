//
//  ForgotViewController.swift
//  BootCampProjectOne
//
//  Created by Apple System 22 on 06/07/26.
//

import UIKit

class ForgotViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var backToLabel: UILabel!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var forgotLabel: UILabel!
    @IBOutlet weak var weWillLabel: UILabel!
    @IBOutlet weak var headerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        headerImage.image = UIImage(named: "HeaderViewBlue")
        forgotLabel.text = "Forgot password"
        forgotLabel.textColor = UIColor(hexString: "#ffffff")
        forgotLabel.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        
        weWillLabel.text = "We will send a link on your email to reset \nthe password."
        weWillLabel.numberOfLines = 2
        weWillLabel.textColor = UIColor(hexString: "#ffffff")
        weWillLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(hexString: "#E5E6E8")?.cgColor
        textField.layer.cornerRadius = 10
        textField.placeholder = "Enter your email address"
        textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textField.setLeftPaddingPoints(15)
        
        sendBtn.setTitle("Send link", for: .normal)
        sendBtn.setTitleColor(UIColor(hexString: "#ffffff"), for: .normal)
        sendBtn.layer.backgroundColor = UIColor(hexString: "#006AF9")?.cgColor
        sendBtn.layer.cornerRadius = 10
        sendBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        backToLabel.text = "Back to"
        backToLabel.textColor = UIColor(hexString: "#405561")
        backToLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)

        // Do any additional setup after loading the view.
    }
    @IBAction func sendLinkBtn(_ sender: Any) {
    }
    @IBAction func loginBtn(_ sender: Any) {
        
            self.navigationController?.popViewController(animated: true)
        
    }

}
