//
//  Model.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import Foundation

struct Items : Codable {
    let titulo : String?
    let introducao : String?
    let link: String?
}

struct news : Decodable, Identifiable {
    let id : String
    let items: String?
}
