//
//  HomeViewController.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/04/05.
//

import UIKit

import SnapKit
import Then

final class HomeViewController: UIViewController {
    
    let homeTopBarView = HomeTopBarView()
    
    let categoryView = CategoryView()
    
    let homeEmptyView = HomeEmptyView()
    
    let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        setLayout()
    }
}

extension HomeViewController {
    private func style() {
        view.backgroundColor = .white
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setLayout() {
        view.addSubviews(
        homeTopBarView,
        homeEmptyView,
        categoryView,
        homeView
        )
        
        homeTopBarView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(44)
            $0.width.equalToSuperview()
        }
        
        categoryView.snp.makeConstraints{
            $0.top.equalTo(homeTopBarView.snp.bottom)
            $0.width.equalToSuperview()
            $0.height.equalTo(44)
        }
        
        homeView.snp.makeConstraints{
            $0.top.equalTo(categoryView.snp.bottom)
//            $0.height.equalToSuperview().offset(-214)
            $0.bottom.equalToSuperview().offset(-82)
            $0.width.equalToSuperview()
        }
        
//        homeEmptyView.snp.makeConstraints{
//            $0.top.equalTo(categoryView.snp.bottom)
//            $0.height.equalToSuperview().offset(-214)
//            $0.width.equalToSuperview()
//        }
    }
}
