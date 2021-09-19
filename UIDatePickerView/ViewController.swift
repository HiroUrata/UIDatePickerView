//
//  ViewController.swift
//  UIDatePickerView
//
//  Created by UrataHiroki on 2021/09/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datePickerView = {() -> UIDatePicker in
            
            let datePicker = UIDatePicker()
            datePicker.center = view.center
            
            datePicker.backgroundColor = .tertiarySystemGroupedBackground
            datePicker.datePickerMode = .date  //選択肢の内容
            datePicker.preferredDatePickerStyle = .compact
            datePicker.locale = Locale(identifier: "ja_JP")  //表示する地域
            
            return datePicker
        }()
        
        view.addSubview(datePickerView)
        
    }


}

