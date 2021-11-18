//
//  ErrorView.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI

struct ErrorView: View {
    
    @ObservedObject var carVM: CarsVM
    
    var body: some View {
        Text("error")
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(carVM: CarsVM())
    }
}
