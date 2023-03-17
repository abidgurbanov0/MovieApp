//
//  MovieListController.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import UIKit

class MovieListController: UIViewController, Storyboarded {
    @IBOutlet private weak var collection: UICollectionView!
    
    var viewModel: MovieListViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureViewModel()
    }
    
    fileprivate func configureUI() {
        title = "Movie List"
        collection.registerCell(type: HorizontalMovieCell.self)
    }
    
    fileprivate func configureViewModel() {
        viewModel?.errorCallback = { [weak self] message in
            print("error: \(message)")
        }
        
        viewModel?.successCallback = { [weak self] in
            self?.collection.reloadData()
        }
    }
}

extension MovieListController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.items.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HorizontalMovieCell = collectionView.dequeueCell(for: indexPath)
        if let item = viewModel?.items[indexPath.item] {
            cell.configure(data: item)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 120)
    }
}
