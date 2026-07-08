//
//  ProfileTableViewCell.swift
//  BootCampProjectOne
//
//  Created by Apple System 22 on 08/07/26.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {


    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
