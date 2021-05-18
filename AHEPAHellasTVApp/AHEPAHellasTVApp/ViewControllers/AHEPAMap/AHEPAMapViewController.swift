//
//  AHEPAMapViewController.swift
//  AHEPAHellasTVApp
//
//  Created by Angelos Staboulis on 17/5/21.
//

import UIKit
import MapKit
class AHEPAMapViewController: UIViewController {
    func showAHEPAHeadQuarters(){
        let coordinate = CLLocationCoordinate2D(latitude: 37.978253, longitude: 23.754864)
        let mkAnnotation = MKPointAnnotation()
        mkAnnotation.title = "AHEPA HeadQuarters"
        mkAnnotation.coordinate = coordinate
        mapView.camera = MKMapCamera(lookingAtCenter: mkAnnotation.coordinate, fromDistance: 100000, pitch: 0, heading: .greatestFiniteMagnitude)
        mapView.addAnnotation(mkAnnotation)
        
    }
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showAHEPAHeadQuarters()
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
