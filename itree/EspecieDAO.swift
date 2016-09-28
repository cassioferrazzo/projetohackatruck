//
//  EspecieDAO.swift
//  itree
//
//  Created by Student on 9/28/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class EspecieDAO {
    
    static func inserir(especie: Especie){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(especie)
        
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
    
    static func excluir(especie: Especie){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.deleteObject(especie)
        
        do{
            try context.save()
            print("Excluiu")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func buscarTudo() -> [Especie]{
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var listaEspecie:[Especie] = []
        let request = NSFetchRequest(entityName: "Especie")
        request.sortDescriptors = [NSSortDescriptor.init(key: "nome", ascending: true )]
        do{
            listaEspecie = try context.executeFetchRequest(request) as! [Especie]
            print("Total de Especies: ", listaEspecie.count)
        }catch
            let errou as NSError{
                print(errou)
        }
        return listaEspecie
    }
}