//
//  IntroViewController.swift
//  my-repository-app
//
//  Created by Vinicius Rodrigues on 05/06/22.
//

import Foundation
import UIKit

final class IntroViewController: UIViewController {
    
    private var customView: IntroView? = nil
    
    @objc func tappedSkptButton(sender: UIButton){
        print("Test button")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = IntroView()
        customView = view as? IntroView
    }
    

    
    
//    private func configContraints(){
//        NSLayoutConstraint.activate([
//            self.skipButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            self.skipButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            self.skipButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
//            self.skipButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
//
//        ])
//    }
    
}
