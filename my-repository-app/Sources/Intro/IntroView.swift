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
        skipButton.addTarget(self, action: #selector(tappedSkptButton(sender:)), for: .touchUpInside)
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
    
    //MARK: - Objs
    @objc func tappedSkptButton(sender: UIButton){
        var click = 0
        click += 1
        print(click)
    }
    
    // MARK: Initializations
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
       
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: Extensions
extension IntroView: Viewcode {
    func buildHierarchy() {
        self.addSubview(self.introLabel)
        self.addSubview(self.skipButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.skipButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            self.skipButton.topAnchor.constraint(equalTo: introLabel.bottomAnchor, constant: 12),
            
            self.introLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                        self.introLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
                        self.introLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                        self.introLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupExtraConfiguration() {
        self.backgroundColor = .white
    }
    
    
}
