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
        stackView.spacing = 10
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
        label.font = .init(name: Font.SCDream.scDream8, size: 30)
        label.textColor = .handLink_black
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.NotoSans.regular, size: 18)
        label.textColor = .handLink_black
        return label
    }()
    
    let skipButton: UIButton = {
        var config = UIButton.customConfiguration("건너띄기", Font.SCDream.scDream4, 13)
        config.baseForegroundColor = .gray
        let button = UIButton(configuration: config)
        return button
    }()
    
    let nextButton: UIButton = {
        var config = UIButton.customConfiguration("다음으로", Font.SCDream.scDream8, 13)
        config.baseForegroundColor = .black
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
        
        contenStackView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        buttonStackView.snp.makeConstraints {
            $0.leading.trailing.equalTo(safeAreaLayoutGuide)
            $0.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
}
