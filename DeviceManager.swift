//
//  DeviceManager.swift
//  DeviceManager
//
//  Created by Xiaodan Wang on 8/24/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import UIKit

class SystemManager {
    
    /// Get Screen Width
    static func getDeviceScreenWidth() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    /// Get Screen Height
    static func getDeviceScreenHeight() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }

    /// Get iPhone Nick Name
    static func getiPhoneName() -> String {
        return UIDevice.current.name
    }
    
    /// Get App Version Number
    static func getAPPVerion() -> String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    
    /// Get Battery Level
    static func getBatteryLevel() -> Float {
        return UIDevice.current.batteryLevel
    }
    
    /** Get Battery State
    1. unknown
    2. unplugged // on battery, discharging
    3. charging // plugged in, less than 100%
    4. full // plugged in, at 100%
    */
    static func getBatteryState() -> UIDeviceBatteryState {
        return UIDevice.current.batteryState
    }
    
    /// Get System Name
    static func getSystemName() -> String {
        return UIDevice.current.systemName
    }
    
    /// Get Current System Version Number
    static func getSystemVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    /** Get Device Orientation
    1. unknown
    2. portrait // Device oriented vertically, home button on the bottom
    3. portraitUpsideDown // Device oriented vertically, home button on the top
    4. landscapeLeft // Device oriented horizontally, home button on the right
    5. landscapeRight // Device oriented horizontally, home button on the left
    6. faceUp // Device oriented flat, face up
    7. faceDown // Device oriented flat, face down
    */
    static func getDeviceOrientation() -> UIDeviceOrientation {
        return UIDevice.current.orientation
    }
    
    /// Get Device UUID
    static func getUUID() -> String {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    
    /// Get Memory Size
    static func getTotalMemorySize() -> UInt64 {
        return ProcessInfo.processInfo.physicalMemory
    }

    /// Get Processor Count
    static func getProcessorCount() -> Int {
        return ProcessInfo.processInfo.processorCount
    }
    
    /// Get Active Processor Count
    static func getActiveProcessorCount() -> Int {
        return ProcessInfo.processInfo.activeProcessorCount
    }
    
    /// Get Current Device Language
    static func getDeviceLanguage() -> String {
        let languageArray: [String] = NSLocale.preferredLanguages
        return languageArray.first ?? ""
    }
}
