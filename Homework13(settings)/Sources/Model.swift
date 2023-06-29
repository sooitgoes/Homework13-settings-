//
//  Model.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 29.06.2023.
//

import UIKit

enum CellType {
    case `default`
    case subtitle
    case withSwitch
    case withLabel
}

enum Icons: String {
    case airplane
    case basicSettings
    case battery
    case bluetooth
    case cellularData
    case confidantionaly
    case controlPoint
    case faceId
    case focusing
    case modem
    case notification
    case screenAndBrightness
    case screenHome
    case screenTime
    case siri
    case sos
    case sound
    case universalAccess
    case vpn
    case wallpaper
    case wifi

    var image: UIImage? {
        UIImage(named: rawValue)
    }
}


struct Settings {
    let type: CellType
    let name: String
    let icon: UIImage?
}

extension Settings {
    static var infoSettings: [[Settings]] = [
        [Settings(type: .subtitle, name: "Михаил Латий", icon: nil)],
        [Settings(type: .withSwitch, name: "Авиарежим", icon: Icons.airplane.image),
         Settings(type: .withLabel, name: "Wi-Fi", icon: Icons.wifi.image),
         Settings(type: .withLabel, name: "Bluetooth", icon: Icons.bluetooth.image),
         Settings(type: .withLabel, name: "Сотовая связь", icon: Icons.cellularData.image),
         Settings(type: .withLabel, name: "Режим модема", icon: Icons.modem.image),
         Settings(type: .withSwitch, name: "VPN", icon: Icons.vpn.image)],
        [Settings(type: .default, name: "Уведомления", icon: Icons.notification.image),
         Settings(type: .default, name: "Звуки, тактильные сигналы", icon: Icons.sound.image),
         Settings(type: .default, name: "Фокусирование", icon: Icons.focusing.image),
         Settings(type: .default, name: "Экранное время", icon: Icons.screenTime.image)],
        [Settings(type: .default, name: "Основные", icon: Icons.basicSettings.image),
         Settings(type: .default, name: "Пункт управления", icon: Icons.controlPoint.image),
         Settings(type: .default, name: "Экран и яркость", icon: Icons.screenAndBrightness.image),
         Settings(type: .default, name: "Экран «Домой»", icon: Icons.screenHome.image),
         Settings(type: .default, name: "Универсальный доступ", icon: Icons.universalAccess.image),
         Settings(type: .default, name: "Обои", icon: Icons.wallpaper.image),
         Settings(type: .default, name: "Siri И Поиск", icon: Icons.siri.image),
         Settings(type: .default, name: "Face ID и код-пароль", icon: Icons.faceId.image),
         Settings(type: .default, name: "Экстренный вызов - SOS", icon: Icons.sos.image),
         Settings(type: .default, name: "Аккумулятор", icon: Icons.battery.image),
         Settings(type: .default, name: "Кофидициальность и безопасность", icon: Icons.confidantionaly.image)]
    ]
}

