//
//  NavigationDelegate.swift
//  MarvelCharacters
//
//  Created by Emili   on 13/11/2020.
//  Copyright © 2020 appdevelopment.es All rights reserved.
//

import Foundation

class NavigationDelegate: NSObject, UINavigationControllerDelegate {

    let transitionController: TransitionController

    init(withTransitionController transitionController: TransitionController = TransitionController()) {
        self.transitionController = transitionController
    }

    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transitionController
    }
}
