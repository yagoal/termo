//
//  HomeViewModel.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import XCoordinator

final class HomeViewModel {
    
    let router: UnownedRouter<TermoRouter>

    init(router: UnownedRouter<TermoRouter>) {
        self.router = router
    }
    
    func playPressed() {
        print("clicou")
        router.trigger(.game)
    }
}
