//
//  Planta.swift
//  itree
//
//  Created by Student on 9/26/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
class Planta{
    
    var especie: Especie
    let observacao: String
    var fotos: [Foto] = []
    
    init (especie: Especie, observacao: String){
        
        self.especie = especie
        self.observacao = observacao
    }
    
    
}