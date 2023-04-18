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
    
// аутлеты для заголовка счетчика, счетчика, кнопок ресет, +, -, текстового поля с логами
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counterTitle: UILabel!
    @IBOutlet weak var counterLog: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        hideCounterTitle()
        updateCounterLog("История изменений:", withDate: false)
        // задаем цвет для кнопок
        increaseButton.backgroundColor = .red
        decreaseButton.backgroundColor = .blue
        resetButton.backgroundColor = .darkGray
        // задаем цвет для иконок
        increaseButton.tintColor = .white
        decreaseButton.tintColor = .white
        resetButton.tintColor = .white

    }
    
// метод скрывающий заголовок счетчика
     func hideCounterTitle() {
        // скрываем заголовок, делаем его белым цветом
        counterTitle.textColor = .white
    }
    
// метод показывающий заголовок счетчика
    func unhideCounterLabel() {
        // показываем заголовок, делаем его серым цветом
        counterTitle.textColor = .gray
    }

// метод обновляющий значение счетчика
     func updateCounterLabel() {
        counterLabel.text = String(mainCounter)
    }
    
// метод добавляющий записи в лог счетчика
    func updateCounterLog(_ withText: String, withDate: Bool) {
        var currentDateTime: String
        // если нужно - формируем строку с датой и временем, или пустую строку
        if withDate {
            // Create Date
            let date = Date()
            // Create Date Formatter
            let dateFormatter = DateFormatter()
            // Set Date Format
            dateFormatter.dateFormat = "d.M.y HH:mm:ss"
            // Convert Date to String
            currentDateTime = dateFormatter.string(from: date) + ": "
        }  else {
            currentDateTime = ""
        }
        // 2. обновить значение счетчика
        updateCounterLabel()
        // 2. добавить запись в лог
        counterLog.insertText(currentDateTime + withText + "\n")
        // 3. скролим лог до самого низу, чтобы показать последние записи
        let range = NSMakeRange(counterLog.text.count - 1, 0)
        counterLog.scrollRangeToVisible(range)

    }
    
// метод обработки нажатия на кнопку +
    @IBAction func increaseButtonPushed(_ sender: Any) {
        // кнопку нажали - счетчик увеличили
        mainCounter += 1
        if mainCounter == 1 {
            // если начали считать - показать заголовок счетчика (только в первый раз)
            unhideCounterLabel()
        }
        // добавить запись в лог
        updateCounterLog("значение изменено на +1", withDate: true)

    }

    // метод обработки нажатия на кнопку -
    @IBAction func decreaseButtonPushed(_ sender: Any) {
        if mainCounter >= 1 {
            mainCounter -= 1
            // добавить запись в лог
            updateCounterLog("значение изменено на -1", withDate: true)
        } else {
            // добавить запись в лог
            updateCounterLog("попытка уменьшить значение счётчика ниже 0", withDate: true)

        }
        if mainCounter == 0 {
            hideCounterTitle()
        }
    }
    
    // метод обработки нажатия на кнопку Ресет
    @IBAction func resetButtonPushed(_ sender: Any) {
        hideCounterTitle()
        mainCounter = 0
        // добавить запись в лог
        updateCounterLog("значение сброшено", withDate: true)
    }
}

