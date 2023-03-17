//
//  SearchManager.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import Foundation

protocol SearchManagerProtocol {
    func getSearchItems(text: String, page: Int, complete: @escaping((Movie?, Error?)->()))
}

class SearchManager: SearchManagerProtocol {
    static let shared = SearchManager()
    
    func getSearchItems(text: String, page: Int, complete: @escaping ((Movie?, Error?) -> ())) {
        NetworkManager.shared.request(type: Movie.self,
                                      url: SearchEndpoint.search.path + "&query=\(text)&page=\(page)",
                                      method: .get) { response in
            switch response {
            case .success(let data):
                complete(data, nil)
            case .failure(let error):
                complete(nil, error)
            }
        }
    }
}
