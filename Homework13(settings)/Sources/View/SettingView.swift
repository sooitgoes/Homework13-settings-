//
//  SettingView.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 23.07.2023.
//

import UIKit

class SettingView: UIView {
    private var dataSettings: [[Settings]]?
    var navigation: (() -> Void)?

    // MARK: - UI Elements
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.dataSource = self
        table.delegate = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        registerCellForTable()
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups
    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor)
        ])
    }

    private func registerCellForTable() {
        tableView.register(DefaultTableViewCell.self, forCellReuseIdentifier: DefaultTableViewCell.identifier)
        tableView.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        tableView.register(LabelTableViewCell.self, forCellReuseIdentifier: LabelTableViewCell.labelIdentifier)
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.switchIdentifier)
    }

    // MARK: - Configuration
    func configureView(with models: [[Settings]]?) {
        self.dataSettings = models
        tableView.reloadData()
    }
}

extension SettingView: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSettings?.count ?? 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSettings?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = dataSettings?[indexPath.section] [indexPath.row]

        switch cellType?.type {
        case .basic:
            let cell = tableView.dequeueReusableCell(withIdentifier: DefaultTableViewCell.identifier, for: indexPath) as? DefaultTableViewCell
            cell?.settings = dataSettings?[indexPath.section] [indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()
        case .subtitle:
            let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell
            cell?.settings = dataSettings?[indexPath.section] [indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()
        case .withLabel:
            let cell = tableView.dequeueReusableCell(withIdentifier: LabelTableViewCell.labelIdentifier, for: indexPath) as? LabelTableViewCell
            cell?.settings = dataSettings?[indexPath.section] [indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()
        case .withSwitch:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.switchIdentifier, for: indexPath) as? SwitchTableViewCell
            cell?.settings = dataSettings?[indexPath.section] [indexPath.row]
            return cell ?? UITableViewCell()
        default:
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellType = dataSettings?[indexPath.section] [indexPath.row]
        if cellType?.type == .subtitle {
            return 70
        }
        return 44
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.settings = dataSettings?[indexPath.section] [indexPath.row]
        navigation!()
    }
}
    

