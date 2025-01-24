//
//  Student.swift
//  AlfaGiftTest
//
//  Created by irfan wahendra on 24/01/25.
//

import Foundation
import UIKit

struct Student {
    let id: Int
    let name: String
    let image: UIImage
    let address: String
}

let dummyStudents: [Student] = [
    Student(id: 1, name: "Irfan Wahendra",
            image: UIImage(named: "Gambar1")!,
            address: "Padang"),
    Student(id: 2, name: "Ahmad Fauzan",
            image: UIImage(named: "Gambar2")!,
            address: "Jakarta"),
    Student(id: 3, name: "Siti Aminah",
            image: UIImage(named: "Gambar3")!,
            address: "Surabaya"),
    Student(id: 4, name: "Budi Santoso",
            image: UIImage(named: "Gambar4")!,
            address: "Bandung"),
    Student(id: 5, name: "Ratna Dewi",
            image: UIImage(named: "Gambar5")!,
            address: "Yogyakarta"),
    Student(id: 6, name: "Agus Riyadi",
            image: UIImage(named: "Gambar6")!,
            address: "Malang"),
    Student(id: 7, name: "Nur Hidayah",
            image: UIImage(named: "Gambar7")!,
            address: "Medan"),
    Student(id: 8, name: "Hendra Saputra",
            image: UIImage(named: "Gambar8")!,
            address: "Palembang"),
    Student(id: 9, name: "Desi Purnama",
            image: UIImage(named: "Gambar9")!,
            address: "Makassar"),
    Student(id: 10, name: "Indra Kurniawan",
            image: UIImage(named: "Gambar10")!,
            address: "Denpasar")
]

