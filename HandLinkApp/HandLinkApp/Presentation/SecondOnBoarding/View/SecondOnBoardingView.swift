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
        stackView.spacing = 40
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
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .handLink_black
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.NotoSans.regular, size: 16)
        label.textColor = .handLink_black
        return label
    }()
    
    let nextButton: UIButton = {
        let config = UIButton.customConfiguration("사용하러 가기", Font.SCDream.scDream6, 14, .white)
        let button = UIButton(configuration: config)
        button.clipsToBounds = true
        button.layer.cornerRadius = 25
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
        
        contenStackView.addArrangedSubview(imageView)
        contenStackView.addArrangedSubview(titleLabel)
        contenStackView.addArrangedSubview(descriptionLabel)
        contenStackView.addArrangedSubview(nextButton)
        
        nextButton.snp.makeConstraints {
            $0.width.equalTo(220)
            $0.height.equalTo(50)
        }
        
        imageView.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(150)
        }
        
        contenStackView.setCustomSpacing(10, after: titleLabel)
        
        contenStackView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
