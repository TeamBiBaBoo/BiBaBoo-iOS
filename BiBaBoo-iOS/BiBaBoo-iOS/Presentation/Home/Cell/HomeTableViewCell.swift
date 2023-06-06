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
    
    private let checkButton = UIButton().then {
        $0.setImage(Const.Image.icnCheckBox, for: .normal)
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "부산 여행가기"
    }
    
    private let yearLabel = UILabel().then {
        $0.text = "다음 해"
    }
    
    private let pieceLabel = UILabel().then {
        $0.text = "두 번째 조각까지"
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
        self.addSubviews(
        checkButton,
        titleLabel)
    }
}
