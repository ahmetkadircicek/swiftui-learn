//
//  Router.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import SwiftUI
import Observation

@Observable
class Router {
    var path = NavigationPath()

    func push(_ route: RouteEnum) {
        path.append(route)
    }

    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func popToRoot() {
        path.removeLast(path.count)
    }

    func replace(with route: RouteEnum) {
        path = NavigationPath()
        path.append(route)
    }
}


