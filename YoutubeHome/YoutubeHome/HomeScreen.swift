//
//  HomeScreen.swift
//  YoutubeHome
//
//  Created by Nguyễn Mạnh Linh on 13/04/2023.
//

import UIKit

class HomeScreen: UIViewController, UITableViewDataSource, UITableViewDelegate{

    let danhSachPhat = ["Một Bước Yêu Vạn Dặm Đau | Đức Phúc, Quân A.P THỔN THỨC hát về một chuyện tình BI THƯƠNG", "NCB Sing & Share Show - Mở triệu ước mơ - Tập 2 - Yêu một người có ước mơ - Đức Phúc", "Mashup We don't talk anymore, Để em rời xa | Bản live GÂY NGHIỆN cực mạnh của Đức Phúc, Tiên Cookie"]
    
    @IBOutlet weak var tblVideoList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblVideoList.dataSource = self
        tblVideoList.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return danhSachPhat.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblVideoList.dequeueReusableCell(withIdentifier: "VideoListIdentifier")!
        
        let lblTieuDeVideo = cell.viewWithTag(102) as! UILabel
        lblTieuDeVideo.text = danhSachPhat[indexPath.row]
        let lblTenKenh = cell.viewWithTag(106) as! UILabel
        lblTenKenh.text = "Biển Của Hy Vọng"
        
        let imgVideo = cell.viewWithTag(100) as! UIImageView
        imgVideo.image = UIImage(named: "imgytb1")
        let imgAvt = cell.viewWithTag(101) as! UIImageView
        imgAvt.image = UIImage(named: "avt")
        imgAvt.layer.cornerRadius = 30
        return cell
    }
}
