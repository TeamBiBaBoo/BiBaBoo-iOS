//
//  HomeTableViewCell.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/06/05.
//

import UIKit

import SnapKit
import Then

final class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeTableViewCell"
    
    private let contentsView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOpacity = 1
        $0.layer.shadowRadius = 4
        $0.layer.shadowOffset = CGSize(width: 0, height: 2)
        $0.makeRounded(radius: 20)
    }
    
    private let checkButton = UIButton().then {
        $0.setImage(Const.Image.icnCheckBox, for: .normal)
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "부산 여행가기"
        $0.font = UIFont(name: "Pretendard-Semibold", size: 16)
        $0.textColor = .black02
    }
    
    private let yearLabel = UILabel().then {
        $0.text = "다음 해"
        $0.font = UIFont(name: "Pretendard-Regular", size: 12)
        $0.textColor = .black03
    }
    
    private let yearView = UIView().then {
        $0.backgroundColor = .black08
        $0.makeRounded(radius: 2)
    }
    
    private let pieceLabel = UILabel().then {
        $0.text = "두 번째 조각까지"
        $0.font = UIFont(name: "Pretendard-Regular", size: 12)
        $0.textColor = .black03
    }
    
    private let pieceView = UIView().then {
        $0.backgroundColor = .black08
        $0.makeRounded(radius: 2)
    }
    
    private let categoryImageView = UIImageView().then {
        $0.image = Const.Image.icnTravel
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeTableViewCell {
    private func setUI() {
        self.backgroundColor = .white
    }
    
    private func setLayout() {
        
        self.addSubview(contentsView)
        
        contentsView.snp.makeConstraints{
            $0.height.equalTo(64.adjusted)
            $0.leading.trailing.equalToSuperview().inset(15)
            $0.top.equalToSuperview()
        }
        
        contentsView.addSubviews(
        checkButton,
        titleLabel,
        yearView,
        pieceView,
        categoryImageView)
        
        yearView.addSubviews(yearLabel)
        pieceView.addSubviews(pieceLabel)
        
        checkButton.snp.makeConstraints{
            $0.width.height.equalTo(16)
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(20)
        }
        
        titleLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(12)
            $0.leading.equalTo(checkButton.snp.trailing).offset(15)
            $0.height.equalTo(20)
        }
        
        yearView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(2)
            $0.leading.equalTo(titleLabel)
        }
                
        yearLabel.snp.makeConstraints{
            $0.top.bottom.equalToSuperview().inset(2)
            $0.leading.trailing.equalToSuperview().inset(4)
        }
        
        pieceView.snp.makeConstraints{
            $0.top.equalTo(yearView)
            $0.leading.equalTo(yearView.snp.trailing).offset(2)
        }
        
        pieceLabel.snp.makeConstraints{
            $0.top.bottom.equalToSuperview().inset(2)
            $0.leading.trailing.equalToSuperview().inset(4)
        }
        
        categoryImageView.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(15)
        }
    }
}
