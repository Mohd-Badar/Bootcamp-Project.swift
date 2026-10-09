//
//  SelectionViewController.swift
//  BootCampProjectOne
//
//  Created by Arpit 24 on 01/07/26.
//

import UIKit

class SelectionViewController: UIViewController {

    @IBOutlet weak var proceedBtn: UIButton!
    @IBOutlet weak var createAccountLabel: UILabel!
    @IBOutlet weak var serviceTypeLabel: UILabel!
    @IBOutlet weak var businessView: UIView!
    @IBOutlet weak var individualImage: UIImageView!
    @IBOutlet weak var individualLabel: UILabel!
    @IBOutlet weak var individualView: UIView!
    @IBOutlet weak var backToLabel: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var weAreExcitedLabel: UILabel!
    @IBOutlet weak var businessImageView: UIImageView!
    @IBOutlet weak var businessLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView.backgroundColor = UIColor(hexString: "#E4EFFE")
        
        createAccountLabel.text = "Create your account"
        createAccountLabel.textColor = UIColor(hexString: "#000D1E")
        createAccountLabel.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        
        weAreExcitedLabel.text = "We are excited to have you join our community of trendsetters, beauty enthausiats, and professionals"
        weAreExcitedLabel.numberOfLines = 2
        weAreExcitedLabel.textColor = UIColor(hexString: "#4D5561")
        weAreExcitedLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        serviceTypeLabel.text = "Select your service type"
        serviceTypeLabel.textColor = UIColor(hexString: "#000D1E")
        serviceTypeLabel.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        
        businessView.layer.cornerRadius = 20
        businessView.layer.borderWidth = 1
        businessView.layer.borderColor = UIColor(hexString: "#A3CAFF")?.cgColor
        businessLabel.textColor = UIColor(hexString: "#000D1E")
        
        individualView.layer.cornerRadius = 20
        individualView.layer.borderWidth = 1
        individualView.layer.borderColor = UIColor(hexString: "#E5E6E8")?.cgColor
        individualLabel.textColor = UIColor(hexString: "#B1B5BB")
        
        businessLabel.text = "Business"
        businessLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        individualLabel.text = "Individual"
        individualLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        backToLabel.text = "Back to"
        backToLabel.textColor = UIColor(hexString: "#4D5561")
        backToLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(UIColor(hexString: "#004096"), for: .normal)
        loginBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        proceedBtn.setImage(UIImage(named: "Group 183366"), for: .normal)
        
    
        }
        
        
        // Do any additional setup after loading the view.
    @IBAction func proceedBtn(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let tabVC = storyBoard.instantiateViewController(withIdentifier: "TabBarVC") as? TabBarVC {
            self.navigationController?.pushViewController(tabVC, animated: true)
        }
    }
    @IBAction func loginBtn(_ sender: Any) {
        
        let vc = self.navigationController?.viewControllers.filter({$0 is LogInViewController}).first
        self.navigationController?.popToViewController(vc!, animated: true)
   
        
    }
    @IBAction func businessBtn(_ sender: Any) {
        
        businessView.layer.cornerRadius = 20
        businessView.layer.borderWidth = 1
        businessView.layer.borderColor = UIColor(hexString: "#A3CAFF")?.cgColor
        businessLabel.textColor = UIColor(hexString: "#000D1E")
        businessImageView.image = UIImage(named: "BusinessSelected")
        
        
        individualView.layer.cornerRadius = 20
        individualView.layer.borderWidth = 1
        individualView.layer.borderColor = UIColor(hexString: "#E5E6E8")?.cgColor
        individualLabel.textColor = UIColor(hexString: "#B1B5BB")
        individualImage.image = UIImage(named: "IndividualUnselected")
    }
    @IBAction func individualBtn(_ sender: Any) {
        
        businessView.layer.cornerRadius = 20
        businessView.layer.borderWidth = 1
        businessView.layer.borderColor = UIColor(hexString: "#E5E6E8")?.cgColor
        businessLabel.textColor = UIColor(hexString: "#B1B5BB")
        businessImageView.image = UIImage(named: "BussinessUnselected")
        
        
        individualView.layer.cornerRadius = 20
        individualView.layer.borderWidth = 1
        individualView.layer.borderColor = UIColor(hexString: "#A3CAFF")?.cgColor
        individualLabel.textColor = UIColor(hexString: "#000D1E")
        individualImage.image = UIImage(named: "IndividualSelected")
    }
    

}
