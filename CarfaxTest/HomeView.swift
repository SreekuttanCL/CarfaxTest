//
//  ContentView.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI
import Kingfisher
import SDWebImageSwiftUI

struct HomeView: View {
    
    @StateObject var carVM = CarsVM()
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                if carVM.isLoading {
                    LoadingView()
                }
                else if carVM.errorMessage != nil {
                    ErrorView(carVM: carVM)
                }
                else {
                    CarListView(cars: carVM.car)
                }
            }
            .navigationBarTitle("CARFAX")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
