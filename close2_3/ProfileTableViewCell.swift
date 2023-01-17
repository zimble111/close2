//
//  ProfileTableViewCell.swift
//  close2_3
//
//  Created by Андрей Васильков on 17.01.2023.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var ProfileImg: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        cellView.layer.cornerRadius = 12
//        cellView.layer.shadowRadius = 5
//        cellView.layer.shadowOpacity = 0.3
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
