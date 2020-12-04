//
//  MenuModel.swift
//  WatchTV
//
//  Created by Станислав Лемешаев on 04.12.2020.
//

import Foundation

struct Menu {
    var header: String
    var row: [String]
    
    init(header: String, row: [String]) {
        self.header = header
        self.row = row
    }
}
