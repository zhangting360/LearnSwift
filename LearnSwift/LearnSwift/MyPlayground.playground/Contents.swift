//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var testView:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 200))
testView.backgroundColor = UIColor.red

//MARK:测试动画
UIView.animate(withDuration: 10, animations: { 
    testView.frame = CGRect.init(x: 0, y: 200, width: 50, height: 50)
}, completion: nil)
