//
//  HomeTopBarView.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/04/05.
//

import UIKit

import Then
import SnapKit

class HomeTopBarView: UIView {
    
    private let containerView: UIView = UIView()
    
    private let stickerImageView: UIImageView = UIImageView().then {
        $0.image = Const.Image.sticker1
    }
    
    private let userNameLabel: UILabel = UILabel().then {
        $0.text = "일이삼사오 님"
        $0.font = .title
        $0.textColor = .black01
    }
    
    private let settingButton: UIButton = UIButton().then {
        $0.setImage(Const.Image.icnSetting, for: .normal)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        
        self.addSubview(containerView)
        
        containerView.addSubviews(
        stickerImageView,
        userNameLabel,
        settingButton
        )
        
        containerView.snp.makeConstraints{
            $0.width.equalToSuperview()
            $0.height.equalTo(44.adjusted)
        }
        
        stickerImageView.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(10.adjusted)
        }
        
        userNameLabel.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(stickerImageView.snp.trailing).offset(5.adjusted)
        }
        
        settingButton.snp.makeConstraints{
            $0.trailing.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
        
    }

}
