//
//  ViewController.swift
//  Demo(LoveLetter)
//
//  Created by Sin on 2023/1/6.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var signature: UITextField!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var place: UITextField!
    @IBOutlet weak var smile: UITextField!
    @IBOutlet weak var advantage: UITextField!
    @IBOutlet weak var central: UITextField!
    @IBOutlet weak var loveLetter: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
                self.view.addGestureRecognizer(tap) // to Replace "TouchesBegan"
    }
    @objc func dismissKeyBoard() {
            self.view.endEditing(true)
        }
    
    
    @IBAction func transform(_ sender: UIButton) {
       
        if name == nil{
            name.text = "請輸入對象名稱"
            name.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(name.text!)
        }
        if signature == nil{
            signature.text = "請輸入情書署名"
            signature.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(signature.text!)
        }
        if year == nil{
            year.text = "請輸入今年西元幾年"
            year.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(year.text!)
        }
        if age == nil{
            age.text = "請輸入你目前的年紀"
            age.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(age.text!)
        }
        if place == nil{
            place.text = "請輸入第一次見到對方的地點"
            place.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(place.text!)
        }
        if smile == nil{
            smile.text = "請輸入他笑容的形容詞"
            smile.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(smile.text!)
        }
        if advantage == nil{
            advantage.text = "請輸入對方優點"
            advantage.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(advantage.text!)
        }
        if central == nil{
            central.text = "請輸入對方優點"
            central.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            print(central.text!)
        }
        loveLetter.text = "親愛的\(name.text!)\n認識你的第一天，我就被你所征服，你要記住今天，\(year.text!)年，也是我\(age.text!)年第一次對女孩表白！不許笑，用我的眼淚做信封，用我的心做信紙，我愛你，只要活著的每一天能夠見到你，對我來說就是最大的幸福，你受過的傷流過的淚從今以後不會再有了，因為有我！\n曾經我只是和星星一起閃亮和黑夜一起寂寞的孩子……在昨天之前，我不知道開心快樂該如何書寫，第一次在\(place.text!)遇到了你，你的笑容\(smile.text!)，我欣賞你的\(advantage.text!)、羨慕你的\(central.text!)，一切都讓我感到怦然心動。\n都說流星有求必應，我願在星空下等待，等到一顆星被我感動，載著我的思念和祝福，落在你熟睡的枕邊。好想把你藏在胸前的口袋，把你暖暖的融化，你就再也離不開，從此不讓別人想，只准和我一個人相愛。我只想問你，你願意做我的靈魂伴侶嗎？\n愛你的\(signature.text!)"
        print(loveLetter.text!)
      
        
    }
    
    @IBAction func share(_ sender: UIButton) {
        let activity = UIActivityViewController(activityItems: [loveLetter.text!], applicationActivities: nil)
        self.present(activity, animated: true, completion: nil)
    }
    
}

