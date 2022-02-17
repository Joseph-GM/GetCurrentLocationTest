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
    
    var currentLatitudeString: String = "37.5125226"
    var currentLongitudeString: String = "126.7122712"
    var currentLatitudeNumber: Double = 37.5125226 {
        didSet {
            currentLatitudeString = String(currentLatitudeNumber)
        }
    }
    var currentLongitudeNumber: Double = 126.7122712 {
        didSet {
            currentLongitudeString = String(currentLongitudeNumber)
        }
    }
    var currentLocationCoordinate: CLLocationCoordinate2D  {
        get{
            return CLLocationCoordinate2D(latitude: currentLatitudeNumber, longitude: currentLongitudeNumber)
        }
        set {
            currentLatitudeNumber = newValue.latitude
            currentLongitudeNumber = newValue.longitude
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        print("init coordinate all")
        print("currentLocationCoordinate : \(currentLocationCoordinate)")
        print("currentLatitudeNumber : \(currentLatitudeNumber)")
        print("currentLongitudeNumber : \(currentLongitudeNumber)")
        print("currentLatitudeString : \(currentLatitudeString)")
        print("currentLongitudeString : \(currentLongitudeString)")
        
        
        let coor = locationManager.location?.coordinate
        if let newlatitude = coor?.latitude, let newlongitude = coor?.longitude {
            currentLocationCoordinate = CLLocationCoordinate2D(latitude: newlatitude, longitude: newlongitude)
        }
        print("data from location Manager : \(coor?.latitude), \(coor?.longitude)")
        
        print("after coordinate all")
        print("currentLocationCoordinate : \(currentLocationCoordinate)")
        print("currentLatitudeNumber : \(currentLatitudeNumber)")
        print("currentLongitudeNumber : \(currentLongitudeNumber)")
        print("currentLatitudeString : \(currentLatitudeString)")
        print("currentLongitudeString : \(currentLongitudeString)")
    }


}

