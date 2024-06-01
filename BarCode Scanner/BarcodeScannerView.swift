//
//  BarcodeScannerView.swift
//  BarCode Scanner
//
//  Created by Amritanshu Dash on 31/05/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
     
        NavigationView{
            VStack{
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .padding()
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                Text(scannedCode.isEmpty ? "Not yet scanned":scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
