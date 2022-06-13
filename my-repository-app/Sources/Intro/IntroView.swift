//
//  IntroView.swift
//  my-repository-app
//
//  Created by Vinicius Rodrigues on 12/06/22.
//

import Foundation
import UIKit

final class IntroView: UIView {
    
    // MARK: - UI Components
    
    private lazy var skipButton: UIButton = {
        let skipButton = UIButton(type: .system)
        skipButton.translatesAutoresizingMaskIntoConstraints = false
        skipButton.setTitle(Strings.TITLE_INTROBUTTON, for: .normal)
        skipButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        skipButton.addTarget(self, action: #selector(IntroViewController.tappedSkptButton(sender:)), for: .touchUpInside)
        return skipButton
    }()
    
    private lazy var introLabel: UILabel = {
        let introLabel = UILabel()
        introLabel.text = Strings.TITLE_INTROTEXT
        introLabel.textColor = .black
        introLabel.font = UIFont.systemFont(ofSize: 25)
        introLabel.numberOfLines = 0
        introLabel.textAlignment = .center
        introLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return introLabel
    }()
    
    // MARK: Initializations
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubViews()
        constrainLabel()
        constrainButton()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews(){
        addSubview(skipButton)
        addSubview(introLabel)
    }
    
    private func constrainLabel() {
        let constrain = [
            self.introLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                        self.introLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
                        self.introLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                        self.introLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        
        ]
        constrain.forEach { (item) in
            item.isActive = true
        }
        
    }
    
    private func constrainButton() {
        let constraint = [
            self.skipButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            self.skipButton.topAnchor.constraint(equalTo: introLabel.bottomAnchor, constant: 12),
                   
        ]
        
        constraint.forEach { (item) in
            item.isActive = true
        }
    }
}
