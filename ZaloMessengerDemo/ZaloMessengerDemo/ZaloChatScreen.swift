//
//  ZaloChatScreen.swift
//  ZaloMessengerDemo
//
//  Created by Nguyễn Mạnh Linh on 12/04/2023.
//

import UIKit

class ZaloChatScreen: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let arrayName = ["Nguyen Kha Chuong" , "Dinh Tien Hoang", "Giap Thi Phuong", "Nguyen Khac Hung", "Vu Ngoc Minh", "Nguyen Kha Hung", "Le Dinh Linh", "Vu Dinh Duan"]
    
    let arrayChat = ["Tối nay học IOS nhé", "Ê", "Alo", "Đã gửi 1 sticker", "Alo em", ":v", "Đã gửi 1 video bài giảng của a Chương free", "Alo tối đón em"]
    
    let arrayImg = ["achuong", "ahoang", "cphuong", "khachung", "aminh", "khahung", "alinh", "duan"]
    @IBOutlet weak var tblChatList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblChatList.dataSource = self
        tblChatList.delegate = self
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblChatList.dequeueReusableCell(withIdentifier: "ChatListIdentifier")!
        
        let lblTenNguoiDung = cell.viewWithTag(101) as! UILabel
        lblTenNguoiDung.text = arrayName[indexPath.row]
        let lblChat = cell.viewWithTag(102) as! UILabel
        lblChat.text = arrayChat[indexPath.row]
        let lblTime = cell.viewWithTag(103) as! UILabel
        lblTime.text = "5 phút"
        
        let imgAvt = cell.viewWithTag(100) as! UIImageView
        imgAvt.image = UIImage(named: arrayImg[indexPath.row])
        imgAvt.layer.cornerRadius = 45
        
        return cell
    }
    
}
