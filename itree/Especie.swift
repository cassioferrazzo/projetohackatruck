//
//  Especie.swift
//  itree
//
//  Created by Student on 9/26/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
class Especie{
    
    let nome: String
    let nomeGenerico: String
    let nomeAutor: String
    let familia: Familia
    var nomePopular1: String? = nil
    var nomePopular2: String? = nil
    
    init(nome: String, nomeGenerico: String, nomeAutor: String, familia: Familia){
        
        self.nome = nome
        self.nomeGenerico = nomeGenerico
        self.nomeAutor = nomeAutor
        self.familia = familia
    }
    
}