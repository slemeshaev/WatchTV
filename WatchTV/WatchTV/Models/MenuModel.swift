//
//  MenuModel.swift
//  WatchTV
//
//  Created by Станислав Лемешаев on 04.12.2020.
//

import Foundation

struct Menu {
    var header: String
    var row: [MovieModel]
    
    init(header: String, row: [MovieModel]) {
        self.header = header
        self.row = row
    }
}
