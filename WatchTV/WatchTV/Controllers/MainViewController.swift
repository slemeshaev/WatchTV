//
//  MainViewController.swift
//  WatchTV
//
//  Created by Станислав Лемешаев on 03.12.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    // таблица
    let mainTableView = UITableView()
    
    // ячейка
    let identifire = "myCell"
    
    // данные
    let data = [Menu(header: "Кино и сериалы",
                     row: [MovieModel(movieTitle: "Грозный", genre: "Детектив"),
                           MovieModel(movieTitle: "Годунов", genre: "Драма"),
                           MovieModel(movieTitle: "Синяя птица", genre: "Гранд-шоу"),
                           MovieModel(movieTitle: "Бомба", genre: "Драма")]),
                Menu(header: "Новостные передачи",
                                 row: [MovieModel(movieTitle: "Вести недели", genre: "Новости"),
                                       MovieModel(movieTitle: "Синяя птица", genre: "Гранд-шоу"),
                                       MovieModel(movieTitle: "Москва. Кремль. Путин", genre: "Вс. 22:00")]),
                Menu(header: "Новинки",
                                 row: [MovieModel(movieTitle: "Синяя птица", genre: "Гранд-шоу"),
                                       MovieModel(movieTitle: "Формула еды", genre: "Шоу")])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .white
        
        let mainTableViewFrame = CGRect(x: 10, y: 200, width: 1390, height: 1600)
        mainTableView.frame = mainTableViewFrame
        
        // регистрация ячейки
        mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        self.view.addSubview(mainTableView)
    }

}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        data[section].header
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].row.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = mainTableView.dequeueReusableCell(withIdentifier: identifire) else { return UITableViewCell() }
        let movie = data[indexPath.section].row[indexPath.row]
        cell.textLabel?.numberOfLines = 2
        cell.imageView?.image = #imageLiteral(resourceName: "Image")
        cell.textLabel?.text = "\(movie.movieTitle)\n\(movie.genre)"
        return cell
    }
    
}
