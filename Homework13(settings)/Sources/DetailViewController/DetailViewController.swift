//
//  DetailViewController.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 04.07.2023.
//

import UIKit

class DetailViewController: UIViewController {
    var settings: Settings?
    
    // MARK: - UI Elements
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 25, weight: .bold)
        name.numberOfLines = 2
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()

    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupHierarchy()
        setupLayout()
        prepareData()
    }

    // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(icon)
        view.addSubview(name)

    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            icon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            icon.heightAnchor.constraint(equalToConstant: 50),
            icon.widthAnchor.constraint(equalToConstant: 50),

            name.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            name.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 40)
        ])
    }

    private func prepareData() {
        name.text = settings?.name
        icon.image = settings?.icon
    }
}
