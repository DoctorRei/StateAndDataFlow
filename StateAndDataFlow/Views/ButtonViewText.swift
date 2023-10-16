//
//  ButtonViewText.swift
//  StateAndDataFlow
//
//  Created by Акира on 15.10.2023.
//

import SwiftUI

struct ButtonViewText: View {
    
    @State var buttonState = true
    
    var textTest: String
    
    var body: some View {
        Text(textTest)
    }
    
    
    func buttonEnabled() {
        DispatchQueue.main.async {
            buttonState = false
        }
    }
    
    func buttonDisabled() {
        DispatchQueue.main.async {
            buttonState = true
        }
    }
}



struct ButtonViewText_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewText(textTest: "")
    }
}


/*
 struct ContentView: View {
 @State private var inputText = ""
 
 var body: some View {
 VStack {
 TextField("Введите текст", text: $inputText)
 .padding()
 .onChange(of: inputText) { newValue in
 // Проверяем длину введенного текста и обновляем состояние кнопки
 if newValue.count <= 2 {
 // Если текст короче или равен 2 символам, кнопка становится неактивной
 disableButton()
 } else {
 // Если текст длиннее 2 символов, кнопка становится активной
 enableButton()
 }
 }
 
 Button(action: {
 // Действие при нажатии кнопки
 print("Кнопка нажата")
 }) {
 Text("Моя кнопка")
 .padding()
 .background(Color.blue)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 .disabled(true) // Изначально кнопка неактивна
 .padding()
 }
 }
 
 func enableButton() {
 // Обновляем состояние кнопки на активное
 DispatchQueue.main.async {
 self.isButtonDisabled = false
 }
 }
 
 func disableButton() {
 // Обновляем состояние кнопки на неактивное
 DispatchQueue.main.async {
 self.isButtonDisabled = true
 }
 }
 }
 
 */
