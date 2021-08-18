//
//  FindMyStarViewModel.swift
//  oasis
//
//  Created by 최은기 on 2021/08/18.
//

import SwiftUI

class FindMyStarViewModel: ObservableObject{
    @Published var jeonNam: Bool = false
    @Published var jeonBuk: Bool = false
    @Published var gwangju: Bool = false
    @Published var flat: Bool = false
    @Published var mountain: Bool = false
    @Published var sea: Bool = false
    @Published var valley: Bool = false
}
