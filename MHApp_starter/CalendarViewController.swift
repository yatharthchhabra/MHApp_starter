//
//  CalendarViewController.swift
//  MHApp_starter
//
//  Created by Yatharth Chhabra on 2/24/21.
//

/*
    TODO: This is the calendar screen of the app. iOS does not have a native calendar framework. This means that
          we're going to have to use a 3rd party framework or create a custom calendar. More info on this later!
    
    Tips:
    - Use UITableView if you decide to create a list calendar
    - Use UILabels to display text
    - You may need to use constraints to pin the edges of your table and information within the table
    - Be creative! Play around with settings such as colors, font sizes, and alignment
 */

import UIKit

class CalendarViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
         let cell=tableView.dequeueReusableCell(withIdentifier: "calendarCell", for: indexPath)
        cell.textLabel?.text = days[indexPath.row]
        return cell
    }
    
    // an IBOutlet to the title UILabel. Basically a
    // referencable variable for the CalendarViewController class
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var testingTableView: UITableView!
    @IBOutlet weak var testingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        testingTableView.dataSource = self
        testingTableView.delegate = self
        
        //JACOBS NEW COMMENT TESTING GIT

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
