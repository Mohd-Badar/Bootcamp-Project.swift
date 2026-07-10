//
//  ProfileViewController.swift
//  BootCampProjectOne
//
//  Created by Arpit 24 on 01/07/26.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell") as? ProfileTableViewCell else {
            return UITableViewCell()
        
        }
        var item = profileData[indexPath.row]
        var image = profileImage[indexPath.row]
        cell.cellLabel.text = item
        cell.cellImage.image = UIImage(named: image)
        return cell
    }
    

    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var profileEditBtn: UIButton!
    @IBOutlet weak var savedLabel: UILabel!
    @IBOutlet weak var subscriptionBtn: UIButton!
    @IBOutlet weak var validTillLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var crownImageView: UIImageView!
    @IBOutlet weak var barberShopLabel: UILabel!
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var profileData = ["All Quote",
                           "Education",
                           "My order",
                           "Discount & offer",
                           "Wishlist",
                           "My earnings",
                           "My course",
                           "My Target",
                           "My Wallet",
                           "Manage address",
                           "Manage saved card",
                           "Change password",
                           "FAQ’s",
                           "Help & support",
                           "Refer & earn",
                           "About us",
                           "Terms & condition",
                           "Privacy policy",
                           "Cancellation policy",
                           "Subscription History",
                           "Logout"]
    
    var profileImage = ["AllRFP", "course", "orders", "Discount", "Wishlist", "MyEarning", "course", "target", "wallet", "locationBlue", "locationBlue", "changePassword", "faq", "help", "refer", "about", "term", "privacy", "term", "privacy", "logout"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileTableView.delegate = self
        profileTableView.dataSource = self
        
        profileTableView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
    
        
        headerImageView.image = UIImage(named: "HeaderViewBlue")
        
        profileImageView.image = UIImage(named: "ImageTwoCollectionView")
        profileImageView.layer.cornerRadius = profileImageView.bounds.height / 2
        
        barberShopLabel.text = "The Barber Shop"
        barberShopLabel.textColor = UIColor(hexString: "#FFFFFF")
        barberShopLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        emailLabel.text = "barber_shop@gmail.com"
        emailLabel.textColor = UIColor(hexString: "#FFFFFF")
        emailLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
       // profileEditBtn.setBackgroundImage(UIImage("proceed"), for: .normal)
        
        savedLabel.text = "Saved $300"
        savedLabel.textColor = UIColor(hexString: "#000D1E")
        savedLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        validTillLabel.text = "Valid till 1st Apr 2024"
        
        yellowView.backgroundColor = UIColor(hexString: "FDD018")
        crownImageView.image = UIImage(named: "Crown")
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func profileEditBtn(_ sender: Any) {
    }
    @IBAction func subscriptionBtn(_ sender: Any) {
    }
    
}
