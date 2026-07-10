//
//  HomeModalViewController.swift
//  BootCampProjectOne
//
//  Created by Arpit 24 on 01/07/26.
//

import UIKit

class HomeModalViewController: UIViewController {

    @IBOutlet weak var okTap: UIButton!
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet var superView: UIView!
    @IBOutlet weak var congratulationsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        superView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        whiteView.layer.cornerRadius = 20
        whiteView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        whiteView.layer.masksToBounds = true

        okTap.layer.cornerRadius = 10
        okTap.layer.backgroundColor = UIColor.systemBlue.cgColor
        okTap.tintColor = .white
        
        congratulationsImage.image = UIImage(named: "HomeModalImage")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func okTap(_ sender: Any) {
        
        self.dismiss(animated: false)
    }
    
}
