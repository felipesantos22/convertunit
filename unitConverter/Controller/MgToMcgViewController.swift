//
//  MgToMcgViewController.swift
//  unitConverter
//
//  Created by Felipe Santos on 28/10/25.
//

import UIKit

class MgToMcgViewController: UIViewController {
    
    var convertView = ConvertView()
    
    override func loadView() {
        view = convertView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Mg -> Mcg"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = UIColor(named: "background")
        
    }

}
