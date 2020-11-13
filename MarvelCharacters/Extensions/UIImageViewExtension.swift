//
//  UIImageViewExtension.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation
import Kingfisher

extension UIImageView {
    func setImage(with url: URL?) {
        kf.setImage(with: url)
    }
}
