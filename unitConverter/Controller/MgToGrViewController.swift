//
//  MgToGrViewController.swift
//  unitConverter
//
//  Created by Felipe Santos on 28/10/25.
//

import UIKit

class MgToGrViewController: UIViewController {
    
    var convertView = ConvertView()
    
    override func loadView() {
        view = convertView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Mg -> Gr"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = UIColor(named: "background")
        
        convertView.convertButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
    }
    
    @objc private func calculate() {
        guard let text = convertView.textField.text, let mg = Double(text) else { return }
        let gr = mg / 1000
        convertView.resultLabel.text = "\(gr) g"
    }


}
