//
//  BaseView.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/06/05.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {}
    func setLayout() {}
}
