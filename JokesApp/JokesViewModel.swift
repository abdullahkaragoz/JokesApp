//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Abdullah Karagöz on 23.11.2024.
//

import Foundation
import Alamofire

class JokesViewModel: ObservableObject {
    
    @Published var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        
        AF.request(
            "https://raw.githubusercontent.com/abdullahkaragoz/JokesApp/refs/heads/main/JokesApp/jokes.json",
            method: .get).responseDecodable(of:Welcome.self) { response in
                switch response.result {
                case .success(let data):
                    self.jokes += data.value
                case .failure(let error):
                    print(error)
                }
                
            }
        
    }
    
}
