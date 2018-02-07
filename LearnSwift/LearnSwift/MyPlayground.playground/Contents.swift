//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let screenView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 375, height: 667))

var testView:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 200))
PlaygroundPage.current.liveView = screenView
screenView.addSubview(testView)
testView.backgroundColor = UIColor.red

//MARK:测试动画
UIView.animate(withDuration: 10, animations: { 
    testView.frame = CGRect.init(x: 0, y: 200, width: 50, height: 50)
}, completion: nil)

var testStr = "123"
testStr.append("321")
testStr.appending("aaa")
let testInt = Int(testStr)
var mainTb = UITableView.init(frame: screenView.frame, style: UITableViewStyle.grouped)
mainTb.backgroundColor = UIColor.lightGray
screenView.addSubview(mainTb)

for char in "123456abcdABCD" {
    print(char)
}

var (x,y) = (1,2)
print((x,y))
let range = ...10000



//func testFunc()->Void{
//    UIView.animate(withDuration: 10) {
//        UIView.setAnimationRepeatCount(10)
//        mainTb.frame = CGRect.init(x: 50, y: 20, width: 50, height: 50)
//    }
//    print("方法调用成功")
//}
//testFunc()

