//
//  AppCoordinator.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import RxSwift
import XCoordinator

enum UserListRoute: Route {
    case home
}

class AppCoordinator: NavigationCoordinator<UserListRoute> {
    init() {
        super.init(initialRoute: .home)
    }

    override func prepareTransition(for route: UserListRoute) -> NavigationTransition {
        switch route {
        case .home:
            let viewController = HomeViewController()
            return .push(viewController)

        }
    }
}
