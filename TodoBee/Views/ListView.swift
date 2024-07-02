//
//  ListView.swift
//  TodoBee
//
//  Created by Zeynep Sena Doğan on 25.06.2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Bumblebee is AWESOME and a CAMARO!!!", isCompleted: false),
        ItemModel(title: "Optimus Prime is The Leader", isCompleted: false),
        ItemModel(title: "Mirage is Very Funnyy :))", isCompleted: true),
        ItemModel(title: "Nightbird is a R33 Skyline GT-R", isCompleted: true)
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List ✔︎")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(destination: AddView()) {
                Image(systemName: "plus")
                    .imageScale(.large)
            }
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
