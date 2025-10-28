//
//  GrToKgViewController.swift
//  unitConverter
//
//  Created by Felipe Santos on 30/09/25.
//

import UIKit

class GrToKgViewController: UIViewController {
    
    var convertView = ConvertView()
    
    override func loadView() {
        view = convertView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Gr -> Kg"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = UIColor(named: "background")
        
        convertView.convertButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
    
    }
    
    @objc private func calculate() {
        guard let text = convertView.textField.text, let gr = Double(text) else { return }
        let kg = gr / 1000
        convertView.resultLabel.text = "\(kg) kg"
    }
    
}
