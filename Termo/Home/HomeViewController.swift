//
//  ViewController.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import RxSwift
import TinyConstraints
import UIKit
import XCoordinator

class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModel
    private lazy var rootView = HomeView(onTapGame: { [weak self] in self?.viewModel.playPressed() } )
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.backgroundColor = .brown
        self.title = "Termo"
        super.viewDidLoad()
    }
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

