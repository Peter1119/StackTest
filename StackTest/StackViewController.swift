//
//  ViewController.swift
//  StackTest
//
//  Created by 홍석현 on 7/25/25.
//

import UIKit

struct StackObject {
    var value1: Int
    var value2: Int
}

func firstFunction() {
    let stackValue1 = StackObject(value1: 10, value2: 11)
    
    print("--- firstFunction 실행됨 ---")
    print("stackValue1의 주소를 확인하세요.")
    print("breakpoint-1을 여기에 설정하세요.")
    
    secondFunction()
}

func secondFunction() {
    let stackValue2 = StackObject(value1: 20, value2: 21)
    
    print("--- secondFunction 실행됨 ---")
    print("stackValue2의 주소를 확인하세요.")
    print("breakpoint-2를 여기에 설정하세요.")
}


class StackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstFunction()
    }
    
}

