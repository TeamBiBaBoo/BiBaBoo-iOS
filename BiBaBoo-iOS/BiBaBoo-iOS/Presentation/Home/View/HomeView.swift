//
//  HomeView.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/06/07.
//

import UIKit

import SnapKit
import Then

final class HomeView: BaseView {
    
    lazy var homeTableView = UITableView().then {
        $0.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        $0.rowHeight = 74
        $0.dataSource = self
        $0.delegate = self
        $0.backgroundColor = .BG
        $0.separatorStyle = .none
    }
    
    override func setUI() {
    }
    
    override func setLayout() {
        self.addSubview(homeTableView)
        
        homeTableView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(15)
            $0.height.equalToSuperview()
            $0.width.equalToSuperview()
        }
    }
}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        return cell
    }
}
