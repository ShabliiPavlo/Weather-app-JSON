//
//  Extentions.swift
//  workAPI
//
//  Created by Pavel Shabliy on 15.02.2023.
//

import Foundation
import UIKit
import Alamofire

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = arrayOfCities[indexPath.row]
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        if let resultViewController = main.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
            
            
            resultViewController.cityName = city.name
            
            navigationController?.pushViewController(resultViewController, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell", for: indexPath) as? CountryTableViewCell else {
            return UITableViewCell()
        }
        
        let flagAndCity = arrayOfCities[indexPath.row]
        cell.cityNameLable.text = flagAndCity.name
        cell.countryFlag?.image = UIImage(named: flagAndCity.flag)
        return cell
    }
}
