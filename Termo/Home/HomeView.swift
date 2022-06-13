//
//  HomeView.swift
//  Termo
//
//  Created by Yago Pereira on 12/06/22.
//

import TinyConstraints
import UIKit

final class HomeView: UIView {
    
    private let onTapGame: () -> Void
    
    @objc private func onTapped () {
        onTapGame()
    }
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.backgroundColor = .systemGreen
        stackView.axis = .vertical
        stackView.spacing = 24.0
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Termo é um jogo onde você tenta acertar palavras com 5 letras, a partir da primeira tentativa letrar no lugar certo ficam em verde, no lugar errado ficam amarelas e que não existem na palavra ficam em vermelho"
        label.font = UIFont (name: "Noteworthy-Bold", size: 30)
        label.bo
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
        button.addTarget(self, action: #selector(onTapped), for: .touchUpInside)
        return button
    }()
    
    func setupViews() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(buttonPlay)
        addSubview(stackView)
        stackView.edgesToSuperview(
            insets: .horizontal(30),
            usingSafeArea: true
        )
    }
    
    init(onTapGame: @escaping () -> Void) {
        self.onTapGame = onTapGame
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
