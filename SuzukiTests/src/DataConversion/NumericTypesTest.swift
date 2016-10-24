//
//  NumericTypesTest.swift
//  Suzuki
//
//  Created by Shusuke Tokuda on 2016/10/24.
//  Copyright © 2016年 tottokotkd. All rights reserved.
//

import XCTest

class DoubleTest: XCTestCase {
    func testPropToInt() {
        do {
            let value = 2.0
            XCTAssertEqual(2, value.toInt)
        }
        do {
            let value = 2.1
            XCTAssertEqual(2, value.toInt)
        }
        do {
            let value = 2.99
            XCTAssertEqual(2, value.toInt)
        }
        do {
            let value = -3.0
            XCTAssertEqual(-3, value.toInt)
        }
        do {
            let value = -3.1
            XCTAssertEqual(-3, value.toInt)
        }
        do {
            let value = -3.99
            XCTAssertEqual(-3, value.toInt)
        }
    }
}

class TimeIntervalTest: XCTestCase {
    func testPropToClockData() {
        do {
            let value = TimeInterval(12)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(0, h)
            XCTAssertEqual(0, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(72)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(0, h)
            XCTAssertEqual(1, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(3600 + 372)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(1, h)
            XCTAssertEqual(6, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(3600 * 52 + 72)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(52, h)
            XCTAssertEqual(1, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(-12)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(0, h)
            XCTAssertEqual(0, m)
            XCTAssertEqual(-12, s)
        }
        do {
            let value = TimeInterval(-72)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(0, h)
            XCTAssertEqual(-1, m)
            XCTAssertEqual(-12, s)
        }
        do {
            let value = TimeInterval(-3600 - 372)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(-1, h)
            XCTAssertEqual(-6, m)
            XCTAssertEqual(-12, s)
        }
        do {
            let value = TimeInterval(-3600 * 52 - 72)
            let (h, m, s) = value.toClockData
            XCTAssertEqual(-52, h)
            XCTAssertEqual(-1, m)
            XCTAssertEqual(-12, s)
        }
    }
    func testPropToTimeData() {
        do {
            let value = TimeInterval(12)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(0, d)
            XCTAssertEqual(0, h)
            XCTAssertEqual(0, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(72)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(0, d)
            XCTAssertEqual(0, h)
            XCTAssertEqual(1, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(3600 + 372)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(0, d)
            XCTAssertEqual(1, h)
            XCTAssertEqual(6, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(3600 * 52 + 72)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(2, d)
            XCTAssertEqual(4, h)
            XCTAssertEqual(1, m)
            XCTAssertEqual(12, s)
        }
        do {
            let value = TimeInterval(-12)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(0, d)
            XCTAssertEqual(0, h)
            XCTAssertEqual(0, m)
            XCTAssertEqual(-12, s)
        }
        do {
            let value = TimeInterval(-72)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(0, d)
            XCTAssertEqual(0, h)
            XCTAssertEqual(-1, m)
            XCTAssertEqual(-12, s)
        }
        do {
            let value = TimeInterval(-3600 - 372)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(0, d)
            XCTAssertEqual(-1, h)
            XCTAssertEqual(-6, m)
            XCTAssertEqual(-12, s)
        }
        do {
            let value = TimeInterval(-3600 * 52 - 72)
            let (d, h, m, s) = value.toTimeData
            XCTAssertEqual(-2, d)
            XCTAssertEqual(-4, h)
            XCTAssertEqual(-1, m)
            XCTAssertEqual(-12, s)
        }
    }
}
