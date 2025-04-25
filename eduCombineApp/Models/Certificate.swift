//
//  Certificate.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 25/04/2025.
//

import Foundation

struct Certificate: Identifiable, Decodable {
    var id: String
    var course: String
    var date: String
    var logo: String
    var instructor: String
}
