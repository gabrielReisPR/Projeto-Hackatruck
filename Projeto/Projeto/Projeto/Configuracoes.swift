//
//  Configuracoes.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI

struct Configuracoes: View {
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
                    NavigationLink (destination: Publicar()){
                        Text("Novo Post")
                            .font(.callout)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(0.0)
                            .frame(width: 110, height: 70)
                            .background(.cinzaClaro)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(10)
                            .shadow(radius: 50)
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
            .padding(.leading, -100.0)
        }
    }
}

#Preview {
    Configuracoes()
}
