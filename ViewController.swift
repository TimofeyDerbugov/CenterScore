//
//  ViewController.swift
//  MiddleScore
//
//  Created by Apple on 29.04.2024.
//
import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel()//
    
    let myView = UIView()//
    let scoreLabel = UILabel()//
    let deleteLastButton = UIButton()
    let deleteAllButton = UIButton()
    
    let fiveButton = UIButton()//
    let fourButton = UIButton()//
    let threeButton = UIButton()//
    let twoButton = UIButton()//

    
    var score: Double = 0.0//
    
    var scoreSum = 0//
    
    var array: [String] = []//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.00, green: 2.55, blue: 2.23, alpha: 1.0)
        
        deleteLastButton.frame = CGRect(x: (view.frame.size.width / 20 * 14), y: (view.frame.size.height / 20 * 14), width: (view.frame.size.width / 20 * 5), height: (view.frame.size.height / 20 * 2.5))
        deleteLastButton.backgroundColor = UIColor(red: 0.46, green: 2.52, blue: 0.67, alpha: 1.0)
        deleteLastButton.addTarget(self, action: #selector(deleteLast), for:.touchUpInside)
        deleteLastButton.setTitle("REM", for: .normal)
        deleteLastButton.setTitleColor(UIColor(red: 0.00, green: 0.17, blue: 2.55, alpha: 1.00), for:.normal)
        deleteLastButton.layer.cornerRadius = 15
        deleteLastButton.layer.borderWidth = 1
        deleteLastButton.layer.borderColor = UIColor.black.cgColor
        
        
        deleteAllButton.frame = CGRect(x: (view.frame.size.width / 20 * 2), y: (view.frame.size.height / 20 * 14), width: (view.frame.size.width / 20 * 5), height: (view.frame.size.height / 20 * 2.5))
        deleteAllButton.backgroundColor = UIColor(red: 0.46, green: 2.52, blue: 0.67, alpha: 1.0)
        deleteAllButton.addTarget(self, action: #selector(deleteall), for:.touchUpInside)
        deleteAllButton.setTitle("DEL", for: .normal)
        deleteAllButton.setTitleColor(UIColor(red: 0.00, green: 0.17, blue: 2.55, alpha: 1.00), for:.normal)
        deleteAllButton.layer.cornerRadius = 15
        deleteAllButton.layer.borderWidth = 1
        deleteAllButton.layer.borderColor = UIColor.black.cgColor
        
        
        twoButton.frame = CGRect(x: (view.frame.size.width / 20 * 8), y: (view.frame.size.height / 20 * 14), width: (view.frame.size.width / 20 * 5), height: (view.frame.size.height / 20 * 2.5))
        twoButton.backgroundColor = UIColor(red: 0.46, green: 2.52, blue: 0.67, alpha: 1.0)
        twoButton.addTarget(self, action: #selector(Tb), for:.touchUpInside)
        twoButton.setTitle("2", for: .normal)
        twoButton.setTitleColor(UIColor(red: 2.55, green: 0.00, blue: 0.00, alpha: 1.00), for:.normal)
        twoButton.layer.cornerRadius = 15
        twoButton.layer.borderWidth = 1
        twoButton.layer.borderColor = UIColor.black.cgColor
        
        
        threeButton.frame = CGRect(x: (view.frame.size.width / 20 * 14), y: (view.frame.size.height / 20 * 10), width: (view.frame.size.width / 20 * 5), height: (view.frame.size.height / 20 * 2.5))
        threeButton.backgroundColor = UIColor(red: 0.46, green: 2.52, blue: 0.67, alpha: 1.0)
        threeButton.addTarget(self, action: #selector(Thb), for:.touchUpInside)
        threeButton.setTitle("3", for: .normal)
        threeButton.setTitleColor(UIColor(red: 2.55, green: 0.00, blue: 0.00, alpha: 1.00), for:.normal)
        threeButton.layer.cornerRadius = 15
        threeButton.layer.borderWidth = 1
        threeButton.layer.borderColor = UIColor.black.cgColor
        
        
        fourButton.frame = CGRect(x: (view.frame.size.width / 20 * 8), y: (view.frame.size.height / 20 * 10), width: (view.frame.size.width / 20 * 5), height: (view.frame.size.height / 20 * 2.5))
        fourButton.backgroundColor = UIColor(red: 0.46, green: 2.52, blue: 0.67, alpha: 1.0)
        fourButton.addTarget(self, action: #selector(fob), for:.touchUpInside)
        fourButton.setTitle("4", for: .normal)
        fourButton.setTitleColor(UIColor(red: 2.55, green: 0.00, blue: 0.00, alpha: 1.00), for:.normal)
        fourButton.layer.cornerRadius = 15
        fourButton.layer.borderWidth = 1
        fourButton.layer.borderColor = UIColor.black.cgColor
        
        
        fiveButton.frame = CGRect(x: (view.frame.size.width / 20 * 2), y: (view.frame.size.height / 20 * 10), width: (view.frame.size.width / 20 * 5), height: (view.frame.size.height / 20 * 2.5))
        fiveButton.backgroundColor = UIColor(red: 0.46, green: 2.52, blue: 0.67, alpha: 1.0)
        fiveButton.addTarget(self, action: #selector(fb), for:.touchUpInside)
        fiveButton.setTitle("5", for: .normal)
        fiveButton.setTitleColor(UIColor(red: 2.55, green: 0.00, blue: 0.00, alpha: 1.00), for:.normal)
        fiveButton.layer.cornerRadius = 15
        fiveButton.layer.borderWidth = 1
        fiveButton.layer.borderColor = UIColor.black.cgColor
        
        
        myLabel.frame = CGRect(x: (view.frame.size.width / 20 * 5), y: (view.frame.size.height / 20), width: (view.frame.size.width / 20 * 11), height: (view.frame.size.height / 20 * 2))
        myLabel.text = "Ваша средняя оценка: 0.0"
        myLabel.textColor = .black
        
        
        myView.frame = CGRect(x: (view.frame.size.width / 20 * 2), y: (view.frame.size.height / 20 * 3), width: (view.frame.size.width / 20 * 16), height: (view.frame.size.height / 20 * 6))
        myView.backgroundColor = UIColor(red: 1.58, green: 2.55, blue: 2.33, alpha: 1.0)
        myView.layer.cornerRadius = 15
        
        
        scoreLabel.frame = CGRect(x: (view.frame.size.width / 20 * 3), y: (view.frame.size.height / 20 * 3), width: (view.frame.size.width / 20 * 14), height: (view.frame.size.height / 20 * 6))
        scoreLabel.text = "Введите свои оценки"
        scoreLabel.textColor = .darkGray
        scoreLabel.textAlignment = .left
        scoreLabel.numberOfLines = 0

        view.addSubview(deleteLastButton)
        view.addSubview(deleteAllButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(fiveButton)
        view.addSubview(fourButton)
        view.addSubview(myView)
        view.addSubview(myLabel)
        view.addSubview(scoreLabel)
    }
    
    @objc func deleteLast() {
            if array.count > 0 {
                if array.last == "2" {
                    scoreSum -= 2
                }
                if array.last == "3" {
                    scoreSum -= 3
                }
                if array.last == "4" {
                    scoreSum -= 4
                }
                if array.last == "5" {
                    scoreSum -= 5
                }
                updateLabel()
                updateScores()
                array.removeLast()
                print("true")
            } else {
                print("false")
                array.removeAll()
                score = 0.0
                scoreSum = 0
                updateLabel()
                updateScores()
                scoreLabel.text = "Введите свои оценки"
            }
        
        updateLabel()
        updateScores()
        print(score)
        print(scoreSum)
        print(array.count)
        
}
    
    @objc func deleteall() {
        remc()
    }
    
    @objc func Tb() {
        scoreSum += 2
        array.append("2")
        updateLabel()
        updateScores()
        print(score)
        print(scoreSum)
        print(array)
    }
    
    @objc func Thb() {
        scoreSum += 3
        array.append("3")
        updateLabel()
        updateScores()
        print(score)
        print(scoreSum)
        print(array)
    }
    
    @objc func fob() {
        scoreSum += 4
        array.append("4")
        updateLabel()
        updateScores()
        print(score)
        print(scoreSum)
        print(array)
    }
    
    @objc func fb() {
        scoreSum += 5
        array.append("5")
        updateLabel()
        updateScores()
        print(score)
        print(scoreSum)
        print(array)
    }
    
    func updateLabel() {
        score = Double(scoreSum) / Double(array.count)
        myLabel.text = "Ваша средняя оценка: " + String(format: "%.2f", score)
    }
    func updateScores() {
        let joinedArray = array.joined(separator: " ")
        scoreLabel.text = joinedArray
    }
    func remc() {
        array.removeAll()
        updateLabel()
        updateScores()
        score = 0.0
        scoreSum = 0
        scoreLabel.text = "Введите свои оценки"
        print(score)
        print(scoreSum)
        print(array)
    }
}
