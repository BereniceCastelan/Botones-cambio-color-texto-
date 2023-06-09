//
//  ContentView.swift
//  JATZIRI BERENICE
//
//  Created by CEDAM09 on 12/04/23.
//

import SwiftUI

struct ContentView: View
{
    @State private var boton = false
    
    var body: some View
    {
        ZStack
        {
            VStack
            {
                Button("ESTE ES TU PRIMER BOTON")
                {
                    
                    boton.toggle()//para boleanos camboia siu valor actiual por el opuesto
                }
            
            .buttonStyle(.bordered)//estilo de boton borde
            .foregroundColor(.black)
            if boton
            {
                Text("Me gusta el azul")
                    .foregroundColor(.blue)
                    .cornerRadius(130)
                    .background(Rectangle())
                    .cornerRadius(40)
                    .shadow(radius: 46)
                    .padding(2)
                
                    Image(systemName: "star.fill")
                    .foregroundColor(.blue)
            }
            else
            {
                Text("Me gusta el verde ")
                    .foregroundColor(.green)
                    .background(Rectangle())
                    .cornerRadius(40)
                    .shadow(radius: 46)//relleno contorno
                    .padding(2)
                
                Image(systemName: "star.fill")
                .foregroundColor(.green)
            }
         }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
