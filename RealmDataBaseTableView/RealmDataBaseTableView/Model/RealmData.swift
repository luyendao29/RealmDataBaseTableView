//
//  RealmData.swift
//  RealmDataBaseTableView
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import Foundation
import RealmSwift

class Student: Object{
        @objc dynamic var studentName = ""
        @objc dynamic var studentAge = ""
        @objc dynamic var country = ""
    
}
