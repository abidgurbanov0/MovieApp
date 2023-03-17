//
//  MovieListViewModel.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import Foundation

enum MovieListType {
    case person
}

class MovieListViewModel {
    let id: Int?
    var items = [MovieResult]()
    
    var successCallback: (()->())?
    var errorCallback: ((String)->())?
    
    init(id: Int, type: MovieListType) {
        self.id = id
        
    
    }
    
    
}
