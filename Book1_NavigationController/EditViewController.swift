//
//  EditViewController.swift
//  Book1_NavigationController
//
//  Created by 김재훈 on 2022/01/25.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController {

    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text = textMessage
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!)
        }
        // 세그웨이 추가 시 "Show"를 했기 때문에 "pop"의 형태를 띠어야 함
        _ = navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
