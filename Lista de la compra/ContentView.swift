//
//  ContentView.swift
//  Lista de la compra
//
//  Created by alberto on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Lista de la Compra")
            .padding()
        NavigationView{
            NavigationLink(destination: InicioView()){
            Text("Iniciar")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
