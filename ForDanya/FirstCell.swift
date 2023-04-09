//
//  FirstCell.swift
//  ForDanya
//
//  Created by Artem on 08/04/2023.
//

import Foundation
import UIKit

final class FirstCell: UICollectionViewCell {
    
    static let id = "First"
    
    private let someView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let img: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "")
        img.backgroundColor = .black
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    public var like: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "heart")?.withTintColor(.gray, renderingMode: .alwaysOriginal), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let mainLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.text = "Магазин Улыбка радуги"
        lbl.font = .systemFont(ofSize: 16, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let city: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.text = "Санкт-Петербург"
        lbl.font = .systemFont(ofSize: 14, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    public var nameStreet: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.text = "Белоостровкая улица, 10к1"
        lbl.font = .systemFont(ofSize: 17, weight: .regular)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let nameMetro: UILabel = {
        let lbl = UILabel()
        lbl.text = "Чернышевская"
        lbl.textColor = .gray
        lbl.font = .systemFont(ofSize: 16, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let km: UILabel = {
        let lbl = UILabel()
        lbl.text = "2,1 км"
        lbl.textColor = .gray
        lbl.font = .systemFont(ofSize: 16, weight: .medium)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let imgMetro: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "")
        img.backgroundColor = .black
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    private let imgKM: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "")
        img.backgroundColor = .black
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        backgroundColor = .white
        
        addSubview(img)
        addSubview(mainLabel)
        addSubview(city)
        addSubview(nameStreet)
        addSubview(imgMetro)
        addSubview(imgKM)
        addSubview(nameMetro)
        addSubview(km)
        addSubview(someView)
        addSubview(like)
        
        
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            img.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            img.widthAnchor.constraint(equalToConstant: 20),
            img.heightAnchor.constraint(equalToConstant: 20),
            
            mainLabel.leadingAnchor.constraint(equalTo: img.trailingAnchor, constant: 20),
            mainLabel.centerYAnchor.constraint(equalTo: img.centerYAnchor),
            
            like.centerYAnchor.constraint(equalTo: mainLabel.centerYAnchor),
            like.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            city.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 10),
            city.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            nameStreet.topAnchor.constraint(equalTo: city.bottomAnchor, constant: 10),
            nameStreet.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            imgMetro.topAnchor.constraint(equalTo: nameStreet.bottomAnchor, constant: 10),
            imgMetro.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imgMetro.widthAnchor.constraint(equalToConstant: 20),
            imgMetro.heightAnchor.constraint(equalToConstant: 20),
            
            imgKM.topAnchor.constraint(equalTo: imgMetro.bottomAnchor, constant: 10),
            imgKM.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imgKM.widthAnchor.constraint(equalToConstant: 20),
            imgKM.heightAnchor.constraint(equalToConstant: 20),
            
            nameMetro.centerYAnchor.constraint(equalTo: imgMetro.centerYAnchor),
            nameMetro.leadingAnchor.constraint(equalTo: imgMetro.trailingAnchor, constant: 20),
            
            km.centerYAnchor.constraint(equalTo: imgKM.centerYAnchor),
            km.leadingAnchor.constraint(equalTo: imgKM.trailingAnchor, constant: 20),
            
            someView.topAnchor.constraint(equalTo: km.bottomAnchor, constant: 20),
            someView.leadingAnchor.constraint(equalTo: leadingAnchor),
            someView.trailingAnchor.constraint(equalTo: trailingAnchor),
            someView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
}
