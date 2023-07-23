//
//  TitleTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    static let identifier = "title"

    var settings: Settings? {
        didSet {
            name.text = settings?.name
        }
    }

    // MARK: - UI Elements
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 20, weight: .regular)
        return name
    }()

    private lazy var initials: UILabel = {
        let initials = UILabel()
        initials.text = "МЛ"
        initials.textColor = .white 
        initials.font = .systemFont(ofSize: 25, weight: .regular)
        initials.translatesAutoresizingMaskIntoConstraints = false
        return initials
    }()

    private lazy var definition: UILabel = {
        let definition = UILabel()
        definition.text = "Apple ID, iCloud, контент и покупки"
        definition.font = .systemFont(ofSize: 12, weight: .light)
        return definition
    }()

    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 30
        image.backgroundColor = .systemGray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fill
        stack.spacing = 2
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
            initials.centerXAnchor.constraint(equalTo: image.centerXAnchor),
            initials.centerYAnchor.constraint(equalTo: image.centerYAnchor),

            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            image.heightAnchor.constraint(equalToConstant: 60),
            image.widthAnchor.constraint(equalToConstant: 60),

            stack.centerYAnchor.constraint(equalTo: image.centerYAnchor),
            stack.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 15)
        ])
    }

    // MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.settings = nil
    }
}

