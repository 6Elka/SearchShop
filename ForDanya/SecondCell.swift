//
//  SecondCell.swift
//  ForDanya
//
//  Created by Artem on 08/04/2023.
//

import Foundation
import UIKit

final class SecondCell: UICollectionViewCell {
    
    static let id = "Second"
    
    private let someView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public var like: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "heart")?.withTintColor(.gray, renderingMode: .alwaysOriginal), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let img: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "")
        img.backgroundColor = .black
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
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
        lbl.text = "Белоостровкая улица, 15"
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
    
    private let wrong: UILabel = {
        let lbl = UILabel()
        lbl.text = "Недоступен для заказа"
        lbl.layer.cornerRadius = 10
        lbl.clipsToBounds = true
        lbl.textAlignment = .center
        lbl.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        lbl.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).withAlphaComponent(0.2)
        lbl.font = .systemFont(ofSize: 15, weight: .medium)
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
        addSubview(wrong)
        addSubview(like)
        
        
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo: topAnchor),
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
            
            wrong.topAnchor.constraint(equalTo: km.bottomAnchor, constant: 20),
            wrong.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            wrong.widthAnchor.constraint(equalToConstant: 175),
            wrong.heightAnchor.constraint(equalToConstant: 25),
            
            someView.topAnchor.constraint(equalTo: wrong.bottomAnchor, constant: 10),
            someView.leadingAnchor.constraint(equalTo: leadingAnchor),
            someView.trailingAnchor.constraint(equalTo: trailingAnchor),
            someView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
}
