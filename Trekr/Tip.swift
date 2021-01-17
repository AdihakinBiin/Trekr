//
//  Tip.swift
//  Trekr
//
//  Created by Abdihakin Elmi on 1/10/21.
//

import Foundation
struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
