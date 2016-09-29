//
//  VersaoDAO.swift
//  itree
//
//  Created by Student on 9/29/16.
//  Copyright © 2016 biotruck. All rights reserved.
//
import Foundation
import CoreData
import UIKit

class VersaoDAO {
    
    static func ultimaVersao() -> Versao {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var listaVersoes: [Versao]?
        var versao: Versao = Versao(versao: 0.0, dadosInseridos: false)
        
        let request = NSFetchRequest(entityName: "Versao")
        request.sortDescriptors = [NSSortDescriptor.init(key: "versao", ascending: true )]
        do{
            listaVersoes = try context.executeFetchRequest(request) as? [Versao]
            
            if listaVersoes?.count > 0 {
                versao = listaVersoes!.first!
            }
        }catch
            let errou as NSError{
                print(errou)
        }
        return versao
    }
    
    
    
    static func inserir(versao: Versao){
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        context.insertObject(versao)
        
        do{
            try context.save()
            print("Salvo")
        }catch
            let errou as NSError{
                print(errou)
        }
    }
}