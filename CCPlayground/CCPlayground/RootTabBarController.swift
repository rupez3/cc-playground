//
//  RootTabBarController.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/15/23.
//

import UIKit

class RootTabBarController: UITabBarController {
    
    let vc1 = UINavigationController(rootViewController: FirstViewController())
    
    let vc2 = UINavigationController(rootViewController: SecondViewController())
    
    let vc3 = UINavigationController(rootViewController: ThirdViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vc1.tabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        vc2.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        vc3.tabBarItem = UITabBarItem(title: "Third", image: UIImage(systemName: "gearshape"), selectedImage: UIImage(systemName: "gearshape.fill"))
        
        self.viewControllers = [vc1, vc2, vc3]
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
