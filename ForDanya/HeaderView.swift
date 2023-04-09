//
//  HeaderVIew.swift
//  ForDanya
//
//  Created by Artem on 09/04/2023.
//

import Foundation
import UIKit

final class HeaderView: UICollectionReusableView {
    
    static let id = "HeaderCell"
    public var title: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .systemFont(ofSize: 20, weight: .bold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    var someView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).withAlphaComponent(0.4)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    private func initialize() {
        self.addSubview(someView)
        self.addSubview(title)
        
        NSLayoutConstraint.activate([
            someView.topAnchor.constraint(equalTo: topAnchor),
            someView.leadingAnchor.constraint(equalTo: leadingAnchor),
            someView.trailingAnchor.constraint(equalTo: trailingAnchor),
            someView.heightAnchor.constraint(equalToConstant: 20),
            
            title.topAnchor.constraint(equalTo: someView.bottomAnchor, constant: 20),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
