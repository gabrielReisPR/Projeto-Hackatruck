//
//  Model.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import Foundation

struct Usuario: Codable, Identifiable {
    var id: Int
    var nome: String?
//    var foto: String
    var despesas: [Despesa]
    var assinaturas: [Assinatura]
    var servicosContratados: [Servico]
}

// Struct para representar uma despesa
struct Despesa: Codable{
    var descricao: String?
    var valor: Double?
    var data: String?
    var categoria: String?
}

// Struct para representar uma assinatura
struct Assinatura :Codable{
    var tipo: String?
    var valor: Double?
    var dataInicio: String?
    var dataFim: String?
}

// Struct para representar um serviço contratado
struct Servico :Codable{
    var nome: String?
    var descricao: String?
    var valor: Double?
    var data_contratacao: String?
}

struct Economista: Codable {
    var _id: String?
    var _rev: String?
    var nome: String?
    var servicos_oferecidos: [Servico]?
    var opinioes: [Opiniao]?
    var outras_metricas: [OutrasMetricas]?
}

// Struct para representar uma opinião
struct Opiniao :Codable{
    var categoria: String
    var conteudo: String
    var data_postagem: String
}

// Struct para representar outras métricas do economista
struct OutrasMetricas :Codable{
    var numero_de_alunos: Int
    // Outras métricas...
}

struct News : Decodable, Identifiable {
    let id: Int
    let titulo : String?
    let introducao : String?
    let link: String?
    let editorias: String?
}


struct ApiNews : Decodable {
    let items : [News]
}
