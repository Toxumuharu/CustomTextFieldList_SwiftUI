//
//  ContentView.swift
//  CustomTextFieldList_SwiftUI
//
//  Created by Toxumuharu on 2021/03/09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var arr: [String] = [""]
    @State var new = ""

    @State private var numberOfCells = 5
    @State private var currentlySelectedCell: Int = 0

    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(0 ..< self.numberOfCells) { index in
                        CharacterInputCell(currentlySelectedCell: self.$currentlySelectedCell, index: index)
                            .frame(maxHeight: UIScreen.screenHeight * 0.08)
                    }
                }.navigationTitle("TextFieldList")
            }
        }
    }
}

