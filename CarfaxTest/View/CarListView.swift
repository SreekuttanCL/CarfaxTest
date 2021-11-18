//
//  CarListView.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI
import SDWebImageSwiftUI

struct CarListView: View {
    
    let cars: CarsModel?
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            ForEach(cars?.listings ?? [], id:\.self){ car in
                NavigationLink(destination: CarListDetailView(cars: car)) {
                    VStack(alignment:.leading){
                        AnimatedImage(url: URL(string: "https://picsum.photos/200/300/"))
                            .resizable()
                            .frame(width: screen.width / 1.2, height: 250)
                            .cornerRadius(10)
                        
                        HStack {
                            Text("\(car.year)" )
                                .font(.system(size: 18))
                                .bold()
                            Text("\(car.make)")
                                .font(.system(size: 18))
                                .bold()
                            Text("\(car.model)")
                                .font(.system(size: 18))
                                .bold()
                        }
                        
                        HStack{
                            Text("\(car.listPrice)" )
                                .font(.system(size: 18))
                                .bold()
                            
                            Divider()
                            
                            Text("\(car.mileage) Mi")
                            
                            Divider()
                            
                            Text("\(car.dealer.city)")
                            
                            Divider()
                            
                            Button {
                                let phone = "tel://"
                                let phoneNumberformatted = phone + car.dealer.phone
                                guard let url = URL(string: phoneNumberformatted) else { return }
                                UIApplication.shared.open(url)
                            } label: {
                                Label("Call Us", systemImage: "phone")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

