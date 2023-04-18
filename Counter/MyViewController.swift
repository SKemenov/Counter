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
    @IBOutlet weak var buttonToCount: UIButton!
    @IBOutlet weak var counterTitleText: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
// обнуляем отображение счетчика, скрываем заголовок
        counterLabel.text = String(mainCounter)
        counterTitleText.textColor = .white
    }
// метод обработки нажатия на кнопку
    @IBAction func countButtonPushed(_ sender: Any) {
// кнопку нажали - счетчик увеличили
        mainCounter += 1
        if mainCounter == 1 {
// если начали считать - показать заголовок счетчика (только в первый раз)
            counterTitleText.textColor = .gray
        }
// отобразить новое значение счетчика
        counterLabel.text = String(mainCounter)
    }

}

