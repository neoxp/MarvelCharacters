//
//  UIViewExtension.swift
//  POCView
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }

    func fillSuperview() {
        guard let superview = superview else { return }
        active([
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            topAnchor.constraint(equalTo: superview.topAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }

    func active(_ constraints: [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
    }
}
