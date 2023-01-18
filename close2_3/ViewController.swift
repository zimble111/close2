//
//  ViewController.swift
//  close2_3
//
//  Created by Павел Гниломедов on 14.01.2023.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    private let database = Database.database().reference()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @objc private func addNewEntry() {
            let object: [String: Any] = [
                "timeStamp" : "unixTimeStamp" as NSObject,
                "phone" : "phoneNumber",
                "geoLocation" : "geoLocation"
            ]
            database.child("UID").setValue(object)
        }

}

