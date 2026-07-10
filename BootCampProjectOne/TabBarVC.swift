//
//  TabBarVC.swift
//  BootCampProjectOne
//
//  Created by Arpit 24 on 01/07/26.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                if let createAccVC = storyBoard.instantiateViewController(withIdentifier: "HomeModalViewController") as? HomeModalViewController {
                    createAccVC.modalPresentationStyle = .custom
                    self.present(createAccVC, animated: true)
                }

    }
    

}
