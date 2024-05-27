//
//  Publicar.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI

struct Publicar: View {
    @StateObject var viewmodel = ViewModel()
    @State var publicacao: String = ""
    @State private var selection = "Finanças"
    enum Flavor: String, CaseIterable, Identifiable {
        case Finanças, BolsaDeValores, Criptomoedas
        var id: Self { self }
    }
    @State private var selectedFlavor: String = "Finanças"
    let arrayCategorias = ["Finanças", "Criptomoedas", "Bolsa de valores"]
    let date = "HOJE"
    @ObservedObject var nome = Globalvar.shared
    
    var body: some View {
        VStack{
            Text("Nova Publicação")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            
            List {
                Picker("Categoria", selection: $selectedFlavor) {
                    ForEach(arrayCategorias, id: \.self) {
                            Text($0)
                        }
                }
            }
            .frame(width: 290, height: 90)
            
            TextField("O'que Voçê está pensando?", text: $publicacao)
                .frame(width: 300,height: 100)
                .font(.system(size: 20))
                .foregroundColor(.black)
                .textFieldStyle(DefaultTextFieldStyle())
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Publicar"){
                viewmodel.post(Economista(_id: nil, _rev: nil, nome: nome.nomeUsuario, servicos_oferecidos: nil, opinioes: [Opiniao(categoria: selectedFlavor, conteudo: publicacao, data_postagem: date)], outras_metricas: nil))
            }
            .font(.system(size: 20))
            .frame(width: 100, height: 50)
            .background(.cinzaClaro)
            .textFieldStyle(.roundedBorder)
            .cornerRadius(10)
            .shadow(radius: 50)
            .padding()
            
        }
        .background(.cinzaClaro)
        .cornerRadius(10)
        .shadow(radius: 50)

        
    }
}

#Preview {
    Publicar()
}
