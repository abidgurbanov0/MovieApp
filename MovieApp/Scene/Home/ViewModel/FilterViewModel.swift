//
//  FilterViewModel.swift
//  MovieApp
//
//  Created by abidq on 14/03/23.
//

import Foundation


class FilterViewModel {
    var items = [FilterModel(title: "Popular", type: .popular),
                 FilterModel(title: "Trending", type: .trending),
                 FilterModel(title: "Top Rated", type: .topRated),
                 FilterModel(title: "Upcoming", type: .upcoming)]
}
