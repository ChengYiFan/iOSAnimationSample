//
//  PositionViewController.swift
//  iOSAnimationSample
//
//  Created by ChenCynthia on 15/10/6.
//  Copyright © 2015年 ChenCynthia. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {
    @IBOutlet weak var pinkSquare:UIView!
    
    @IBOutlet weak var redSquare: UIView!
    
    @IBOutlet weak var greenSquare: UIView!
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
        //动画
        UIView.animateWithDuration(1,animations: {
            self.pinkSquare.center.x = self.view.bounds.width - self.pinkSquare.center.x;
            self.pinkSquare.alpha = 0.5
        })

        UIView.animateWithDuration(1, delay: 0.5, options:UIViewAnimationOptions.TransitionNone, animations: {
            self.redSquare.center.y = self.view.bounds.height-self.redSquare.center.y;
            self.redSquare.alpha = 0.5
            }, completion:{
                (finished:Bool) -> Void in
                self.redSquare.alpha = 0.6
        })

        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.TransitionNone, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x;
            self.greenSquare.center.y = self.view.bounds.height - self.greenSquare.center.y;
           
            }, completion: nil)
        
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
