//
//  CarTopOptions.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI

struct CarTopOptions: View {
    
    let gridItem = [GridItem(.flexible(minimum: 50, maximum: 300), spacing: 20, alignment: .top),
                    GridItem(.flexible(minimum: 50, maximum: 300), spacing: 20, alignment: .top)]
    
    var topOptions: [String]
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Highlights")
                .bold()
            
            LazyVGrid(columns: gridItem,alignment:.leading, spacing: 16) {
                
                ForEach(topOptions, id:\.self){ option in
                    HStack(alignment:.center) {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                        Text("\(option)")
                            .font(.system(size: 14))
                    }
                    .frame(width: screen.width / 2)
                }

            }
        }
    }
}

struct CarTopOptions_Previews: PreviewProvider {
    static var previews: some View {
        CarTopOptions(topOptions: ["KeyLess Entry", "Headted Seat", "Dual Exhaust"])
    }
}
