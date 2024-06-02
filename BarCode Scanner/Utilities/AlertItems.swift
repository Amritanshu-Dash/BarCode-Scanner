//
//  AlertItems.swift
//  BarCode Scanner
//
//  Created by Amritanshu Dash on 03/06/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: String
    let message: String
    let dismissedButton: Alert.Button
    
}

struct AlertContext {
    
    static let invalidDeviceType = AlertItem(title: "Invalid Device Input.",
                                             message: "Something is wrong with the camera. We are unable to capture the input.",
                                             dismissedButton: .default(Text("Okay!"))
                                            )
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type.",
                                              message: "The value scanned is not a valid value. This app only scans EAN-8 and EAN-13 barcodes only.",
                                              dismissedButton: .default(Text("Okay!"))
                                             )
    
}
