//
//  FotoDAO.swift
//  itree
//
//  Created by Student on 9/28/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class FotoDAO {
    
    static func inserir(foto: Foto){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(foto)
        
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
    
    static func excluir(foto: Foto){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.deleteObject(foto)
        
        do{
            try context.save()
            print("Excluiu")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func buscarTudo() -> [Foto]{
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var fotos:[Foto] = []
        let request = NSFetchRequest(entityName: "Foto")
        request.sortDescriptors = [NSSortDescriptor.init(key: "nome", ascending: false )]
        do{
            fotos = try context.executeFetchRequest(request) as! [Foto]
            print("Total de fotos: ", fotos.count)
        }catch
            let errou as NSError{
                print(errou)
        }
        return fotos
    }
}