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

    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        setLayout()
    }
}

extension HomeViewController {
    private func style() {
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        view.addSubviews(
        homeTopBarView
        )
        
        homeTopBarView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(44)
            $0.width.equalToSuperview()
        }
    }
}
