//
//  AppCoordinator.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import RxSwift
import XCoordinator

enum TermoRouter: Route {
    case home
    case game
}

class AppCoordinator: NavigationCoordinator<TermoRouter> {
    init() {
        super.init(initialRoute: .home)
    }

    override func prepareTransition(for route: TermoRouter) -> NavigationTransition {
        switch route {
        case .home:
            let viewController = HomeViewController()
            return .push(viewController)
        case .game:
            let viewController = GameViewController()
            return .present(viewController)
        }
    }
}
