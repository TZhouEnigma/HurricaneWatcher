//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Rex Kung on 11/28/17.
//  Copyright © 2017 Rex Kung. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
}
