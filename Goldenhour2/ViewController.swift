//
//  ViewController.swift
//  Goldenhour2
//
//  Created by Alex Meckes on 11/3/14.
//  Copyright (c) 2014 Alex Meckes. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var locLabel: UILabel!
    @IBOutlet weak var lonLabel: UILabel!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var MyLocation: UITextField!
    var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager = CLLocationManager()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func locButton(sender: AnyObject) {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    //func locationManager(manager:CLLocationManager!, didUpdateLocations locations:[AnyObject]!) {
      //  println("locations = \(locationManager)")
       // var latValue = locationManager.location.coordinate.latitude
        //var lonValue = locationManager.location.coordinate.longitude
        //latLabel.text = String(latValue)
        //lonLabel.text = String(lonValue)
     //   locLabel.text = "success"
   // }

}


   // let date:NSDate = NSDate()
   // let sunCalc:SunCalc = SunCalc.getTimes(date, latitude: 51.5, longitude: -0.1)
    
    //var formatter:NSDateFormatter = NSDateFormatter()
    //formatter.dateFormat = "HH:mm"
    //formatter.timeZone = NSTimeZone(abbreviation: "GMT")
   // var sunriseString:String = formatter.stringFromDate(sunCalc.sunrise)
    //println("sunrise is at \(sunriseString)")
    
   // let sunPos:SunPosition = SunCalc.getSunPosition(date, latitude: 51.5, longitude: -0.1)
    
   // var sunriseAzimuth:Double = sunPos.azimuth * 180 / Constants.PI()
   // println("sunrise azimuth: \(sunriseAzimuth)")
   // super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.