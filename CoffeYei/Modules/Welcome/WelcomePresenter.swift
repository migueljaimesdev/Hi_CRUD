//
//  WelcomePresenter.swift
//  PlatziTweet
//
//  Created by Randstad Technologies on 21/12/21.
//
//

import UIKit

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterWelcomeProtocol {
    
}

// MARK: View Input (View -> Presenter)
protocol WelcomePresenterInput {
    func onViewDidLoad()
    func onViewWillAppear(_ animated: Bool)
    func onviewWillDisappear(_ animated: Bool)
}

// MARK: View Output (Presenter -> View)
protocol WelcomePresenterOutput {
   
}

class WelcomePresenter: Presenter {

    // MARK: Properties
    
    
    // MARK: - Init
    internal var output: WelcomePresenterOutput
    lazy var interactor = WelcomeInteractor (output: self)
    
    init(output:WelcomePresenterOutput) { self.output = output }
    
}

extension WelcomePresenter: WelcomePresenterInput {
    
    func onViewDidLoad() {
    }
    
    func onViewWillAppear(_ animated: Bool) { }
    
    func onviewWillDisappear(_ animated: Bool) { }
    
}

extension WelcomePresenter: WelcomeInteractorOutput {
    
}
