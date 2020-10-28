//
//  NewsViewController.swift
//  IOS7_lesson_1
//
//  Created by Елена on 27.10.2020.
//  Copyright © 2020 Елена. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var actionButton: UIButton!
    
    var isPressed:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "Меня зовут Малыш. Будем дружить?"
        
        myImg.image = #imageLiteral(resourceName: "котик")
        
        actionButton.setTitle("Подружиться", for: .normal)
    }
    
    @IBAction func actionButtonPressed(_ sender: UIButton) {
        isPressed.toggle()
        
        titleLabel.text = isPressed ? "Привет, любимка" : "Привет, незнакомец"
        
        titleLabel.backgroundColor = isPressed ? .green : .lightGray
        
        textView.text = isPressed ? "Ура! Мы теперь друзья" : "Меня зовут Малыш. Будем дружить?"
        
        if (isPressed) {
            myImg.image = #imageLiteral(resourceName: "котик2")
        }
        
        actionButton.setTitle("Теперь мы друзья", for: .normal)
        isPressed.toggle()
        
    }
}
