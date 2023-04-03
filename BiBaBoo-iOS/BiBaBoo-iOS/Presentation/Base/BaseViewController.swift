//
//  BaseViewController.swift
//  BiBaBoo-iOS
//
//  Created by 정채은 on 2023/03/30.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setNavigationBar()
    }
    
    func style() {
        view.backgroundColor = .white
    }
    
    func setNavigationBar() {
//        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
