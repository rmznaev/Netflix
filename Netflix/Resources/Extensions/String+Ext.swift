//
//  String+Ext.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 06.04.22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
