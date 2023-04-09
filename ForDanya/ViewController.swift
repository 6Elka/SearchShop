//
//  ViewController.swift
//  ForDanya
//
//  Created by Artem on 08/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let btn = UIButton()
        btn.setTitle("TAP", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16)
        btn.setTitleColor(.black, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(changeWindow), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    @objc private func changeWindow() {
        present(UINavigationController(rootViewController: ShopViewController()), animated: true)
    }

}

