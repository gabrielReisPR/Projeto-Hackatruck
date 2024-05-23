//
//  ViewModel.swift
//  aula06
//
//  Created by Turma01-7 on 09/05/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var arrNews : [News] = []
    
    func fetch(){
        guard let url = URL(string: "https://servicodados.ibge.gov.br/api/v3/noticias?qtd=70" ) else{
            return
        }
        
        
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
           
            do {
                let parsed = try JSONDecoder().decode(ApiNews.self, from: data)
                
                DispatchQueue.main.async {
                
                    self?.arrNews = (self?.filterByEditora(parsed.items, "economicas"))!
                    print(parsed.items)
                    
                    
                    
                    

                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
    
    func filterByEditora(_ arr : [News], _ ed : String) -> [News]{
        var arrayFiltrado : [News] = []
        
        arrayFiltrado =  arr.filter({$0.editorias == ed})
        print(arrayFiltrado.count)

        
        
        return arrayFiltrado
    }
}
