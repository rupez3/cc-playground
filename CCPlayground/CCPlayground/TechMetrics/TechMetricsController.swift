//
//  TechMetricsController.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/7/24.
//

import UIKit
import SwiftUI

class TechMetricsController: UIViewController {
    
    private var techMetricsViewModel = TechMetricsViewModel(isMockData: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tech Metrics"
        addViews()
        
    }
    
    func addViews() {
        // Create a SwiftUI view using UIHostingController
        let techMetricsSwiftUIView = TechMetricsView(vm: techMetricsViewModel)
        
        // Wrap the SwiftUI view in a UIHostingController
        let hostingController = UIHostingController(rootView: techMetricsSwiftUIView)
        
        // Set the SwiftUI view controller as a child view controller
        addChild(hostingController)
        hostingController.view.frame = view.bounds
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }
    
}
