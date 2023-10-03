//
//  ViewControllerTableCustom.swift
//  Git20230926
//
//  Created by Laszlo Kovacs on 03/10/2023.
//

import UIKit

class ViewControllerTableCustom: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableForCustomCell: UITableView!
    
    var customTableArray = ["elso", "masodik", "harmadik"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableForCustomCell.delegate = self
        tableForCustomCell.dataSource = self
        
        let nib = UINib(nibName: "TableViewCellCustom", bundle: nil)
        
        tableForCustomCell.register(nib, forCellReuseIdentifier: "Cell")

        // Do any additional setup after loading the view.
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

extension ViewControllerTableCustom: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        customTableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCellCustom
        
        cell.customTextField.text = customTableArray[indexPath.row]
        
        return cell
        
        
    }
    
    
}

