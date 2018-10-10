//
//  EmojyTableViewController.swift
//  Emojy Dictionary
//
//  Created by Letitia Wu on 2018/10/8.
//  Copyright © 2018年 Letitia Wu. All rights reserved.
//

import UIKit

class EmojyTableViewController: UITableViewController {

    var emojys = ["😀", "🐢", "🐸", "💪🏼", "🍍"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojys.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojys[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ourSegue", sender: nil)
    }
}
