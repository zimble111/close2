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
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var mapview: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.mapview.isMyLocationEnabled = true
        //        locationManager.delegate = self
        //        locationManager.requestWhenInUseAuthorization()
        //        locationManager.startUpdatingLocation()
        
        GMSServices.provideAPIKey(sdkKey)
        
        
        // license for google maps
        let license = GMSServices.openSourceLicenseInfo()
    }
    //    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    //        if let location = locations.last  {
    //            let coordinates = location.coordinate
    //            let camera = GMSCameraPosition.camera(withLatitude: coordinates.latitude, longitude: coordinates.longitude, zoom: 6.0)
    //            let mapView = GMSMapView.map(withFrame: self.mapview.frame, camera: camera)
    //
    //            self.locationManager.stopUpdatingLocation()
    //
    //        }
    //        let marker = GMSMarker()
    //        marker.position = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    //        marker.title = "Sydney"
    //        marker.snippet = "Australia"
    //        marker.map = mapView
    //    }
    
}
