//
//  ResultViewController.swift
//  workAPI
//
//  Created by Pavel Shabliy on 14.02.2023.
//

import UIKit
import Alamofire
import SDWebImage

class ResultViewController: UIViewController {
    
    @IBOutlet weak var randomImage: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    
    var cityName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=4cdcf6c88b1d745b2d3601b52ae18dd4&units=metric"
        
        AF.request(url).responseJSON {  response in
            do{

                let decoder = JSONDecoder()
                let allData = try decoder.decode(TemperatureData.self, from: response.data!)
                var result = allData.main?.temp ?? 0.0
                self.temperature.text = String(Int(result))
            } catch {

                print(error)
            }

        }
        
        let randomWidht = Int.random(in: 1...5)
        let randomHight = Int.random(in: 1...5)
        let imageURLString: String = "https://picsum.photos/\(randomWidht)00/\(randomHight)00"
        let imageURL: URL = URL(string: imageURLString)!
        randomImage.sd_setImage(with: imageURL, completed: nil)
       
    }
}

