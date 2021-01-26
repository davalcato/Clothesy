//
//  Profile.swift
//  Clothesy
//
//  Created by Daval Cato on 1/25/21.
//

import Foundation


struct Profile: Identifiable {
    
    let id = UUID()
    let uid: String
    let name: String
    let email: String
}

extension Profile: DocumentSerializable {
    
    init?(documentData: [String : Any]) {
        let uid = documentData[SparkKeys.Profile.uid] as? String
            ?? ""
        let name = documentData[SparkKeys.Profile.name] as? String
            ?? ""
        let email = documentData[SparkKeys.Profile.email] as? String
            ?? ""
        
        
        self.init(uid: uid, name: name, email: email)
    }
    
    
}


























