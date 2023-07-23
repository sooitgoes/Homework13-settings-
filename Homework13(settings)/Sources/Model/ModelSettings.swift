//
//  ModelSettings.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import Foundation

enum CellType {
    case basic
    case subtitle
    case withSwitch
    case withLabel
}

struct Settings {
    let type: CellType
    let name: String
    let icon: String?

}



