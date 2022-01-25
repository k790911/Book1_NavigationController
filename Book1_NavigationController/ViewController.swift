//
//  ViewController.swift
//  Book1_NavigationController
//
//  Created by 김재훈 on 2022/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 세그웨이를 이용하여 화면을 전환 할 때는 prepare함수를 사용함
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        if segue.identifier == "editButton" {
            // 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            // 바버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use Bar button"
        }
        editViewController.textMessage = txMessage.text!
        
        editViewController.delegate = self
    }
}

extension ViewController: EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
}
