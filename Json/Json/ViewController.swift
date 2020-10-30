//
//  ViewController.swift
//  Json
//
//  Created by Mohamad Mortada on 10/30/20.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonTapped(_ sender: Any) {
        Decode()
        print(Exps.init(exps: "2020"))
    }
    
    let jsonString = """
    [
        {
            "exps": "Idk",
            "j_n": "Y29mcwUGAQY=",
            "i_n": "Y29mcwUGAQY=",
            "d_ts": 1603450368,
            "dh": -219564790,
            "v": 1,
            "j_s": "{ }",
            "id": "86Z-55W-495Z",
            "e_ts": 1603450683,
            "r_ts": 1603299545,
            "wdt": 2.3,
            "hgt": 4.09,
            "av": "7.1.0",
            "sv": 30801
            

             
        },
        {
            "exps": "Justin Bieber",
            
        }
    ]
    """

    func Decode() {
    let jsonData = Data(jsonString.utf8)
    let decoder = JSONDecoder()

    do {
        let exps2 = try decoder.decode([Exps].self, from: jsonData)
        print(exps2)
    } catch {
        print(error.localizedDescription)
    }
    }
    
    
    
}

struct Exps: Codable {
    var exps = ""
}

