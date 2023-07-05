//
//  LabelTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

class LabelTableViewCell: DefaultTableViewCell {

    private lazy var labelOff: UILabel = {
        let labelOff = UILabel()
        labelOff.text = "Выкл."
        labelOff.font = .systemFont(ofSize: 15, weight: .regular)
        labelOff.translatesAutoresizingMaskIntoConstraints = false
        return labelOff
    }()

    override func setupHierarchy() {
        super.setupHierarchy()
        contentView.addSubview(labelOff)
    }

    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            labelOff.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            labelOff.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10)
        ])
    }
}

