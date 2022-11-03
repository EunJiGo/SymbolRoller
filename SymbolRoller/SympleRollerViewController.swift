//
//  SympleRollerViewController.swift
//  SymbolRoller
//
//  Created by 고은지 on 2022/11/02.
//

import UIKit

class SympleRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imagevView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherRambom()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
//        print("와 눌렸다")
        weatherRambom()
        
    }
    
    func weatherRambom() {
        let symbol = symbols.randomElement()!
        
        imagevView.image = UIImage(systemName: symbol)
        label.text = symbol
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
