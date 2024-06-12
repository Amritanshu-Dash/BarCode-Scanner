//
//  AlertItems.swift
//  BarCode Scanner
//
//  Created by Amritanshu Dash on 03/06/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissedButton: Alert.Button
    
}

struct AlertContext {
    
    static let invalidDeviceType = AlertItem(title: Text("Invalid Device Input."),
                                             message: Text("Something is wrong with the camera. We are unable to capture the input."),
                                             dismissedButton: .default(Text("Okay!"))
                                            )
    
    static let invalidScannedType = AlertItem(title: Text("Invalid Scan Type."),
                                              message: Text("The value scanned is not a valid value. This app only scans EAN-8 and EAN-13 barcodes only."),
                                              dismissedButton: .default(Text("Okay!"))
                                             )
    
}
