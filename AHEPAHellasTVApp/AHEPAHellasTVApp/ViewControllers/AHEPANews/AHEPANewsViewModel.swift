//
//  AHEPANewsViewModel.swift
//  AHEPAHellasTVApp
//
//  Created by Angelos Staboulis on 17/5/21.
//

import Foundation
class AHEPANewsViewModel{
    init(list:[RSSModel]?=nil){
        if let getList = list {
            rssList = getList
        }
    }
    var rssList:[RSSModel]=[]
    
    func fetchRSSList(completion:@escaping ([RSSModel])->()){
        APIManager.shared.listRSS { array in
            self.rssList = array
            completion(self.rssList)
        }
    }
}
