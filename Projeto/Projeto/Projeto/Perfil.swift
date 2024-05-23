//
//  Configuracoes.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI

struct Perfil: View {
    @State private var showingSheet = false

    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 0.0){
                HStack{
                    Image("logoPerfil")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120.0, height: 120.0)
                    
                    Text("Nome de usuario")
                }
                
                Button("Novo Post"){
                    showingSheet.toggle()
                }
                
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .background(.cinzaClaro)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(10)
                        .shadow(radius: 50)
                        .sheet(isPresented: $showingSheet) {
                            Publicar()
                        }
                
                
                HStack{
                    Image("imagemTeste")
                        .resizable()
                        .padding(.top, 50.0)
                        .frame(width: 140, height: 160)
                    
                    Image("imagemTeste")
                        .resizable()
                        .padding(.top, 50.0)
                        .frame(width: 140, height: 160)

                }
                HStack{
                    Image("imagemTeste")
                        .resizable()
                        .padding(.top, 50.0)
                        .frame(width: 140, height: 160)
                    
                    Image("imagemTeste")
                        .resizable()
                        .padding(.top, 50.0)
                        .frame(width: 140, height: 160)

                }
                HStack{
                    Image("imagemTeste")
                        .resizable()
                        .padding(.top, 50.0)
                        .frame(width: 140, height: 160)
                    
                    Image("imagemTeste")
                        .resizable()
                        .padding(.top, 50.0)
                        .frame(width: 140, height: 160)

                }

                Spacer()
            }
        }
    }
}

#Preview {
    Perfil()
}
