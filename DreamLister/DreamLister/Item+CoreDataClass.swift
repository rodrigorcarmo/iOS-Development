//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Rodrigo on 24/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }
}
