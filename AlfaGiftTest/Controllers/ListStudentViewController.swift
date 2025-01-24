//
//  ListStudentViewController.swift
//  AlfaGiftTest
//
//  Created by irfan wahendra on 24/01/25.
//

import UIKit

class ListStudentViewController: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        studentTableView.dataSource = self
        
        studentTableView.register(UINib(nibName: "ListStudentTableViewCell", bundle: nil), forCellReuseIdentifier: "ListStudentCell")
    }
    
    private func setupUI() {
        navigationItem.title = "List Student"
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}

extension ListStudentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyStudents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ListStudentCell") as? ListStudentTableViewCell {
            let student = dummyStudents[indexPath.row]
            cell.studentNameLabel.text = student.name
            cell.addresStudentLabel.text = student.address
            cell.listStudentImageView.image = student.image
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
