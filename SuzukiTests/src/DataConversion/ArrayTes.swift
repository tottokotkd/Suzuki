//
//  ArrayTes.swift
//  Suzuki
//
//  Created by Shusuke Tokuda on 2016/10/24.
//  Copyright © 2016年 tottokotkd. All rights reserved.
//

import XCTest
import Suzuki

class ArrayTes: XCTestCase {
    
    func testFuncForAll() {
        do {
            let array = [1, 2, 3, 4, 5]
            XCTAssert(array.forAll(where: {$0 != 6}))
        }
        do {
            let array = [1, 2, 3, 4, 5]
            XCTAssertFalse(array.forAll(where: {$0 != 1}))
        }
    }
    
    func testPropHasValue() {
        do {
            let array = [1, 2, 3, 4, 5]
            XCTAssert(array.hasValue)
        }
        do {
            let array: [Int] = []
            XCTAssertFalse(array.hasValue)
        }
    }
    
}
