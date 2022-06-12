//
//  HomeView.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import TinyConstraints
import UIKit

final class HomeView: UIView {
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 24.0
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Termo é um jogo onde você tenta acertar palavras com 5 letras, a partir da primeira tentativa letrar no lugar certo ficam em verde, no lugar errado ficam amarelas e que não existem na palavra ficam em vermelho"
        label.font = UIFont (name: "Noteworthy-Bold", size: 30)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var buttonPlay: UIButton = {
        let button = UIButton ()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 50)
        button.setTitle("Jogar", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.backgroundColor = .systemBlue
//        button.addTarget(self, action: #selector(playAgain), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonPlay2: UIButton = {
        let button = UIButton ()
        button.titleLabel?.font = UIFont(name: "Noteworthy-Bold", size: 50)
        button.setTitle("Jogar", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
        button.backgroundColor = .systemBlue
//        button.addTarget(self, action: #selector(playAgain), for: .touchUpInside)
        return button
    }()
    
    func setupViews() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(buttonPlay)
        addSubview(stackView)
        stackView.edgesToSuperview(
            insets: .uniform(30),
            usingSafeArea: true
        )
    }
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
