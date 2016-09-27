//
//  Planta+CoreDataProperties.swift
//  itree
//
//  Created by Student on 9/27/16.
//  Copyright © 2016 biotruck. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Planta {

    @NSManaged var observacao: String?
    @NSManaged var plantaEspecie: Especie?
    @NSManaged var plantaFoto: NSSet?

}
