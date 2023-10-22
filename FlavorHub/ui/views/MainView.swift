//
//  ViewController.swift
//  FlavorHub
//
//  Created by Samet  Doğan on 18.10.2023.
//

import UIKit
import Kingfisher

class MainView: UIViewController {

    @IBOutlet weak var foodsCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var foodsList = [Foods]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "FlavorHub"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "mainColor")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "writeColor1")!,.font: UIFont(name: "Pacifico-Regular", size: 22)!]
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
       
       
            }
    }

