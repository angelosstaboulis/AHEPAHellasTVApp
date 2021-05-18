//
//  AHEPAHistoryViewController.swift
//  AHEPAHellasTVApp
//
//  Created by Angelos Staboulis on 17/5/21.
//

import UIKit
import AVKit
class AHEPAHistoryViewController: UIViewController {
    @IBOutlet var videoView: UIView!
    var videoPlayer=AVPlayer()
    var videolayer:AVPlayerLayer!
    var urlMain:URL?
    var urlBundle:String?
    func videoStartPlaying(){
        let mainPath = rootDirectory(root: "iOS-Projects")  + "AHEPAHellasTVApp" + "/" + "AHEPAHellasTVApp" + "/" + "history.mp4"
        let urlVideoHistory = URL(fileURLWithPath: mainPath)
        videoPlayer = AVPlayer(url: urlVideoHistory)
        videolayer = AVPlayerLayer(player: videoPlayer)
        videolayer.frame = videoView.frame
        videoView.layer.addSublayer(videolayer)
        videoPlayer.play()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         videoStartPlaying()
        // Do any additional setup after loading the view.
    }
    //this is a function that i am using to get the application root directory
    func rootDirectory(root:String)->String{
        let mainPath = Bundle.main.bundlePath.components(separatedBy: "/")
        let directory = "/"+mainPath[1]+"/"+mainPath[2]+"/" + root + "/"
        return directory
    }

    @IBAction func btnBack(_ sender: Any) {
        videoPlayer.pause()
        dismiss(animated: true, completion: nil)
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
