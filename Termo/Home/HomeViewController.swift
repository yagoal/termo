//
//  ViewController.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import TinyConstraints
import UIKit

class HomeViewController: UIViewController {
    
    let rootView = HomeView()
    
    override func loadView() {
         view = rootView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .systemGreen
        self.title = "Termo"
        super.viewDidLoad()
        
    }

}

