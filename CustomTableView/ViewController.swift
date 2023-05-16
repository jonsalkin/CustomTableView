//
//  ViewController.swift
//  CustomTableView
//
//  Created by Jon Salkin on 5/16/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   
    
    //MARK: - IBOutlets
    @IBOutlet weak var table: UITableView!
    
    
    struct FamilyPics {
        let title: String
        let imageName: String
    }
    
    let data: [FamilyPics] = [
    FamilyPics(title: "Dad", imageName: "tableJon"),
    FamilyPics(title: "Mom", imageName: "tableJulie"),
    FamilyPics(title: "Mischa", imageName: "tableMischa"),
    FamilyPics(title: "Michaela", imageName: "tableMiki"),
    FamilyPics(title: "Millie", imageName: "tableMillie"),
    FamilyPics(title: "Luna", imageName: "tableLuna"),
    FamilyPics(title: "Willow", imageName: "tableWillow"),
    ]
    
    //MARK: - VDL
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }


    //MARK: - Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let familyPic = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = familyPic.title
        cell.iconImageView.image = UIImage(named: familyPic.imageName)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

