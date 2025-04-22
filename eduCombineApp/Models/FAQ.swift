//
//  FAQ.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import Foundation

struct FAQ: Decodable, Identifiable {
    var id: Int
    var question: String
    var answer: String
}
