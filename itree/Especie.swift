//
//  Especie.swift
//  itree
//
//  Created by Student on 9/27/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Especie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    convenience init(nome: String, nomeAutor: String, familia: Familia){
        
        // obtendo quem é o contexto de banco deste app, para fazer acesso ao banco
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        
        // criando um objeto NSEntityDescription para informar  qual tabela esta classe vai acessar
        let entityDescription = NSEntityDescription.entityForName("Especie", inManagedObjectContext: context)
        
        // chamando o init original da classe, e passando as informaçoes que obtivemos
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: context)
        
        self.nome = nome
        self.nomeAutor = nomeAutor
        self.familia = familia
    }
    
}
