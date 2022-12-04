//
//  FirstOnboardingView.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/28.
//

import UIKit

final class FirstOnBoardingView: UIView {
    private let contenStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 40
        stackView.alignment = .center
        return stackView
    }()
    
    private let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "firstOnBoarding_illust")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.SCDream.scDream6, size: 28)
        label.textColor = .handLink_black
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.NotoSans.regular, size: 16)
        label.textColor = .handLink_black
        return label
    }()
    
    let skipButton: UIButton = {
        let config = UIButton.customConfiguration("건너띄기", Font.SCDream.scDream4, 14, .gray)
        let button = UIButton(configuration: config)
        return button
    }()
    
    let nextButton: UIButton = {
        let config = UIButton.customConfiguration("다음으로", Font.SCDream.scDream6, 14, .primary)
        let button = UIButton(configuration: config)
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
        addSubview(buttonStackView)
        
        contenStackView.addArrangedSubview(imageView)
        contenStackView.addArrangedSubview(titleLabel)
        contenStackView.addArrangedSubview(descriptionLabel)
        
        buttonStackView.addArrangedSubview(skipButton)
        buttonStackView.addArrangedSubview(nextButton)
        
        imageView.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(230)
        }
        
        contenStackView.setCustomSpacing(10, after: titleLabel)
        
        contenStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalTo(safeAreaLayoutGuide).offset(-50)
        }
        
        buttonStackView.snp.makeConstraints {
            $0.leading.trailing.equalTo(safeAreaLayoutGuide)
            $0.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
}
