//
//  SwitchTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 03.07.2023.
//

import UIKit

class SwitchTableViewCell: DefaultTableViewCell {
    static let switchIdentifier = "switch"

    private lazy var switchControl: UISwitch = {
        let swich = UISwitch()
        swich.translatesAutoresizingMaskIntoConstraints = false
        return swich
    }()
    
    override func setupHierarchy() {
        super.setupHierarchy()
        contentView.addSubview(switchControl)
    }
    
    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            switchControl.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            switchControl.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
        ])
    }
}

