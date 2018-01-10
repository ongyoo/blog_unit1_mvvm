//
//  MainInteractor.swift
//  unit_1_mvvm
//
//  Created by Komsit Chusangthong on 1/10/18.
//  Copyright © 2018 Komsit Chusangthong. All rights reserved.
//

import Foundation

// MARk - Data-binding
protocol MainInteractorInput {
    func saveMessageData(message: String?)
}

protocol MainInteractorOutput: class {
    var showMessageAlert: ((String) -> Void)? { get set }
    var didError: (() -> Void)? { get set }
}

protocol MainInterface: MainInteractorInput, MainInteractorOutput {
    var input: MainInteractorInput { get }
    var output: MainInteractorOutput { get }
}
