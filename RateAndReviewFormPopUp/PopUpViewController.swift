//  PopUpViewController.swift
//  RateAndReviewFormPopUp
//  Created by Ranjeet on 27/01/20.
//  Copyright © 2020 Vaayoo. All rights reserved.

import UIKit

class PopUpViewController: UIViewController {
    @IBOutlet weak var popUpViewContainer:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.title = "Rate and Review"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        showAnimate()
        popUpViewContainer.layer.borderColor = UIColor.orange.cgColor
        popUpViewContainer.layer.borderWidth = 2.0
        popUpViewContainer.layer.cornerRadius = 15
        popUpViewContainer.layer.masksToBounds = true
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        // Do any additional setup after loading the view.
        let viewGasture = UITapGestureRecognizer(target: self, action: #selector(disMIssPopUp))
        self.view.addGestureRecognizer(viewGasture)
    }
    

    @objc func disMIssPopUp(){
        removeAnimate()
        self.view.removeFromSuperview()
    }
    
    func showAnimate(){
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.45, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }

    func removeAnimate(){
    
        UIView.animate(withDuration: 0.2, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }
            
    )}
    
}
