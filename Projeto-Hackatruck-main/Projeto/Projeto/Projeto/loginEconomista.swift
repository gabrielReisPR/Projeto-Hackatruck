//
//  Publicar.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI

struct loginEconomista: View {
    @ObservedObject var globalName = Globalvar.shared
    @StateObject var viewmodel = ViewModel()
    @State var userName: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Digite seu usuario")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundStyle(.black)
                
                TextField("Nome de usuario", text: $globalName.nomeUsuario)
                    .frame(width: 300,height: 100)
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .multilineTextAlignment(.center)
                    .padding()
                
                NavigationLink(destination: ContentView()){
                    Text("Entrar")
                }
                .font(.system(size: 20))
                .frame(width: 100, height: 50)
                .background(.cinzaClaro)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .shadow(radius: 50)
                .padding()
                .foregroundStyle(.black)
                
            }
            .background(.cinzaClaro)
            .cornerRadius(10)
            .shadow(radius: 50)
            
        }
    }
}

#Preview {
    loginEconomista()
}
