//
//  FriendsTableViewCell.swift
//  close2_3
//
//  Created by Андрей Васильков on 17.01.2023.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var friendsCollection: UICollectionView!
    @IBOutlet weak var frindsView: UIView!
    @IBOutlet weak var friendsLbl: UILabel!
    
    var friends = ["Putin", "Biden", "Mercel", "Macron", "Lenin", "Obama"]

    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendsCollection.dataSource = self
        friendsCollection.delegate = self
        
        frindsView.layer.cornerRadius = 12
        frindsView.layer.shadowRadius = 5
        frindsView.layer.shadowOpacity = 0.3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension FriendsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsCollectionViewCell", for: indexPath) as? FriendsCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.friendName.text = friends[indexPath.row]
        cell.friendImg.image = UIImage(named: friends[indexPath.row])
        
        
        return cell
    }
    
    
}
