//
//  ConvertView.swift
//  unitConverter
//
//  Created by Felipe Santos on 29/09/25.
//

import UIKit

final class HomeConvertView: UIView {
    
    // MARK: - UI Components
    
    lazy var gramaToKiloButton: UIButton = makeButton(title: "GR -> KG")
    lazy var kiloToGramaButton: UIButton = makeButton(title: "KG -> GR")
    lazy var gramaToMiligramButton: UIButton = makeButton(title: "GR -> MG")
    lazy var miligramToGramaButton: UIButton = makeButton(title: "MG -> GR")
    lazy var miligramaToMicrogramButton: UIButton = makeButton(title: "MG -> MCG")
    lazy var microgramToMiligramButton: UIButton = makeButton(title: "MCG -> MG")
    
    // StackViews horizontais
    private lazy var topStack = makeHorizontalStack([gramaToKiloButton, kiloToGramaButton])
    private lazy var middleStack = makeHorizontalStack([gramaToMiligramButton, miligramToGramaButton])
    private lazy var bottomStack = makeHorizontalStack([miligramaToMicrogramButton, microgramToMiligramButton])
    
    // StackView vertical principal
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [topStack, middleStack, bottomStack])
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "background")
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    private func configureUI() {
        addSubview(mainStack)
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            mainStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            mainStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            mainStack.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -20)
        ])
        
        let buttons = [
            gramaToKiloButton, kiloToGramaButton,
            gramaToMiligramButton, miligramToGramaButton,
            miligramaToMicrogramButton, microgramToMiligramButton
        ]
        
        buttons.forEach { button in
            button.heightAnchor.constraint(equalTo: button.widthAnchor).isActive = true
        }
    }
    
    // MARK: - Helpers
    
    private func makeButton(title: String, background: UIColor = UIColor(named: "button") ?? .blue) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = background
        button.layer.cornerRadius = 8
        button.titleLabel?.numberOfLines = 1
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.8
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return button
    }
    
    private func makeHorizontalStack(_ views: [UIView]) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }
}
