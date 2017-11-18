//
//  ViewController.swift
//  LMViews
//
//  Created by Máthé Levente on 2017. 09. 12..
//  Copyright © 2017. Máthé Levente. All rights reserved.
//

import UIKit
import LMViews

class ViewController: UIViewController {

    @IBOutlet weak var gradientViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var gradientViewHeightConstraint: NSLayoutConstraint!
    
    private var viewSizeChange: CGFloat = 20.0
    
    @IBAction func changeUIViewSizesBtnTapped(_ sender: LMButton) {
        UIView.animate(withDuration: 2, animations: {
            self.gradientViewWidthConstraint.constant += self.viewSizeChange
            self.gradientViewHeightConstraint.constant += self.viewSizeChange
            self.view.layoutIfNeeded()
        }, completion: { _ in
            self.viewSizeChange = -self.viewSizeChange
        })
    }
}

