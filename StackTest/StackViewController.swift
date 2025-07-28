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

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "스택 메모리 확인용 뷰"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        firstFunction()
        
        print("breakpoint-3를 여기에 설정하세요.")
    }
}

