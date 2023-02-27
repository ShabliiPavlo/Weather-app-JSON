//
//  ViewController.swift
//  workAPI
//
//  Created by Pavel Shabliy on 14.02.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let arrayOfCities:[City] = ListOfCities.list
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CountryTableViewCell", bundle: nil), forCellReuseIdentifier: "CountryTableViewCell")
    }
}


