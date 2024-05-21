//
//  ContentView.swift
//  Aula03
//
//  Created by Turma01-7 on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                
        TabView {
            Home ()
                .tabItem {
                    Label("Inicio", systemImage: "house.fill")
                }
            
            Noticias()
                .tabItem {
                    Label("Noticia", systemImage: "newspaper.fill")
                }
            
            Servicos()
                .tabItem {
                    Label("serviços", systemImage: "person.fill")
                }
            
            Configuracoes()
                .tabItem{
                    Label("Configurações", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
