//
//  GrToMgViewController.swift
//  unitConverter
//
//  Created by Felipe Santos on 28/10/25.
//

import UIKit

class GrToMgViewController: UIViewController {
    
    var convertView = ConvertView()
    
    override func loadView() {
        view = convertView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Gr -> Mg"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = UIColor(named: "background")
        
        convertView.convertButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
    }
    
    @objc private func calculate() {
        guard let text = convertView.textField.text, let gr = Double(text) else { return }
        let mg = gr * 1000
        convertView.resultLabel.text = "\(mg) mg"
    }
    
    
}
