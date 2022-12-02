//
//  SecondOnBoardingView.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/02.
//

import UIKit

final class SecondOnBoardingView: UIView {
    private let contenStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        return stackView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "secondOnBoarding_illust")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.NotoSans.medium, size: 23)
        label.textColor = .handLink_black
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.NotoSans.regular, size: 18)
        label.textColor = .handLink_black
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.setTitle("사용하러 가기", for: .normal)
        button.backgroundColor = .primary
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("Init with coder is unavailable")
    }
    
    private func layout() {
        addSubview(contenStackView)
        
        contenStackView.addArrangedSubview(titleLabel)
        contenStackView.addArrangedSubview(descriptionLabel)
        contenStackView.addArrangedSubview(nextButton)
        
        contenStackView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
