//
//  FriendsTableViewCell.swift
//  close2_3
//
//  Created by Андрей Васильков on 17.01.2023.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var frindsView: UIView!
    @IBOutlet weak var friendsLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        frindsView.layer.cornerRadius = 12
        frindsView.layer.shadowRadius = 5
        frindsView.layer.shadowOpacity = 0.3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
