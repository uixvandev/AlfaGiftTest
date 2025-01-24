//
//  ListStudentTableViewCell.swift
//  AlfaGiftTest
//
//  Created by irfan wahendra on 24/01/25.
//

import UIKit

class ListStudentTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var addresStudentLabel: UILabel!
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var listStudentImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setUpUI() {
        listStudentImageView.layer.cornerRadius = 16
        cardView.layer.cornerRadius = 16
        cardView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.04).cgColor
        cardView.layer.shadowOffset = CGSize(width: 2, height: 2)
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowRadius = 8
    }
    
}
