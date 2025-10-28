//
//  ConvertView.swift
//  unitConverter
//
//  Created by Felipe Santos on 28/10/25.
//

import UIKit

class ConvertView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "background")
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
        return label
    }()
    
    lazy var convertButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Converter", for: .normal)
        button.backgroundColor = UIColor(named: "button")
        button.tintColor = .black
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return button
    }()

    
    private func setup() {
        
        [textField, resultLabel, convertButton].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            textField.heightAnchor.constraint(equalToConstant: 50),
            
            resultLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
            resultLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            convertButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 20),
            convertButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            convertButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            convertButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        
    }
    
}
