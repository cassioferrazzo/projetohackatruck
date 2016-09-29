//
//  Versao.swift
//  itree
//
//  Created by Student on 9/29/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Versao: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    convenience init (versao: Double, dadosInseridos: Bool){
        
        // obtendo quem é o contexto de banco deste app, para fazer acesso ao banco
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        
        // criando um objeto NSEntityDescription para informar  qual tabela esta classe vai acessar
        let entityDescription = NSEntityDescription.entityForName("Versao", inManagedObjectContext: context)
        
        // chamando o init original da classe, e passando as informaçoes que obtivemos
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: context)
        
        self.dadosInseridos = dadosInseridos
        self.versao = versao
    }
}
