//
//  ScannerView.swift
//  BarCode Scanner
//
//  Created by Amritanshu Dash on 01/06/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode:String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        ScannerVC(scannerDelegate: context.coordinator)
        
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
    
    func makeCoordinator() -> Coordinator {
        
        Coordinator(scannerView:self)
        
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        
        private let scannerView:ScannerView
        
        init(scannerView: ScannerView) {
            
            self.scannerView = scannerView
            
        }
        
        func didFind(barcode: String) {
            
            scannerView.scannedCode = barcode
            
        }
        
        func didSurface(error: cameraError) {
            
            switch error {
                
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidDeviceType
                
            case.invalidScannedInput:
                scannerView.alertItem = AlertContext.invalidScannedType
                
            }
            
        }
        
    }
    
}

