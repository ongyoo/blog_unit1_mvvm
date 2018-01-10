//
//  MainViewControllerViewModel.swift
//  unit_1_mvvm
//
//  Created by Komsit Chusangthong on 1/10/18.
//  Copyright © 2018 Komsit Chusangthong. All rights reserved.
//

import UIKit

class MainViewModel: MainInterface, MainInteractorOutput {
    
    var input: MainInteractorInput { return self }
    var output: MainInteractorOutput { return self }
    
    // MARK - Data-binding OutPut
    var showMessageAlert: ((String) -> Void)?
    var didError: (() -> Void)?
    
}

// MARK - Data-binding InPut
extension MainViewModel: MainInteractorInput {
    func saveMessageData(message: String?) {
        guard let msg = message,
            !msg.isEmpty,
             msg == "" else {
            didError?()
            return
        }
        showMessageAlert?(msg)
    }
}
