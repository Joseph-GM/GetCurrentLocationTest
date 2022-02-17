//
//  ViewController.swift
//  GetCurrentLocationTest
//
//  Created by Joseph Kim on 2022/02/17.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        let coor = locationManager.location?.coordinate
        
        print("\(coor?.latitude), \(coor?.longitude)")
        
    }


}

