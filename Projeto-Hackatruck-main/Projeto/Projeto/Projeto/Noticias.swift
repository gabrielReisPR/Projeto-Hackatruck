//
//  Noticias.swift
////  Projeto
////
////  Created by Turma01-4 on 21/05/24.
////

import SwiftUI

struct Noticias: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        
        ZStack{
            Color(.cinzaClaro)
                .ignoresSafeArea()
            
            VStack{
                ScrollView{
                    
                    ForEach(viewModel.arrNews) { e in
                        HStack(){
                            
                            VStack(alignment: .leading){
                                
                                AsyncImage(url: URL(string: "https://source.unsplash.com/random/200x100/?money")) { image in
                                    image
                                        .resizable()
                                } placeholder: {
                                    Color.black
                                        .frame(width: 75, height: 75)
                                }
                                .frame(width: 300, height: 150)
                                
                                Text(e.titulo!)
                                    .font(.largeTitle)
                                
                                Link("Link da noticia", destination: URL(string: e.link!)!)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                
                                Text("__________________________________")
                            }
                            .padding()
                            Spacer()
                        }
                        
                    }
                    .padding(.leading)
                    
                    
                }
            }.onAppear(){
                viewModel.fetch()
                
            }
            
        }
    }
}

#Preview {
    Noticias()
}
