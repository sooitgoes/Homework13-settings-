//
//  SwitchTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 03.07.2023.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    var settings: Settings? {
        didSet {
            name.text = settings?.name
            icon.image = settings?.icon
            guard name.text != "VPN" else { return imageContainer.backgroundColor = .systemBlue}
        }
    }

    // MARK: - UI Elements
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 15, weight: .regular)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()

    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()

    private lazy var imageContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 7
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var switchControl: UISwitch = {
        let swich = UISwitch()
        swich.translatesAutoresizingMaskIntoConstraints = false
        return swich
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
        addSubview(imageContainer)
        addSubview(name)
        contentView.addSubview(switchControl)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            icon.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            icon.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
            icon.heightAnchor.constraint(equalToConstant: 20),
            icon.widthAnchor.constraint(equalToConstant: 20),

            imageContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageContainer.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            imageContainer.heightAnchor.constraint(equalToConstant: 30),
            imageContainer.widthAnchor.constraint(equalToConstant: 30),

            name.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            name.leftAnchor.constraint(equalTo: imageContainer.rightAnchor, constant: 15),

            switchControl.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            switchControl.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
        ])
    }

    // MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.settings = nil
    }
}

