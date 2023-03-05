//
//  Message.swift
//  Messenger Angime
//
//  Created by Shynggys Umbetov on 05/03/2023.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
