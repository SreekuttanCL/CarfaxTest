//
//  CarListDetailView.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI
import SDWebImageSwiftUI

struct CarListDetailView: View {
    
    var cars: Listing
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                
                AnimatedImage(url: URL(string: "https://picsum.photos/200/300/"))
                    .resizable()
                    .frame(width: screen.width / 1.2, height: 250)
                
                HStack {
                    Text("\(cars.year)" )
                        .font(.system(size: 18))
                        .bold()
                    Text("\(cars.make)")
                        .font(.system(size: 18))
                        .bold()
                    Text("\(cars.model)")
                        .font(.system(size: 18))
                        .bold()
                }
                
                Divider()
                
                CarTopOptions(topOptions: cars.topOptions)
                
                Divider()
                
                CarSpecifications(car: cars)
                
                Divider()
                
                DealerInfo(dealer: cars.dealer)
            }
            .padding(.leading, 30)
            
        }
    }
}

//struct CarListDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CarListDetailView(cars: Listing)
//    }
//}
