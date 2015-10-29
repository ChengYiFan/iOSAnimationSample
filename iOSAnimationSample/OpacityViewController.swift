//
//  OpacityViewController.swift
//  iOSAnimationSample
//
//  Created by ChenCynthia on 15/10/7.
//  Copyright © 2015年 ChenCynthia. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var pinkSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(1, animations: {
                self.pinkSquare.alpha = 0.2
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
