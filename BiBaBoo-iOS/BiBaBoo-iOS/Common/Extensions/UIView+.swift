//
//  UIView+.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/03/30.
//

import UIKit.UIView

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }

    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    var borderColor: UIColor {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }

    public func makeRounded(radius: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }


    public func makeColorRounded(_ radius: CGFloat, _ width: CGFloat, _ color: UIColor) {
        self.makeRounded(radius: radius)
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
    public func addBottomBorder(with color: UIColor?, andWidth borderWidth: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        border.frame = CGRect(x: 0, y: frame.height, width: self.frame.width, height: borderWidth)
        self.addSubview(border)
    }
}
