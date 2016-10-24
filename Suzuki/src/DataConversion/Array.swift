//
//  Array.swift
//  Suzuki
//
//  Created by Shusuke Tokuda on 2016/10/24.
//  Copyright © 2016年 tottokotkd. All rights reserved.
//

import Foundation

extension Array {
    public func forAll (where w: (Element) throws -> Bool) rethrows -> Bool {
        return try !self.contains(where: {try !w($0)})
    }
    public var hasValue: Bool {return count > 0}
}
