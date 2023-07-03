//
//  DefaultTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

class DefaultTableViewCell: UITableViewCell {
    var settings: Settings? {
        didSet {
            name.text = settings?.name
            icon.image = settings?.icon
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
        addSubview(imageContainer)
        addSubview(name)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

        ])
    }

    // MARK: - Reuse


}
