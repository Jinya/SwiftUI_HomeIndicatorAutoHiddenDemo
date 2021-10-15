//
//  ViewController.swift
//  HideHomeIndicatorDemo
//
//  Created by Jinya on 2021/10/15.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    override var prefersHomeIndicatorAutoHidden: Bool { true }
    
    private let childView = UIHostingController(rootView: SwiftUIView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(childView)
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        childView.view.frame = view.bounds
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        [.landscapeLeft, .landscapeRight, .portrait]
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        childView.view.frame = view.bounds
    }
}

