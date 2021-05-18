//
//  AHEPANewsViewController.swift
//  AHEPAHellasTVApp
//
//  Created by Angelos Staboulis on 17/5/21.
//

import UIKit

class AHEPANewsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var rssList:[RSSModel]=[]{
        didSet{
            mainTableView.reloadData()
        }
    }
    var ahepaviewmodel:AHEPANewsViewModel!
    @IBOutlet var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupView()
        fillNewsArray()
    }
    
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
extension AHEPANewsViewController{
    func fillNewsArray(){
        self.ahepaviewmodel = AHEPANewsViewModel()
        self.ahepaviewmodel.fetchRSSList { (array) in
            self.rssList = array
        }
        
    }

    
    func setupCellNews(tableView:UITableView,indexPath:IndexPath)->AHEPACell {
        let cell:AHEPACell = tableView.dequeueReusableCell(withIdentifier: "cell") as! AHEPACell
        if indexPath.row < self.rssList.count {
            cell.lblDescription.text = self.ahepaviewmodel.rssList[indexPath.row].title
            cell.lblDescription.numberOfLines = 0
        }
        
        return cell
    }
    func setupView(){
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(270.0)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.rssList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return setupCellNews(tableView: tableView, indexPath: indexPath)
    }
}
