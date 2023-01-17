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
    
    let sdkKey = "AIzaSyAABQtf3cFtqCtOZhV2RklUIfuskof3NYQ"
    private let locationManager = CLLocationManager()
    
    @IBOutlet weak var mapview: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()

        
        GMSServices.provideAPIKey(sdkKey)
        
        styleGoogleMaps()
        
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
    
    func maoppp() {
        print("coool")
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

