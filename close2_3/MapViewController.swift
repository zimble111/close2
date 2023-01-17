//
//  MapViewController.swift
//  close2_3
//
//  Created by Андрей Васильков on 15.01.2023.
//

import UIKit
import GoogleMaps
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var locationBtn: UIButton!
    @IBOutlet weak var profileBtn: UIButton!
    
    @IBOutlet weak var mapview: GMSMapView!
    
    let sdkKey = "AIzaSyAABQtf3cFtqCtOZhV2RklUIfuskof3NYQ"
    private let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()

        
        GMSServices.provideAPIKey(sdkKey)
        
        styleGoogleMaps()
        
        locationBtn.layer.cornerRadius = 12
        locationBtn.layer.shadowRadius = 10
        locationBtn.layer.shadowOpacity = 0.3
        
        addBtn.layer.cornerRadius = 12
        addBtn.layer.shadowRadius = 10
        addBtn.layer.shadowOpacity = 0.3
        
        profileBtn.layer.cornerRadius = 12
        profileBtn.layer.shadowRadius = 10
        profileBtn.layer.shadowOpacity = 0.3
        
        // license for google maps
        let license = GMSServices.openSourceLicenseInfo()
    }
    
    private func styleGoogleMaps() {
       do {
           if let styleUrl = Bundle.main.url(forResource: "map", withExtension: "json"){
               mapview.mapStyle = try GMSMapStyle(contentsOfFileURL: styleUrl)
           }
           else{
               NSLog("unable to find style file")
           }
       }catch {
           NSLog("failed to load")
       }
    }
    func users_location() {
        mapview.animate(toLocation: locationManager.location!.coordinate)
        mapview.animate(toZoom: 15)
    }

    @IBAction func showLocation(_ sender: Any) {
        users_location()
    }
    
    
}



// MARK: - CLLocationManagerDelegate
extension MapViewController: CLLocationManagerDelegate {
  
  func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    
    guard status == .authorizedWhenInUse else {
      return
    }
    
    locationManager.startUpdatingLocation()
      
    mapview.isMyLocationEnabled = true
//    mapview.settings.myLocationButton = true
  }
  
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let location = locations.first else {
      return
    }
      
    mapview.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
      
    locationManager.stopUpdatingLocation()
  }
}

