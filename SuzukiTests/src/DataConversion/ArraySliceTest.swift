
//
//  SuzukiTests.swift
//  SuzukiTests
//
//  Created by Shusuke Tokuda on 2016/10/24.
//  Copyright © 2016年 tottokotkd. All rights reserved.
//

import XCTest
import Suzuki

class SuzukiTests: XCTestCase {
    
    func testPropToArray() {
        do {
            let hoge = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
            let array = [1, 2, 3, 4, 5]
            let slice = array.dropFirst(2)
            
            XCTAssertEqual([3, 4, 5], slice.toArray)
        }
        do {
            let array = ["a", "b", "c", "d", "e"]
            let slice = array.dropFirst().dropLast()
            
            XCTAssertEqual(["b", "c", "d"], slice.toArray)
        }
        do {
            let array: [Int?] = [1, nil, 3, 4, 5]
            let slice = array.dropFirst().dropLast()
            
            XCTAssertEqual(nil, slice.toArray[0])
            XCTAssertEqual(3, slice.toArray[1])
            XCTAssertEqual(4, slice.toArray[2])
        }
        
        do {
            let array: [Any] = [1, 2, "c", "d", "e"]
            let slice = array.dropFirst().dropLast()
            
            XCTAssertEqual(2, slice.toArray[0] as! Int)
            XCTAssertEqual("c", slice.toArray[1] as! String)
            XCTAssertEqual("d", slice.toArray[2] as! String)
        }

    }
}
