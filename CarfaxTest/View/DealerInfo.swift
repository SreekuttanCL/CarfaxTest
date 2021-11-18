//
//  DealerInfo.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import SwiftUI

struct DealerInfo: View {
    
    var dealer: Dealer
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Dealer Info")
                .bold()
                .padding(.bottom, 10)
            
            VStack(alignment:.leading){
                Text("\(dealer.name)")
                    .bold()
                    .font(.system(size: 18))
                Text("\(dealer.address)")
                    .foregroundColor(.gray)
                Text("\(dealer.city)")
                    .foregroundColor(.gray)
                Button {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + dealer.phone
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                } label: {
                    Label("Call Us", systemImage: "phone")
                }

            }
        }
    }
}

//struct DealerInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        DealerInfo()
//    }
//}
