//
//  MainTabBarController.swift
//  WatchTV
//
//  Created by Станислав Лемешаев on 03.12.2020.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        
        viewControllers = [
            generateViewController(rootViewController: MainViewController(), title: "Главная"),
            generateViewController(rootViewController: VestiViewController(), title: "Вести"),
            generateViewController(rootViewController: KinoAndShowViewController(), title: "Кино и Шоу"),
            generateViewController(rootViewController: EfirViewController(), title: "Эфир")
        ]
    }
    
    // метод генерации viewcontroller'a
    private func generateViewController(rootViewController: UIViewController, title: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        rootViewController.navigationItem.title = title
        return navigationVC
    }

}
