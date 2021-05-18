//
//  MainViewController.swift
//  AHEPAHellasTVApp
//
//  Created by Angelos Staboulis on 17/5/21.
//

import UIKit

class MainViewController: UIViewController {
    func openController(identifier:String){
        let ahepaStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = ahepaStoryboard.instantiateViewController(identifier: identifier)
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    @IBAction func ahepanews(_ sender: Any) {
        openController(identifier: "AHEPANewsViewController")
    }
    @IBAction func ahepavideos(_ sender: Any) {
        openController(identifier: "AHEPAMapViewController")
    }
    @IBAction func ahepachapters(_ sender: Any) {
        openController(identifier: "AHEPAChaptersViewController")
    }
    @IBAction func ahepahistory(_ sender: Any) {
        openController(identifier: "AHEPAHistoryViewController")
    }
    func centerAHEPALogo(){
        let image = UIImage(named: "ahepalogo")
        let imageView = UIImageView(image: image)
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: CGFloat(-15)).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(5)).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        centerAHEPALogo()
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
