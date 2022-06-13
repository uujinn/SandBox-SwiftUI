//
//  TodosView.swift
//  Deeplink
//
//  Created by 양유진 on 2022/06/13.
//

import SwiftUI

struct TodoItem: Identifiable, Hashable {
  var id: UUID
  var title: String
}

func prepareData() -> [TodoItem]{
  print("prepareData() called")
  
  var newList = [TodoItem]()
  
  for i in 0...20{
    let newTodo = TodoItem(id: UUID(), title: "내 할일 \(i)")
    newList.append(newTodo)
    print("newTodo.id: \(newTodo.id) / title: \(newTodo.title)")
  }
  
  return newList
}

struct TodosView: View {
  
  @State var todoItems = [TodoItem]()
  @State var activeUUID: UUID?
  
  //생성자 메소드
  init(){
    _todoItems = State(initialValue: prepareData())
  }
  
  var body: some View {
    NavigationView{
      List(todoItems){ todoItem in
        
        NavigationLink(destination: Text("\(todoItem.title)"), tag: todoItem.id, selection: $activeUUID, label: {
          Text("\(todoItem.title)")
        })
//        NavigationLink(destination: Text("\(todoItem.title)"), label: {
//          Text("\(todoItem.title)")
//        })
      }
      .listStyle(.plain)
      .navigationTitle(Text("할 일 목록"))
      .onOpenURL(perform: { url in
        if case .todoItem(let id) = url.detailPage {
          print("넘어온 id: \(id)")
          activeUUID = id
        }
        
      })
    }
  }
}

struct TodosView_Previews: PreviewProvider {
  static var previews: some View {
    TodosView()
  }
}
