//
//  HomeViewController.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2023/02/03.
//

import UIKit
import SnapKit
import RxSwift

final class HomeViewController: UIViewController {
    private let disposeBag = DisposeBag()
    private var viewModel: HomeViewModelProtocol?
    
    convenience init(viewModel: HomeViewModelProtocol) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = true
        
        layout()
        bind()
    }
    
    private func layout() {}
    
    private func bind() {}
    
}
