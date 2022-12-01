//
//  FirstOnboardingView.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/28.
//

import UIKit

final class FirstOnboardingView: UIView {
    
    private let contenStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        return stackView
    }()
    
    private let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        return stackView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.SCDream.scDream8.name, size: 30)
        label.textColor = .handLink_black
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .init(name: Font.NotoSans.regular.name, size: 18)
        label.textColor = .handLink_black
        return label
    }()
    
    private let skipButton = UIButton()
    private let nextButton = UIButton()

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
            $0.bottom.equalTo(safeAreaLayoutGuide).offset(-50)
        }
    }
    
}
