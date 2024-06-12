//
//  BarcodeScannerView.swift
//  BarCode Scanner
//
//  Created by Amritanshu Dash on 31/05/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
   @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
     
        NavigationView {
            
            VStack {
                
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                    .padding()
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
                
            }
            
            .navigationTitle("Barcode Scanner")
            
            .alert(item: $viewModel.alertItem) { alertItem in
                
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissedButton)
                
            }
            // no more than 1 alert on an item......................
            
        }
        
    }
    
}

#Preview {
    BarcodeScannerView()
}
