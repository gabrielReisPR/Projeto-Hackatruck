//
//  Noticias.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import SwiftUI

struct Noticias: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ScrollView{
            
            VStack{
                ForEach(viewModel.News) { e in
                        HStack(){

                            VStack(alignment: .leading){
                                Text(e.items.titulo!)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                Text(e.items!)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                }
                .foregroundColor(.white)
                .padding(.leading)
                
                
            }
        }
        .onAppear(){
               viewModel.fetch()
           }
    }
}

#Preview {
    Noticias()
}
