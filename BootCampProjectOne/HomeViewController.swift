//
//  HomeViewController.swift
//  BootCampProjectOne
//
//  Created by Arpit 24 on 01/07/26.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return homeHeaderView
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    @IBAction func `switch`(_ sender: Any) {
    }
    @IBOutlet weak var msgBtn: UIButton!
    @IBOutlet weak var lightBlueView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var blueViewBottomLabel: UILabel!
    @IBOutlet weak var blueViewTopLabel: UILabel!
    @IBOutlet weak var lightBlueViewBottomLabel: UILabel!
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var bellIconBtn: UIButton!
    @IBOutlet weak var lightBlueViewTopLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet var homeHeaderView: UIView!
    @IBOutlet weak var homeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationImage.image = UIImage(named: "LocationIcon")
        locationLabel.text = "A-199, Sector 63, No..."
        locationLabel.textColor = UIColor(hexString: "#FFFFFF")
        bellIconBtn.setImage(UIImage(named: "BellIcon"), for: .normal)
        msgBtn.setImage(UIImage(named: "MsgIcon"), for: .normal)
        bannerImage.image = UIImage(named: "HomeBanner")
        blueView.backgroundColor = UIColor(hexString: "#4896FF")
        blueView.layer.cornerRadius = 20
        lightBlueView.backgroundColor = UIColor(hexString: "#E4EFFE")
        lightBlueView.layer.cornerRadius = 20
        blueViewTopLabel.text = "20"
        blueViewBottomLabel.text = "Upcoming bookings"
        blueViewTopLabel.textColor = UIColor(hexString: "#FFFFFF")
        blueViewBottomLabel.textColor = UIColor(hexString: "#FFFFFF")
        lightBlueViewTopLabel.text = "7"
        lightBlueViewBottomLabel.text = "Upcoming RFP"
        lightBlueViewTopLabel.textColor = UIColor(hexString: "#000D1E")
        lightBlueViewBottomLabel.textColor = UIColor(hexString: "#000D1E")
        
        
        if let tabBarController = self.tabBarController {
            tabBarController.tabBar.isUserInteractionEnabled = true
        }
        homeTableView.delegate = self
        homeTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        homeTableView.contentInset = UIEdgeInsets(top: -view.safeAreaInsets.top - 25, left: 0, bottom: 0, right: 0)
    }

}
