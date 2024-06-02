//
//  BarcodeScannerViewModel.swift
//  BarCode Scanner
//
//  Created by Amritanshu Dash on 03/06/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    // broadcast our changes 
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        
        scannedCode.isEmpty ? "Not yet scanned":scannedCode
        
    }
    
    var statusTextColor: Color {
        
        scannedCode.isEmpty ? .red : .green
        
    }
    
}
