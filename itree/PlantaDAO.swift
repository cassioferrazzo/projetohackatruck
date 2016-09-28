//
//  PlantaDAO.swift
//  itree
//
//  Created by Student on 9/28/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class PlantaDAO {
    
    static func inserir(planta: Planta){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(planta)
        
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
    
    static func excluir(planta: Planta){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.deleteObject(planta)
        
        do{
            try context.save()
            print("Excluiu")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func buscarTudo() -> [Planta]{
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var plantas:[Planta] = []
        let request = NSFetchRequest(entityName: "Planta")
        request.sortDescriptors = [NSSortDescriptor.init(key: "nome", ascending: true )]
        do{
            plantas = try context.executeFetchRequest(request) as! [Planta]
            print("Total de Plantas: ", plantas.count)
        }catch
            let errou as NSError{
                print(errou)
        }
        return plantas
    }
}