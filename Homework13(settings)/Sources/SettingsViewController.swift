//
//  SettingsViewController.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 28.06.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    private var dataSettings: [[Settings]]?

    // MARK: - UI Elements
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(DefaultTableViewCell.self, forCellReuseIdentifier: "default")
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: "title")
        table.register(LabelTableViewCell.self, forCellReuseIdentifier: "label")
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: "switch")
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSettings = Settings.infoSettings
        view.backgroundColor = .white
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups
    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
}

extension SettingsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSettings?.count ?? Int()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSettings?[section].count ?? Int()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}
