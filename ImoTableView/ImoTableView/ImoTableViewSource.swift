//
//  ImoTableViewSource.swift
//  ImoTableView
//
//  Created by Borinschi Ivan on 12/5/16.
//  Copyright © 2016 Imodeveloperlab. All rights reserved.
//

import Foundation
import UIKit

open class ImoTableViewSource : NSObject {

    public var staticCell : ImoTableViewCell?
    public var height : CGFloat? 
    public var cellClass : String
    open var nib : UINib?
    
    public init(cellClass:String) {
        
        self.cellClass = cellClass
        super.init()
        
    }
    
}
