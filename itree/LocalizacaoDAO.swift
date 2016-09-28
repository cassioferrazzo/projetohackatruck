//
//  LocalizacaoDAO.swift
//  itree
//
//  Created by Student on 9/28/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class LocalizacaoDAO {
    
    static func inserir(localizacao: Localizacao){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(localizacao)
        
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
    
    static func excluir(localizacao: Localizacao){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.deleteObject(localizacao)
        
        do{
            try context.save()
            print("Excluiu")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
    
    static func buscarTudo() -> [Localizacao]{
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var listaLocais:[Localizacao] = []
        let request = NSFetchRequest(entityName: "Localizacao")
        request.sortDescriptors = [NSSortDescriptor.init(key: "latitude", ascending: false )]
        do{
            listaLocais = try context.executeFetchRequest(request) as! [Localizacao]
            print("Total de locais: ", listaLocais.count)
        }catch
            let errou as NSError{
                print(errou)
        }
        return listaLocais
    }
}