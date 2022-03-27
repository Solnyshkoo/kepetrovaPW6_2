//
//  ViewController.swift
//  kepetrovaPW6
//
//  Created by Ksenia Petrova on 20.11.2021.
//

import UIKit
import Framework
import MyLogger2
import MyLogger3

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
       
        // Do any additional setup after loading the view.
    }
    
    private func setupButtons(){
        let titles = ["Log (framework)", "Log (swift package)", "Log (pod)", "Log (carthage)" ]
        var  height = Int(view.center.y) - 100
        for n in 0...3 {
            let button = UIButton()
            button.setTitleColor(UIColor.systemRed, for: .normal)
            button.setTitle(titles[n], for: .normal)
            
            view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false;
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(height)).isActive = true
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor ).isActive = true
            button.heightAnchor.constraint(equalToConstant: 50).isActive = true
            button.widthAnchor.constraint(equalToConstant: 300).isActive = true
            button.addTarget(self, action: #selector(activate(sender: )), for: .touchUpInside)
            height = height + 40
        }
    }
    @objc func activate(sender: UIButton) {
        switch(sender.titleLabel?.text) {
        case "Log (framework)":
            MyLogger1.log("hello, world")
        case "Log (swift package)":
            MyLogger2.log("hello, world")
        case "Log (pod)":
            MyLogger3.log("hello, world")
        case .none: break
            
        case .some(_): break
            
        }
        
    }
    
}

