//
//  SearchHelper.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import Foundation

enum SearchEndpoint: String {
    case search = "search/movie"
    
    var path: String {
        switch self {
        case .search:
            return NetworkHelper.shared.requestUrl(url: SearchEndpoint.search.rawValue)
        }
    }
}
