//
//  ViewController.swift
//  Counter
//
//  Created by Sergey Kemenov on 16.04.2023.
//

import UIKit

class MyViewController: UIViewController {
// переменная для подсчета счетчика
    var mainCounter: Int = 0
    
// аутлеты для заголовка счетчика, счетчика, кнопки
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counterTitle: UILabel!
    @IBOutlet weak var counterLog: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    
    fileprivate func hideCounterTitle() {
        // скрываем заголовок, делаем белым цветом
        counterTitle.textColor = .white
    }
    
    fileprivate func updateCounterLabel() {
        // обнуляем отображение счетчика
        counterLabel.text = String(mainCounter)
    }
    
    fileprivate func unhideCounterLabel() {
        counterTitle.textColor = .gray

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounterLabel()
        hideCounterTitle()
    }
    
// метод обработки нажатия на кнопку
    @IBAction func increaseButtonPushed(_ sender: Any) {
// кнопку нажали - счетчик увеличили
        mainCounter += 1
        if mainCounter == 1 {
// если начали считать - показать заголовок счетчика (только в первый раз)
            unhideCounterLabel()
        }
// отобразить новое значение счетчика
        updateCounterLabel()
    }

    @IBAction func decreaseButtonPushed(_ sender: Any) {
        if mainCounter >= 1 {
            mainCounter -= 1
        }
        if mainCounter == 0 {
            hideCounterTitle()
        }
        updateCounterLabel()
    }
    
    @IBAction func resetButtonPushed(_ sender: Any) {
        hideCounterTitle()
        mainCounter = 0
        updateCounterLabel()
    }
}

