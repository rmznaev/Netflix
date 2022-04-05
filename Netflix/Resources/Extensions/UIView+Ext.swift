//
//  UIView+Ext.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 02.04.22.
//

import UIKit

extension UIView {
    func addGradietColor(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        layer.insertSublayer(gradientLayer, at: 0)
   }
}
