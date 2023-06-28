//
//  SettingsViewController.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 28.06.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    // MARK: - UI Elements


    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups
    private func setupHierarchy() {

    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

        ])
    }
}
