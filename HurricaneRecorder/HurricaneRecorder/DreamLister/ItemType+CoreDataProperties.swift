//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Rex Kung on 11/28/17.
//  Copyright © 2017 Rex Kung. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
