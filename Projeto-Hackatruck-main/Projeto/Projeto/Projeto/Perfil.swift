//
//  Configuracoes.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI
import Observation

class Globalvar: ObservableObject {
    @Published var nomeUsuario: String = ""
    
    static let shared = Globalvar()
}

struct Perfil: View {
    @State private var showingSheet = false
    @State private var chamada1 = false
    @State private var chamada2 = false
    @State private var chamada3 = false
    @State private var limpar = false
    @ObservedObject var nome = Globalvar.shared
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 0.0){
                HStack{
                    
                    Image("logoPerfil")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 120.0, height: 120.0)
                    
                    Text(nome.nomeUsuario)
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
                
                Spacer()
                
                VStack(spacing:0){
                    
                    
                    HStack{
                        
                        Button("Chamada1") {
                            chamada1 = true
                            
                        }
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .background(.cinzaClaro)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(10)
                        .shadow(radius: 50)
                        .sheet(isPresented: $chamada1) {
                            ZStack {
                                Rectangle()
                                    .fill(.black)
                                    .ignoresSafeArea(.all)
                                Text("colocar config aqui1")
                                    .foregroundColor(.white)
                            }
                        }
                        
                        
                    }
                    
                    
                    HStack{
                        Button("Chamada2") {
                            chamada2 = true
                            
                        }
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .background(.cinzaClaro)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(10)
                        .shadow(radius: 50)
                        .sheet(isPresented: $chamada2) {
                            ZStack {
                                Rectangle()
                                    .fill(.black)
                                    .ignoresSafeArea(.all)
                                Text("colocar config aqui2")
                                    .foregroundColor(.white)
                            }
                            
                        }
                    }
                    .padding()
                    HStack{
                        
                        Button("Chamada3") {
                            chamada3 = true
                            
                        }
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .background(.cinzaClaro)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(10)
                        .shadow(radius: 50)
                        .sheet(isPresented: $chamada3) {
                            ZStack {
                                Rectangle()
                                    .fill(.black)
                                    .ignoresSafeArea(.all)
                                Text("colocar config aqui3")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .padding(40)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .padding(.horizontal)
                Spacer()
                
                
                HStack{
                    
                    //                    Button("excluir sua conta") {
                    //                        limpar = true
                    //
                    //                    }
                    //
                    //                    .font(.system(size: 25))
                    //
                    //                    .textFieldStyle(.roundedBorder)
                    //                    .cornerRadius(10)
                    //                    .shadow(radius: 50)
                    //                    .alert(isPresented: $limpar) {
                    //                        Alert(title: <#T##Text#>, primaryButton: Alert.Button, secondaryButton: <#T##Alert.Button#>)                    }
                    //
                    //
                    //
                }
                
                
                
            }
        }
    }
}


#Preview {
    Perfil()
}
