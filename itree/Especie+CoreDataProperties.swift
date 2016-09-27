//
//  Especie+CoreDataProperties.swift
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

extension Especie {

    @NSManaged var nome: String?
    @NSManaged var nomeAutor: String?
    @NSManaged var nomePopular1: String?
    @NSManaged var nomePopular2: String?
    @NSManaged var especieFamilia: Familia?
    @NSManaged var especiePlanta: Planta?

}
