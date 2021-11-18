//
//  CarsVM.swift
//  CarfaxTest
//
//  Created by Sreekuttan C L on 2021-11-18.
//

import Foundation

class CarsVM: ObservableObject{
    
    @Published var car: CarsModel?
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    
    init(){
        fetch()
    }
    
    func fetch() {
        
        isLoading = true
        errorMessage = nil
        
        let service = APIService()
        
        service.fetchCars(url: url) { [unowned self] result in
            
            DispatchQueue.main.async {
                
                self.isLoading = false
                switch result{
                case .failure(let error) :
                    self.errorMessage = error.localizedDescription
                    print(error.description)
                case .success(let car):
                    self.car = car
                }
            }
        }
        
    }
}
