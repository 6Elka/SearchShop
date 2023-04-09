//
//  ShopViewController.swift
//  ForDanya
//
//  Created by Artem on 08/04/2023.
//

import Foundation
import UIKit

final class ShopViewController: UIViewController {
    
    //MARK: - UI
    private var collectionView: UICollectionView!
    private let searchController = UISearchController(searchResultsController: nil)
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else {return false}
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive
    }
    
    private var words = ["Белоостровская", "Ломоносова"]
    
    //MARK: - Life Cycle
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        
    }
    
    //MARK: - Initialize
    private func initialize() {
        title = "Поиск пункта выдачи"
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createCompositionalLayout())
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(FirstCell.self, forCellWithReuseIdentifier: FirstCell.id)
        collectionView.register(SecondCell.self, forCellWithReuseIdentifier: SecondCell.id)
        collectionView.register(ThirdCell.self, forCellWithReuseIdentifier: ThirdCell.id)
        collectionView.register(WordsCell.self, forCellWithReuseIdentifier: WordsCell.id)
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.id)
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(back))
    }
    @objc private func back() {
        print("BAck")
        navigationController?.popToRootViewController(animated: true)
    }
    
    //MARK: - CompositionalLayout
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout { index, environment in
            self.createSection(index: index, environment: environment)
        }
        return layout
    }
    
    private func createSection(index: Int, environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
            switch index {
            case 0:
                return createFirstSection()
            case 1:
                return createSecondSection()
            case 2:
                return createAnotherSection()
            default:
               return createFirstSection()
            }
        }
    
    
    private func createFirstSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(200)))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(600)), subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(70))
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        section.boundarySupplementaryItems = [header]
        return section
    }
    private func createSecondSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(220)))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(660)), subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(70))
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        section.boundarySupplementaryItems = [header]
        return section
    }
    
    private func createAnotherSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(220)))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(660)), subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(70))
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        section.boundarySupplementaryItems = [header]
        return section
    }
}

//MARK: - UICollectionViewDelegate / UICollectionViewDataSource
extension ShopViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0: return 3
        case 1: return 3
        case 2: return 3
        default: return 3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCell.id, for: indexPath) as! FirstCell
                cell.like.setImage(UIImage(systemName: "heart.fill")?.withTintColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), renderingMode: .alwaysOriginal), for: .normal)
                return cell
            case 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondCell.id, for: indexPath) as! SecondCell
                cell.like.setImage(UIImage(systemName: "heart.fill")?.withTintColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), renderingMode: .alwaysOriginal), for: .normal)
                return cell
            case 2:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdCell.id, for: indexPath)
                return cell
            default: return UICollectionViewCell()
            }
        case 1, 2:
            switch indexPath.row {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCell.id, for: indexPath) as! FirstCell
                cell.nameStreet.text = "Ломоносовский проспект, д. 90"
                return cell
            case 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondCell.id, for: indexPath) as! SecondCell
                cell.nameStreet.text = "Ломоносовский проспект, д. 90"
                return cell
            case 2:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdCell.id, for: indexPath) as! ThirdCell
                cell.nameStreet.text = "Ломоносовский проспект, д. 90"
                return cell
            default: return UICollectionViewCell()
            }
        default: return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.id, for: indexPath) as! HeaderView
        switch indexPath.section {
        case 0:
            
            view.title.text = "Результат поиска"
            view.someView.backgroundColor = .clear
            
        case 1:
            view.title.text = "Ранее искали"
            
        case 2:
            view.title.text = "Остальные рядом"
            view.someView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1).withAlphaComponent(0.6)
        default:
            title = ""
        }
        return view
    }
}

//MARK: - UISearchResultsUpdating
extension ShopViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
    
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
        print(words)
    }
    
    
    
    
}
