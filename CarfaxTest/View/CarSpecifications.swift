//
//  CarSpecifications.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI

struct CarSpecifications: View {
    
    var car: Listing
    
    var body: some View {
        LazyVStack(alignment: .leading){
            VStack(alignment:.leading,spacing: 5){
                Text("Specificattions")
                    .bold()
                    .padding(.bottom, 10)
                
                HStack{
                    Text("Body Type:")
                    Text("\(car.bodytype)")
                }
                HStack{
                    Text("Status:")
                    Text("\(car.vehicleCondition)")
                }
                HStack{
                    Text("Engine:")
                    Text("\(car.engine)")
                }
                HStack{
                    Text("Drivetrain:")
                    Text("\(car.drivetype)")
                }
                HStack{
                    Text("Exterior Color:")
                    Text("\(car.exteriorColor)")
                }
                HStack{
                    Text("Interior Color:")
                    Text("\(car.interiorColor)")
                }
                HStack{
                    Text("Fuel:")
                    Text("\(car.fuel)")
                }
                HStack{
                    Text("Mileage:")
                    Text("\(car.mileage)")
                }
                
                VStack(alignment:.leading, spacing: 5){
                    HStack{
                        Text("mpgCity:")
                        Text("\(car.mpgCity)")
                    }
                    HStack{
                        Text("mpgHighway:")
                        Text("\(car.mpgHighway)")
                    }
                    HStack{
                        Text("Transmission:")
                        Text("\(car.transmission)")
                    }
                    HStack{
                        Text("VIN:")
                        Text("\(car.vin)")
                    }
                }
                
            }
        }
        .padding(.leading, 5)
    }
}

//struct CarSpecifications_Previews: PreviewProvider {
//    static var previews: some View {
//        CarSpecifications()
//    }
//}
