//
//  AHEPAChaptersViewController.swift
//  AHEPAHellasTVApp
//
//  Created by Angelos Staboulis on 17/5/21.
//

import UIKit

class AHEPAChaptersViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var rssList:[RSSModel]=[]
    @IBOutlet var mainTableView: UITableView!
    func fillItems(){
        rssList.append(RSSModel(title: "Athens Chapter HJ-1", link: "http://ahepahellas.org/chapters/athens-chapter-hj-1"))
        rssList.append(RSSModel(title: "Glyfada Chapter HJ-2", link: "http://ahepahellas.org/chapters/glyfada-hj-2"))
        rssList.append(RSSModel(title: "ATG HJ-3 -Thessaloniki", link: "http://ahepahellas.org/chapters/alexander-the-great-hj-3-thessaloniki"))
        rssList.append(RSSModel(title: "Solon Chapter HJ-4 – Halandri", link: "http://ahepahellas.org/chapters/solon-chapter-hj-4-halandri"))
        rssList.append(RSSModel(title: "Zakynthos Chapter HJ-5", link: "http://ahepahellas.org/chapters/zakynthos-hj-5"))
        rssList.append(RSSModel(title: "Kydon Chapter HJ-6 – Chania, Crete", link: "http://ahepahellas.org/chapters/kydon-chapter-hj-6-chania-crete"))
        rssList.append(RSSModel(title: "Papaflessa Chapter HJ-7 – Kalamata", link: "http://ahepahellas.org/chapters/papaflessa-hj-7-kalamata"))
        rssList.append(RSSModel(title: "Strymon Chapter HJ-8 – Serres", link: "http://ahepahellas.org/chapters/strymon-hj-8-serres"))
        rssList.append(RSSModel(title: "Themistoklis Chapter HJ-9 Piraeus", link: "http://ahepahellas.org/chapters/themistoklis-hj-9-piraeus"))
        rssList.append(RSSModel(title: "Pericles Chapter HJ-10 – Holargos", link:"http://ahepahellas.org/chapters/pericles-chapter-hj-10-holargos"))
        rssList.append(RSSModel(title: "Knossos Chapter HJ-11 – Irakleion", link:"http://ahepahellas.org/chapters/knossos-chapter-hj-11-irakleion"))
        rssList.append(RSSModel(title: "Rigas Feraios Chapter HJ-12 – Volos", link:"http://ahepahellas.org/chapters/rigas-ferreos-chapter-hj-12-volos"))
        rssList.append(RSSModel(title: "Argonauts Chapter HJ-13 – Argalasti", link:"http://ahepahellas.org/chapters/argonauts-chapter-hj-13-argalasti"))
        rssList.append(RSSModel(title: "Philippos Chapter HJ-14 – Kavala", link:"https://ahepahellas.org/chapters/philippos-chapter-hj-14-kavala/"))
        rssList.append(RSSModel(title: "Trantas Chapter HJ-15 – Kozani", link:"http://ahepahellas.org/chapters/kozani-trantas-chapter-hj-15"))
        rssList.append(RSSModel(title: "Areti Chapter HJ-16 - Drama", link:"http://ahepahellas.org/chapters/drama-areti-chapter-hj-16"))
        rssList.append(RSSModel(title: "Ifestos Chapter HJ-17 – Varie", link:"http://ahepahellas.org/chapters/vari-ifestos-chapter-hj-17"))
        rssList.append(RSSModel(title: "Lepanto Chapter HJ-18 Nafpaktos", link:"http://ahepahellas.org/chapters/nafpaktos-hj-18"))
        rssList.append(RSSModel(title: "Protagoras Chapter HJ-19 - Xanthi", link:"http://ahepahellas.org/chapters/xanthi-hj-19"))
        rssList.append(RSSModel(title: "Orfeus Chapter HJ-20 – Komotini", link:"http://ahepahellas.org/chapters/komotini-hj-20"))
        rssList.append(RSSModel(title: "Democritus Chapter HJ-21 - Alexandroupoli", link:"http://ahepahellas.org/chapters/alexandroupoli"))
        rssList.append(RSSModel(title: "Arcadia Chapter HJ-22 - Tripolis", link:"http://ahepahellas.org/chapters/tripolis-hj-22"))
        rssList.append(RSSModel(title: "King Pyrros Chapter HJ-23 - Ioannina", link:"http://ahepahellas.org/chapters/ioannina-hj-23"))
        rssList.append(RSSModel(title: "Spartiates - Chapter HJ-24 - Sparti", link:"http://ahepahellas.org/chapters/sparti-spartiates-hj-24"))
        rssList.append(RSSModel(title:"St. Andrew Chapter HJ-25 - Patra", link:"http://ahepahellas.org/chapters/st-andrew-chapter-hj-25-patra"))
        rssList.append(RSSModel(title:"Olympos Chapter HJ-26 - Larissa", link:"http://ahepahellas.org/chapters/olympos-chapter-hj-26-larissa"))
        rssList.append(RSSModel(title:"Kassandros Chapter HJ-27 – Oreokastro Thes.", link:"http://ahepahellas.org/chapters/kassandros-chapter"))
        rssList.append(RSSModel(title:"Jim Londos Chapter HJ-28 – Nafplio", link:"http://ahepahellas.org/chapters/jim-londos-chapter-hj-28-nafplio"))
        rssList.append(RSSModel(title:"Vergina Chapter HJ-29 – Veroia", link:"http://ahepahellas.org/chapters/vergina-chapter-hj-29-veroia"))
        rssList.append(RSSModel(title:"Theagenis Chapter HJ-30 – Thassos", link:"http://ahepahellas.org/chapters/theagenis-chapter-hj-30-thassos"))
        rssList.append(RSSModel(title:"Nearchos Chapter H-31 – Ag. Nikolaos, Crete", link:"http://ahepahellas.org/chapters/nearchos-chapter-h-31-ag-nikolaos-crete"))
        rssList.append(RSSModel(title:"N. Plastiras Chapter HJ-32 - Karditsa", link:"http://ahepahellas.org/chapters/n-plastiras-chapter-hj-32-karditsa/"))
        rssList.append(RSSModel(title:"Chapter HJ-33 - Rhodes", link:"http://ahepahellas.org/chapters/chapter-hj-33-rhodes/"))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnBack(_ sender: Any) {
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
extension AHEPAChaptersViewController{
    func setupView(){
        mainTableView.delegate = self
        mainTableView.dataSource = self
        fillItems()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(250.0)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rssList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return setupChaptersCell(tableview: tableView, index: indexPath)
    }
    func setupChaptersCell(tableview:UITableView,index:IndexPath)->AHEPACell{
        let cell:AHEPACell = tableview.dequeueReusableCell(withIdentifier: "cell") as! AHEPACell
        if index.row < rssList.count {
            cell.lblDescription.text = rssList[index.row].title
            cell.lblDescription.textColor = .white
        }
        return cell
    }
}
