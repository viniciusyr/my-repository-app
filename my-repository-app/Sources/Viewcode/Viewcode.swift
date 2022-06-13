//
//  Viewcode.swift
//  my-repository-app
//
//  Created by Vinicius Rodrigues on 12/06/22.
//

import Foundation

protocol Viewcode {
    func buildHierarchy()
    func setupConstraints()
    func setupExtraConfiguration()
    
}

extension Viewcode {
    func setupViewCode() {
        buildHierarchy()
        setupConstraints()
        setupExtraConfiguration()
    }
    
}
