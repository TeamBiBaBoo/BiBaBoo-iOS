//
//  HomeView.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/04/06.
//

import UIKit

import SnapKit
import Then

final class CategoryView: UIView {
    
    private let containerView: UIView = UIView().then {
        $0.addBottomBorder(with: .black06, andWidth: 0.5)
    }
    
    let flowLayout = UICollectionViewFlowLayout().then {
        $0.scrollDirection = .horizontal
        $0.minimumLineSpacing = 0
        $0.estimatedItemSize = CGSize(width: 46, height: 44)
    }
    
    private lazy var categoryCollectionView = UICollectionView(frame: .zero, collectionViewLayout: self.flowLayout).then {
        $0.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        $0.backgroundColor = .clear
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.isScrollEnabled = true
        $0.showsHorizontalScrollIndicator = false
        $0.dataSource = self
        $0.delegate = self
    }
    
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
            $0.leading.equalToSuperview().offset(15.adjusted)
            $0.height.equalTo(44.adjusted)
        }
    }
}

extension CategoryView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(model: categoryList[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 20.adjusted, height: 44.adjusted)
    }
}
