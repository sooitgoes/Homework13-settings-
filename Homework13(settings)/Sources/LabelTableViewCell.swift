//
//  LabelTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

class LabelTableViewCell: UITableViewCell {

    // MARK: - UI Elements
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 15, weight: .regular)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()

    private lazy var labelOff: UILabel = {
        let labelOff = UILabel()
        labelOff.text = "Выкл."
        labelOff.font = .systemFont(ofSize: 15, weight: .regular)
        labelOff.translatesAutoresizingMaskIntoConstraints = false
        return labelOff
    }()

    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()

    private lazy var imageContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    private func setupHierarchy() {
        imageContainer.addSubview(icon)
        contentView.addSubview(imageContainer)
        contentView.addSubview(name)
        contentView.addSubview(labelOff)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

        ])
    }

    // MARK: - Reuse


}

