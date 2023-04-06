//
//  HomeView.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/04/06.
//

import UIKit

import SnapKit
import Then

class CategoryView: UIView {
    
    private let containerView: UIView = UIView()
    
    private var categoryCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isScrollEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    var categoryList: [CategoryModel] = [
        CategoryModel(category: "전체"),
        CategoryModel(category: "음식"),
        CategoryModel(category: "쇼핑"),
        CategoryModel(category: "여행"),
        CategoryModel(category: "성장"),
        CategoryModel(category: "문화"),
        CategoryModel(category: "기타")]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        setUI()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func style() {
        self.backgroundColor = .white
    }
    
    private func setUI() {
        self.addSubview(containerView)
        
        containerView.addSubview(categoryCollectionView)
        
        containerView.snp.makeConstraints{
            $0.width.equalToSuperview()
            $0.height.equalTo(44.adjusted)
        }
        
        categoryCollectionView.snp.makeConstraints{
            $0.width.equalToSuperview()
            $0.height.equalToSuperview()
//            $0.bottom.equalToSuperview()
        }
        
    }
    
    
}
