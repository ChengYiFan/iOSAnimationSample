//
//  SacleViewController.swift
//  iOSAnimationSample
//
//  Created by ChenCynthia on 15/10/7.
//  Copyright © 2015年 ChenCynthia. All rights reserved.
//

import UIKit

class SacleViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var yellowSquLabel: UILabel!
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
            self.redSquare.transform = CGAffineTransformMakeScale(1.8, 0.5)
            self.yellowSquare.backgroundColor = UIColor.blueColor()
            self.yellowSquLabel.textColor = UIColor.whiteColor()
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
