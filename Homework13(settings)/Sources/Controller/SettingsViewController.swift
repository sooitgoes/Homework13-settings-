//
//  SettingsViewController.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 28.06.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    private var settingView: SettingView? {
        guard isViewLoaded else { return nil }
        return view as? SettingView
    }

    var dataSettings: [[Settings]]?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingView()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        dataSettings = Settings.infoSettings
        configureView()
        goToDetailView()
    }

    // MARK: - Configuration
    func configureView() {
        guard let models = dataSettings else { return }
        settingView?.configureView(with: models)
    }

    func goToDetailView() {
        settingView?.navigation = { vc in
//            let viewController = DetailViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}


