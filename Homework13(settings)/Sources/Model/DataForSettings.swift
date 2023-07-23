//
//  DataForSettings.swift
//  Homework13(settings)
//
//  Created by Михаил Латий on 23.07.2023.
//

import Foundation

extension Settings {
    static let infoSettings: [[Settings]] = [
        [Settings(type: .subtitle, name: "Михаил Латий", icon: nil)],
        [Settings(type: .withSwitch, name: "Авиарежим", icon: "airplane"),
         Settings(type: .withLabel, name: "Wi-Fi", icon: "wifi"),
         Settings(type: .withLabel, name: "Bluetooth", icon: "bluetooth"),
         Settings(type: .withLabel, name: "Сотовая связь", icon: "cellularData"),
         Settings(type: .withLabel, name: "Режим модема", icon: "modem"),
         Settings(type: .withSwitch, name: "VPN", icon: "vpn")],
        [Settings(type: .basic, name: "Уведомления", icon: "notification"),
         Settings(type: .basic, name: "Звуки, тактильные сигналы", icon: "sound"),
         Settings(type: .basic, name: "Фокусирование", icon: "focusing"),
         Settings(type: .basic, name: "Экранное время", icon: "screenTime")],
        [Settings(type: .basic, name: "Основные", icon: "basicSettings"),
         Settings(type: .basic, name: "Пункт управления", icon: "controlPoint"),
         Settings(type: .basic, name: "Экран и яркость", icon: "screenAndBrightness"),
         Settings(type: .basic, name: "Экран «Домой»", icon: "screenHome"),
         Settings(type: .basic, name: "Универсальный доступ", icon: "universalAccess"),
         Settings(type: .basic, name: "Обои", icon: "wallpaper"),
         Settings(type: .basic, name: "Siri И Поиск", icon: "siri"),
         Settings(type: .basic, name: "Face ID и код-пароль", icon: "faceId"),
         Settings(type: .basic, name: "Экстренный вызов - SOS", icon: "sos"),
         Settings(type: .basic, name: "Аккумулятор", icon: "battery"),
         Settings(type: .basic, name: "Кофидициальность \nи безопасность", icon: "confidantionaly")]
    ]
}
