//
//  InicioView.swift
//  Lista de la compra
//
//  Created by alberto on 9/5/24.
//

import SwiftUI


struct InicioView: View {
    
  //  var compra = ["aceite","pan","agua"]
    @State var cesta : [String] = []
    @State var selectedOption : Int = 0
    
    var body: some View {
        
        VStack {
            
            Section(header: Text("ESCOGE LOS PRODUCTOS")){
                Picker("Opciones", selection: $selectedOption) {
                    ForEach(0 ..< compra.count) {
                        Text(compra[$0])
                    }
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Selected option: \(compra[selectedOption])")
            /*List{
                ForEach (compra, id:\.self) { item in
                   Text(item)
                        .onTapGesture {
                            cesta.append(item)
                            print(cesta)
                        }
                }
            }*/
            Text("PRODUCTOS ESCOGIDOS:")
            List{
                ForEach (cesta, id:\.self){item2 in
                    Text(item2)
                    
                }
            }
            Spacer()
        }
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
    }
}
