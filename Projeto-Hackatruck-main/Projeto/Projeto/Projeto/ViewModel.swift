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
    
    func post(_ obj: Economista) {

    guard let url = URL(string: "http://192.168.128.21:1880/banco_amigo_economista_7_Post") else { return }

    var request = URLRequest(url: url)
        request.httpMethod = "POST"

    // Headers must specify that the HTTP request body is JSON-encoded

    var headers = request.allHTTPHeaderFields ?? [:]

    headers["Content-Type"] = "application/json"

    request.allHTTPHeaderFields = headers

    let encoder = JSONEncoder()

    do {

        let jsonData = try encoder.encode(obj)

        request.httpBody = jsonData

        print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")

    } catch {

        print("Error encoding to JSON: \(error.localizedDescription)")

    }

    let task = URLSession.shared.dataTask(with: request) { data, response, error in

    if let error = error {

    print("Error to send resource: \(error.localizedDescription)")

    return

    }

    guard let httpResponse = response as? HTTPURLResponse else {

    return

    }

    print("Error to send resource: invalid response")

    if httpResponse.statusCode == 200 {

    print("Resource POST successfully")

    } else {

    print("Error POST resource: status code (httpResponse.statusCode)")

    }

    }

    task.resume()

    }
}


