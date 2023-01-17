//
//  ProfileViewController.swift
//  close2_3
//
//  Created by Андрей Васильков on 17.01.2023.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var profileTb: UITableView!
    
    var name = ["name"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTb.delegate = self
        profileTb.dataSource = self
        
        self.profileTb.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
    //MARK: - Cells for tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
            cell.NameLabel.text = "Andrei"
            
            return cell
        }
        else if indexPath.row == 1{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "FriendsTableViewCell", for: indexPath) as! FriendsTableViewCell

            return cell2
        }
        else {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "AddfTableViewCell", for: indexPath) as! AddfTableViewCell

            return cell3
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 163
    }
  
}
