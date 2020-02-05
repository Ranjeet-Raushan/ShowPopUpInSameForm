//  ViewController.swift
//  RateAndReviewFormPopUp
//  Created by Ranjeet on 27/01/20.
//  Copyright © 2020 Vaayoo. All rights reserved.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationItem.title = "Rate and Review"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        navigationController?.navigationBar.titleTextAttributes = textAttributes

    }


    @IBAction func popUpAction(_ sender: Any) {
        let popUpVc = storyboard?.instantiateViewController(identifier: "PopUpViewController") as! PopUpViewController
        self.addChild(popUpVc)
        popUpVc.view.frame = self.view.frame
        self.view.addSubview(popUpVc.view)
        popUpVc.didMove(toParent: self)
    }
}

