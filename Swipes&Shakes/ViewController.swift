//
//  ViewController.swift
//  Swipes&Shakes
//
//  Created by Ahmed T Khalil on 1/23/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //to detect a swipe gesture, make a UISwipeGestureRecognizer object
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gestureRecognizer:)))
        //set the direction you wish to recognize
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        //then add it to the view (or a view element)
        self.view.addGestureRecognizer(swipeRight)
        
        //do the same to add a left swiper gesture recognizer
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector((swiped(gestureRecognizer:))))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
    }

    //notice that we can use the same selector for both right and left swipes
    func swiped(gestureRecognizer: UIGestureRecognizer){
        
        if let swipeGesture = gestureRecognizer as? UISwipeGestureRecognizer{
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left:
                print("Left")
            case UISwipeGestureRecognizerDirection.right:
                print("Right")
            default:
                break
            }
            
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //to detect a shake, there is a motion method that you can use
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("Shake, Shake. Shake, Shake. SHAKE IT!")
        }
    }


}

