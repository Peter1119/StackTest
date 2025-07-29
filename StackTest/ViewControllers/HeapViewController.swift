//
//  HeapViewController.swift
//  StackTest
//
//  Created by 홍석현 on 7/28/25.
//

import UIKit

class HeapObject {
    var name: String
    
    init(name: String) {
        self.name = name
        print("HeapObject: \(self.name) at: \(Unmanaged.passUnretained(self).toOpaque())")
    }
}

func examineHeap() {
    // 1️⃣ 첫 번째 힙 객체 생성
    let heapObject1 = HeapObject(name: "First")
    
    // 2️⃣ 두 번째 힙 객체 생성
    let heapObject2 = HeapObject(name: "Second")
    
    print("\n--- 힙 객체 생성 완료 ---")
    print("heapObject1, heapObject2의 주소를 확인하세요.")
    print("breakpoint를 여기에 설정하세요.")
}

func examineClassCopy() {
    let original = HeapObject(name: "Original")
    let copied = original // 여기서 참조(주소) 복사가 일어납니다!

    print("\n--- Class 복사 동작 확인 ---")
    print("breakpoint-class-copy를 여기에 설정하세요.")
}

class HeapViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        examineHeap()
//        examineClassCopy()
    }
}
