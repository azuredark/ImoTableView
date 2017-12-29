//
//  AutomaticScrollAdjustExampleVC.swift
//  ImoTableViewExample
//
//  Created by Borinschi Ivan on 5/10/17.
//  Copyright © 2017 Imodeveloperlab. All rights reserved.
//

import Foundation
import UIKit
import ImoTableView
import Fakery

class AutomaticScrollAdjustExampleVC: BaseViewController {
  
    let faker = Faker.init()
    
    override func exploreTitle() -> String {
        return "Adjust scroll for keyboard"
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        let table = ImoTableView(on: self.view, insets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        table.view.contentInset = UIEdgeInsets(top: 100, left: 0, bottom: 60, right: 0)
        table.view.scrollIndicatorInsets = UIEdgeInsets(top: 100, left: 0, bottom: 60, right: 0)
        
        let textField = UITextField(frame: CGRect(x: 15, y: 75, width: view.frame.width - 30, height: 40))
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .red
        view.addSubview(textField)
        
        table.adjustContentInsetsForKeyboard(true)
        let section = ImoTableViewSection()
        
        for _ in 0...5 {
            let textField = TextFieldCellSource(staticCellWithTableView: table)
            section.add(textField)
        }
        
        for _ in 0...20 {
            let text = faker.lorem.sentence()
            section.add(TextCellSource(text:text))
        }
        
        table.add(section: section)
    }
}
