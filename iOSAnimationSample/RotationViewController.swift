//
//  RotationViewController.swift
//  iOSAnimationSample
//
//  Created by ChenCynthia on 15/10/8.
//  Copyright © 2015年 ChenCynthia. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheel: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func spin(){
        //旋转动画
        UIView.animateWithDuration(2, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
//            self.wheel.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                self.wheel.transform =
                    CGAffineTransformRotate(self.wheel.transform, CGFloat(M_PI)) //转半个圆
            }, completion: {
                (finished:Bool) -> Void in
                self.spin()
        })
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.spin()
        
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
