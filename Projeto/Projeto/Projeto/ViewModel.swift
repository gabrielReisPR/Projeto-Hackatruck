//
//  ViewModel.swift
//  aula06
//
//  Created by Turma01-7 on 09/05/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var News : [news] = []
    
    func fetch(){
        guard let url = URL(string: "http://servicodados.ibge.gov.br/api/v3/noticias/" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([news].self, from: data)
                
                DispatchQueue.main.async {
                    self?.News = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
