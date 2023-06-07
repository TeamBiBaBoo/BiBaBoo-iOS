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
    
    lazy var categoryButton = UIButton().then {
        $0.setTitle("전체", for: .normal)
        $0.titleLabel!.textAlignment = .center
        $0.titleEdgeInsets = .init(top: 6, left: 10, bottom: 6, right: 10)
        
        $0.layer.cornerRadius = 15
        $0.layer.masksToBounds = true
        $0.clipsToBounds = true
        $0.layer.layoutIfNeeded()
//        $0.makeRounded(radius: 20)
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        $0.backgroundColor = .clear
        $0.setTitleColor(.black04, for: .normal)
        $0.titleLabel!.font = .tabBarDefault

        $0.addTarget(self, action: #selector(categoryButtonTapped), for: .touchUpInside)
    }
    
    var isTapped : Bool = false
    
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
        contentView.addSubview(categoryButton)
        
        contentView.snp.makeConstraints{
            $0.width.equalTo(46.adjusted)
            $0.height.equalTo(44.adjusted)
        }
        
//        contentView.snp.makeConstraints{
//            $0.width.height.equalToSuperview()
//        }
        
        categoryButton.snp.makeConstraints{
            $0.width.equalTo(46)
            $0.height.equalTo(28)
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    func dataBind(model: CategoryModel) {
        categoryButton.setTitle(model.category, for: .normal)
    }
    
    @objc
    private func categoryButtonTapped() {
        
        if isTapped == true {
            categoryButton.backgroundColor = .clear
            categoryButton.setTitleColor(.black04, for: .normal)
            categoryButton.titleLabel!.font = .tabBarDefault
        } else {
            categoryButton.backgroundColor = .blue
            categoryButton.setTitleColor(.white, for: .normal)
            categoryButton.titleLabel!.font = .boldSystemFont(ofSize: 14)
        }
        isTapped.toggle()
    }
    
}
