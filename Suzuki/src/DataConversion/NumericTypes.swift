//
//  NumericTypes.swift
//  Suzuki
//
//  Created by Shusuke Tokuda on 2016/10/24.
//  Copyright © 2016年 tottokotkd. All rights reserved.
//

import Foundation

extension Double {
    public var toInt: Int {get{return Int(self)}}
}

extension TimeInterval {
    public var toClockData: (hours: Int, minutes: Int, seconds: Int) {
        let value = Int(self)
        let hours = (value / 3600)
        let minutes = (value / 60) % 60
        let seconds = value % 60
        return (hours: hours, minutes: minutes, seconds: seconds)
    }
    public var toTimeData: (days: Int, hours: Int, minutes: Int, seconds: Int) {
        let clock = toClockData
        return (days: clock.hours / 24, hours: clock.hours % 24, minutes: clock.minutes, seconds: clock.seconds)
    }
}
