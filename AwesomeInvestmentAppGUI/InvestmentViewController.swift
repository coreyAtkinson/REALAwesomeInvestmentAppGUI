//
//  InvestmentViewController.swift
//  AwesomeInvestmentAppGUI
//
//  Created by COREY ATKINSON on 1/13/25.
//

import UIKit
import SwiftUI
import Charts


class InvestmentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    //Outlets
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    //variables
    var companies = ["Apple Inc", "Alphabet Inc", "Amazon.com Inc"]
    var stocks = [232.15, 190.43, 217.37]
    
    //creating data for chart
    var data: [MyPofits] = [
        .init(day: "Monday", profit: 125.23),
        .init(day: "Tuesday", profit: 43.23),
        .init(day: "Wednesday", profit: 12.10)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return companies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = self.tableView(tableView, cellForRowAt: indexPath)
               
             
        cell.textLabel?.text = companies[indexPath.row]
               
               return cell
        
        
        
    }
    
    struct BarChart: View {
        var body: some View {
            Chart {
 //trying to add a bar chart

            }
        }
    }

}



struct MyPofits: Identifiable {
    var day: String
    var profit: Double
    var id = UUID()
}



         
