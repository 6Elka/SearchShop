//
//  WordsCell.swift
//  ForDanya
//
//  Created by Artem on 09/04/2023.
//

import Foundation
import UIKit

final class WordsCell: UICollectionViewCell {
    
    static let id = "Words"
    
    public var textLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 20, weight: .medium)
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        ])
    }
}
