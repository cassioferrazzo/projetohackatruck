//
//  Foto+CoreDataProperties.swift
//  itree
//
//  Created by Student on 9/29/16.
//  Copyright © 2016 biotruck. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Foto {

    @NSManaged var data: NSDate?
    @NSManaged var nome: String?
    @NSManaged var localizacao: Localizacao?
    @NSManaged var planta: Planta?

}
