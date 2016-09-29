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
    
    static func initData (){
        
        let versao: Versao = VersaoDAO.ultimaVersao()
        if(versao.dadosInseridos == false) {
            
            let formaVida = FormaVida(descricao: "Descrição de arvore", nome: "Arvore")
            FormaVidaDAO.inserir(formaVida)
            let formaVida2 = FormaVida(descricao: "Descrição de arbusto", nome: "Arbusto")
            FormaVidaDAO.inserir(formaVida2)
            let formaVida3 = FormaVida(descricao: "Descrição de erva", nome: "Erva")
            FormaVidaDAO.inserir(formaVida3)
            
            let familia1 = Familia(nome: "Adoxaceae", formaVida: formaVida)
            FamiliaDAO.inserir(familia1)
            let familia2 = Familia(nome: "Anacardiaceae", formaVida: formaVida)
            FamiliaDAO.inserir(familia2)
            
            let familia3 = Familia(nome: "Asteraceae", formaVida: formaVida2)
            FamiliaDAO.inserir(familia3)
            let familia5 = Familia(nome: "Cannabaceae", formaVida: formaVida2)
            FamiliaDAO.inserir(familia5)
            
            let familia4 = Familia(nome: "Balsaminaceae", formaVida: formaVida3)
            FamiliaDAO.inserir(familia4)
            let familia6 = Familia(nome: "Begoniaceae", formaVida: formaVida3)
            FamiliaDAO.inserir(familia6)
            
            
            VersaoDAO.inserir(Versao(versao: 1.0, dadosInseridos: true))
            
        }
    }
    
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