//
//  ViewController.swift
//  accelerometron
//
//  Created by MOHAMED on 10/14/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITableViewDataSource, UITableViewDelegate {
  


    @IBOutlet weak var ListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ListTableView.dataSource = self
        ListTableView.delegate = self
        
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Services.Instance.getMyList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as? ListCell
    {
        let list = Services.Instance.getMyList()[indexPath.row]
        cell.updateView(List: list)
        return cell
        
        }else
    {
        return ListCell()
        }
    }
    

    
}

