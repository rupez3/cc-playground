//
//  FirstViewController.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/15/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let triggerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Open", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First"
        view.backgroundColor = .systemBackground
        
        addTriggerButton()
        
    }
    
    func addTriggerButton() {
        view.addSubview(triggerButton)
        triggerButton.addTarget(self, action: #selector(handleTriggerButton(_ :)), for: .touchUpInside)
        NSLayoutConstraint.activate([
            triggerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            triggerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            triggerButton.widthAnchor.constraint(equalToConstant: 100),
            triggerButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func handleTriggerButton(_ sender: UIButton) {
        let navController = UINavigationController(rootViewController: TechMetricsController())
        self.present(navController, animated: true)
    }

}
