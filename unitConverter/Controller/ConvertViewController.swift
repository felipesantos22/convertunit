//
//  ViewController.swift
//  unitConverter
//
//  Created by Felipe Santos on 28/09/25.
//

import UIKit

class ConvertViewController: UIViewController {
    
    var homeConvertView = HomeConvertView()
    
    override func loadView() {
        view = homeConvertView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Conversor de Unidades"
        navigationController?.navigationBar.prefersLargeTitles = true
        homeConvertView.gramaToKiloButton.addTarget(self, action: #selector(pageGrToKg), for: .touchUpInside)
        homeConvertView.kiloToGramaButton.addTarget(self, action: #selector(pageKgToGr), for: .touchUpInside)
        homeConvertView.miligramToGramaButton.addTarget(self, action: #selector(pageMgToGr), for: .touchUpInside)
        homeConvertView.gramaToMiligramButton.addTarget(self, action: #selector(pageGrToMg), for: .touchUpInside)
        homeConvertView.microgramToMiligramButton.addTarget(self, action: #selector(pageMcgToMg), for: .touchUpInside)
        homeConvertView.miligramaToMicrogramButton.addTarget(self, action: #selector(pageMgToMcg), for: .touchUpInside)
    }
    
    @objc private func pageGrToKg(){
        let grToKgViewController = GrToKgViewController()
        navigationController?.pushViewController(grToKgViewController, animated: true)
    }
    
    @objc private func pageKgToGr(){
        let kgToGrViewController = KgToGrViewController()
        navigationController?.pushViewController(kgToGrViewController, animated: true)
    }
    
    @objc private func pageMgToGr(){
        let mgToGrViewController = MgToGrViewController()
        navigationController?.pushViewController(mgToGrViewController, animated: true)
    }
    
    @objc private func pageGrToMg(){
        let grToMgViewController = GrToMgViewController()
        navigationController?.pushViewController(grToMgViewController, animated: true)
    }
    
    @objc private func pageMcgToMg(){
        let mcgToMgViewController = McgToMgViewController()
        navigationController?.pushViewController(mcgToMgViewController, animated: true)
    }
    
    @objc private func pageMgToMcg(){
        let mgToMcgViewController = MgToMcgViewController()
        navigationController?.pushViewController(mgToMcgViewController, animated: true)
    }
    
    
}

