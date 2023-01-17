//
//  AddfTableViewCell.swift
//  close2_3
//
//  Created by Андрей Васильков on 17.01.2023.
//

import UIKit

class AddfTableViewCell: UITableViewCell {

    @IBOutlet weak var addView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        addView.layer.cornerRadius = 12
        addView.layer.shadowOpacity = 0.3
        addView.layer.shadowRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
