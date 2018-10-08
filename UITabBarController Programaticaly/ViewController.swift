//
//  ViewController.swift
//  UITabBarController Programaticaly
//
//  Created by masato on 8/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//
//  Swift 4.2
//

import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate {

    // Declare TabBarController Instance
    var myTabBarController: UITabBarController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // call Function
        createTabBarController()
    }


//************************************************************
//  set Function
    func createTabBarController() {

        // set UITabBarController Instance
        myTabBarController = UITabBarController()

        // set delegate
        myTabBarController.delegate = self

        // set tabBar style
        myTabBarController.tabBar.barStyle = .black



        // First Screen
        let firstViewController = UIViewController()

        // First Screen Title
        firstViewController.title = "First"

        // set First Screen red
        firstViewController.view.backgroundColor = .red



        // Second Screen
        let secondViewController = UIViewController()

        // Second Screen
        secondViewController.title = "Second"

        // set Second Screen yellow
        secondViewController.view.backgroundColor = .yellow




        // set First and Second Elements to TabBar
        myTabBarController.viewControllers = [firstViewController,secondViewController]

        // add myTabBarController on Subview
        self.view.addSubview(myTabBarController.view)
    }


//************************************************************


        // get TabBar Index Number in Console
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController){

        print("Test present Content Index \(tabBarController.selectedIndex)")


    }
}

