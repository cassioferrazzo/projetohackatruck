//
//  Foto.swift
//  itree
//
//  Created by Student on 9/26/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
class Foto{
    
    let nome: String
    let data: NSDate
    let localizacao: Localizacao
    
    
    init (nome: String, data: NSDate, localizacao: Localizacao){
        self.nome = nome
        self.data = data
        self.localizacao = localizacao
    }
}