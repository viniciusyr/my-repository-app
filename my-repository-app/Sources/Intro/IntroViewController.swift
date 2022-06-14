//
//  IntroViewController.swift
//  my-repository-app
//
//  Created by Vinicius Rodrigues on 05/06/22.
//

import Foundation
import UIKit

final class IntroViewController: UIViewController {
    
    private lazy var introView: IntroView = {
        let introView = IntroView()
        return introView
    }()
    
 
    // MARK: - Life Cycles
    override func viewDidLoad() {
        
    }
    
    override func loadView() {
        self.view = introView
    }
    
    func changeText() {
        
    }
}
