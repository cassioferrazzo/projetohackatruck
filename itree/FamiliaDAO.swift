//
//  FamiliaDAO.swift
//  itree
//
//  Created by Student on 9/28/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class FamiliaDAO {
    
    static func inserir(familia: Familia){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(familia)
        
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
    
    static func excluir(familia: Familia){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.deleteObject(familia)
        
        do{
            try context.save()
            print("Excluiu")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func buscarTudo() -> [Familia]{
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var listaFamilias:[Familia] = []
        let request = NSFetchRequest(entityName: "Familia")
        request.sortDescriptors = [NSSortDescriptor.init(key: "nome", ascending: true )]
        do{
            listaFamilias = try context.executeFetchRequest(request) as! [Familia]
            print("Total de Familias: ", listaFamilias.count)
        }catch
            let errou as NSError{
                print(errou)
        }
        return listaFamilias
    }
}