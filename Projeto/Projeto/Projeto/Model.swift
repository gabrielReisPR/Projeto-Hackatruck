//
//  Model.swift
//  Projeto
//
//  Created by Turma01-4 on 21/05/24.
//

import Foundation

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
