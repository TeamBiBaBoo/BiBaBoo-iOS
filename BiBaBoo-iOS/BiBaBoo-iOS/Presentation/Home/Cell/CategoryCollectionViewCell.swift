//
//  CategoryCollectionViewCell.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/04/06.
//

import UIKit

import Then
import SnapKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CategoryCollectionViewCell"
    
    private let titleLabel: UILabel = UILabel().then {
        $0.font = .tabBarDefault
        $0.textColor = .black04
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        setUI()
    }
    
    required init(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func style() {
        self.backgroundColor = .clear
        contentView.backgroundColor = .clear
    }
    
    private func setUI() {
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    func dataBind(model: CategoryModel) {
        titleLabel.text = model.category
        }
    
}
