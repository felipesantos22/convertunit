//
//  McgToMgViewController.swift
//  unitConverter
//
//  Created by Felipe Santos on 28/10/25.
//

import UIKit

class McgToMgViewController: UIViewController {
    
    var convertView = ConvertView()
    
    override func loadView() {
        view = convertView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Mcg -> Mg"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = UIColor(named: "background")
        
        convertView.convertButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
    }
    
    @objc private func calculate() {
        guard let text = convertView.textField.text, let mcg = Double(text) else { return }
        let gr = mcg / 1_000_000
        convertView.resultLabel.text = "\(gr) g"
    }
    
    
}
