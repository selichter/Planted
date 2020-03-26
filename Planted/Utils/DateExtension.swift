//
//  DateExtension.swift
//  Planted
//
//  Created by Sarah Lichter on 3/25/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import Foundation


extension Date {
    init(_ dateString: String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        let date = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:date)
    }
}

extension Date {
    func toString(withFormat format: String = "MMMM d, yyyy") -> String {

        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        dateFormatter.dateFormat = format
        let str = dateFormatter.string(from: self)

        return str
    }
}
