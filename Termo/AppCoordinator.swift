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
        super.init(rootViewController: UINavigationController(), initialRoute: .home)
    }

    override func prepareTransition(for route: TermoRouter) -> NavigationTransition {
        switch route {
        case .home:
            let viewModel = HomeViewModel(router: unownedRouter)
            let viewController = HomeViewController(viewModel: viewModel)
            return .push(viewController)
        case .game:
            let viewController = GameViewController()
            return .push(viewController)
        }
    }
}
