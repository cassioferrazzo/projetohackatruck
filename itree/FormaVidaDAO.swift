//
//  DAOFormaVida.swift
//  itree
//
//  Created by Student on 9/27/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class FormaVidaDAO {
    
    static func inserir(formaVida: FormaVida){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(formaVida)
        
        do{
            try context.save()
            print("Salvo")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func alterar(){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        do{
            try context.save()
            print("Salvo")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func excluir(formaVida: FormaVida){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.deleteObject(formaVida)
        
        do{
            try context.save()
            print("Excluiu")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func buscarTudo() -> [FormaVida]{
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var listaFormas:[FormaVida] = []
        let request = NSFetchRequest(entityName: "FormaVida")
        request.sortDescriptors = [NSSortDescriptor.init(key: "nome", ascending: true )]
        do{
            listaFormas = try context.executeFetchRequest(request) as! [FormaVida]
            print("Total de Formas: ", listaFormas.count)
        }catch
            let errou as NSError{
            print(errou)
        }
        return listaFormas
    }
}