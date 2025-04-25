//
//  CertificateViewModel.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 25/04/2025.
//

import Foundation
import Firebase

final class CertificateViewModel: ObservableObject {
    @Published var certificates: [Certificate] = []
    
    init() {
        fetchCertificates()
    }
    
    func fetchCertificates() {
        let db = Firestore.firestore()
        
        db.collection("certificates").getDocuments() { (querySnapShot, error) in
            if let error {
                print("Error getting documents: \(error)")
            } else {
                if let querySnapShot {
                    for document in querySnapShot.documents {
                        let data = document.data()
                        
                        let id = data["id"] as? String ?? ""
                        let course = data["course"] as? String ?? ""
                        let dateValue = (data["date"] as AnyObject).dateValue().formatDate()
                        let logo = data["logo"] as? String ?? ""
                        let instructor = data["instructor"] as? String ?? ""

                        let certificate = Certificate(id: id, course: course, date: dateValue, logo: logo, instructor: instructor)
                        
                        self.certificates.append(certificate)
                    }
                }
            }
        }
    }
}
