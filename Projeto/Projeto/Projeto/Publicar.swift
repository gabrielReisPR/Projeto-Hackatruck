//
//  Publicar.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI

struct Publicar: View {
    @State var publicacao: String = ""
    var body: some View {
        VStack{
            Text("Nova Publicação")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            
            TextField("O'que Voçê está pensando?", text: $publicacao)
                .frame(width: 300,height: 100)
                .font(.system(size: 20))
                .foregroundColor(.black)
                .textFieldStyle(DefaultTextFieldStyle())
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Publicar"){
                
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
