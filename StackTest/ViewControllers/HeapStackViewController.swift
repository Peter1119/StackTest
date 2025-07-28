//
//  HeapStackViewController.swift
//  StackTest
//
//  Created by 홍석현 on 7/28/25.
//

import UIKit

// 참조 타입
class Screen {
    var resolution: String
    
    init(resolution: String) {
        self.resolution = resolution
        print("📺 Screen 객체 생성됨 at \(Unmanaged.passUnretained(self).toOpaque())")
    }
}

// 값 타입 (통째로 복사되는 박스)
struct Phone {
    var model: String
    // 박스 안에 TV 리모컨을 가지고 있음
    var display: Screen
}


func examineStructWithClass() {
    let iPhoneOriginal = Phone(
        model: "iPhone 15",
        display: Screen(resolution: "2556x1179")
    )
    
    // 구조체를 복사! 박스는 복사되지만, 안의 리모컨은?
    var iPhoneCopied = iPhoneOriginal
    
    print("\n--- 복사 후 ---")
    print("original과 copied의 주소를 확인하세요.")
    print("breakpoint-1을 여기에 설정하세요.")
    
    // 복사본의 display 해상도를 변경해봅니다.
    iPhoneCopied.display.resolution = "NEW RESOLUTION"
    print("\n--- 복사본의 해상도 변경 후 ---")
    print("breakpoint-2를 여기에 설정하세요.")
}

class HeapStackViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        examineStructWithClass()
    }
}
