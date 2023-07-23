//
//  DefaultTableViewCell.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

class DefaultTableViewCell: UITableViewCell {
    static let identifier = "default"

    var settings: Settings? {
        didSet {
            name.text = settings?.name
            icon.image = settings?.icon

            switch name.text {
            case "Уведомления", "Экстренный вызов - SOS":
                imageContainer.backgroundColor = .systemRed
            case "Звуки, тактильные сигналы":
                imageContainer.backgroundColor = .systemPink
            case "Фокусирование", "Экранное время":
                imageContainer.backgroundColor = .systemIndigo
            case "Основные", "Пункт управления":
                imageContainer.backgroundColor = .opaqueSeparator
            case "Обои":
                imageContainer.backgroundColor = .systemCyan
            case "Siri И Поиск":
                imageContainer.backgroundColor = .black
            case "Face ID и код-пароль", "Аккумулятор", "Режим модема", "Сотовая связь":
                imageContainer.backgroundColor = .systemGreen
            case "Авиарежим":
                imageContainer.backgroundColor = .systemOrange
            default:
                imageContainer.backgroundColor = .systemBlue
            }
        }
    }

    // MARK: - UI Elements
    lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 15, weight: .regular)
        name.numberOfLines = 2
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()

    lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.clipsToBounds = true
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()

    lazy var imageContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 7
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
    func setupHierarchy() {
        imageContainer.addSubview(icon)
        contentView.addSubview(imageContainer)
        addSubview(name)
    }

    func setupLayout() {
        NSLayoutConstraint.activate([
            icon.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            icon.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
            icon.heightAnchor.constraint(equalToConstant: 15),
            icon.widthAnchor.constraint(equalToConstant: 20),
            
            imageContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageContainer.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            imageContainer.heightAnchor.constraint(equalToConstant: 30),
            imageContainer.widthAnchor.constraint(equalToConstant: 30),

            name.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            name.leftAnchor.constraint(equalTo: imageContainer.rightAnchor, constant: 15)
        ])
    }

    // MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.settings = nil
    }
}
