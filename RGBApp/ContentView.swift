//
//  ContentView.swift
//  RGBApp
//
//  Created by Павел Зубрилов on 13.06.2023.
//

import SwiftUI

// структура ContentView определяет интерфейс приложения
// протокол View это основа любого графического элемента в SwiftUI
// свойство body должно возвращать значение View (его подклассов)
// в цветовой модели RGB любой цвет кодируется тремя параметрами: Red, Green, Blue
struct ContentView: View {
    // свойства для хранения компонентов цвета
    // @State - с его помощью помечаются свойства, при изменении которых будет изменяться графический интерфейс
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    
    var body: some View {
        // VStack группирует сложенные в него элементы столбиком
        // SwiftUI содержит несколько компонентов, которые позволяют группировать другие компоненты: VStack (вертикальный стек), HStack(горизонтальный стек), ZStack(стек в шлубину), List(таблица)
        // Аргумент content каждого из них может принять до 10 графических элементов (подписанных на протокол View) и вывести их в интерфесе приложения, сгрцппировав соответствующим образом
        VStack {
            // в качестве аргумента необходимо указываем соответствующее свойство, так как redComponent помечено с помощью @State и может изменять его необходимо указать $
            // чтобы разметсить несколько элементов внутри стека их необходимо писать каждый с новой строки они будут восприниматься как последовательность автоматически обрабатываться и выводиться на экран
            Slider(value: $redComponent)
            Slider(value: $greenComponent)
            Slider(value: $blueComponent)
            // нет необходимости указывать $ так как прямоугольник должен не менять значения свойств, а лишь принимать их
            Color(red: redComponent, green: greenComponent, blue: blueComponent)
        }
        .padding(.all, 20.0)
        
    }
}

// структура ContentView_Previews выводит изображение на Canvas. Никак не влияют на интерфес приложения на устройстве (или симуляторе)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

