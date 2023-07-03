//
//  TitleTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    // MARK: - UI Elements
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 15, weight: .regular)
        return name
    }()

    private lazy var initials: UILabel = {
        let initials = UILabel()
        initials.font = .systemFont(ofSize: 20, weight: .bold)
        initials.translatesAutoresizingMaskIntoConstraints = false
        return initials
    }()

    private lazy var definition: UILabel = {
        let definition = UILabel()
        definition.text = "Apple ID, iCloud, контент и покупки"
        definition.font = .systemFont(ofSize: 15, weight: .regular)
        return definition
    }()

    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
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
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(definition)
        image.addSubview(initials)
        addSubview(image)
        addSubview(stack)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

        ])
    }

    // MARK: - Reuse


}
