//
//  ReusableView.swift
//  MarvelHeroes
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import UIKit

protocol Reusable: class {}

extension Reusable where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
