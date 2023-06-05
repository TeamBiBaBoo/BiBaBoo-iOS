//
//  HomeEmptyView.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/06/05.
//

import UIKit

import SnapKit
import Then

final class HomeEmptyView: BaseView {
    
    private let emptyImageView = UIImageView().then {
        $0.image = Const.Image.emptyHome
    }
    
    private let emptyLabel = UILabel().then {
        $0.text = "아직 목표가 없어요\n새로운 목표를 만들어 보세요!"
        $0.textColor = .black04
        $0.font = .tabBarDefault
        $0.numberOfLines = 2
        $0.textAlignment = .center
    }
    
    override func setUI() {
        self.backgroundColor = .BG
    }
    
    override func setLayout() {
        self.addSubviews(
        emptyImageView,
        emptyLabel
        )
        
        self.snp.makeConstraints{
            $0.height.equalTo(UIScreen.main.bounds.height).offset(-214)
            $0.width.equalTo(UIScreen.main.bounds.width)
        }
        
        emptyImageView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(179)
            $0.centerX.equalToSuperview()
        }
        
        emptyLabel.snp.makeConstraints{
            $0.top.equalTo(emptyImageView.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
        }
    }
}
