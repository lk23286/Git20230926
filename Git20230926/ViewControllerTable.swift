//
//  ViewControllerTable.swift
//  Git20230926
//
//  Created by Laszlo Kovacs on 29/09/2023.
//

import UIKit

class ViewControllerTable: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableData: UITableView!
    
    var tableArray = ["elso", "masodik", "harmadik"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableData.delegate = self
        tableData.dataSource = self
        
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



extension ViewControllerTable: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        
        return cell
    }
    
    
    
}
