//
//  main.swift
//  TuplesProject
//
//  Created by Boris Zitsermsn on 20.09.2022.
//

import Foundation

// Tuples

var currentWetherOne = (22, "Sunny")

class Weather {
    var currentWeather: (Int, String)
    
    init(currentWeather: (Int, String)) {
        self.currentWeather = currentWeather
    }
}

let weather = Weather(currentWeather: currentWetherOne)
print(weather.currentWeather)

// Доступ к элементам
print(currentWetherOne.0) // 22
print(currentWetherOne.1) // Sunny

currentWetherOne.0 = 24
currentWetherOne.1 = "Rain"

let (temperature, atmos) = weather.currentWeather
print(temperature)
print(atmos)

let (temperature2, _) = weather.currentWeather
print(temperature2)


// Изменение элементов кортежа

let currentWeather = (temp: 32, atmos: "Rain", windspeed: 7)

print(currentWeather.temp) // 32
print(currentWeather.atmos)  // Rain
print(currentWeather.windspeed)  // 7


// Массовой присвоение значений

var numberOne = 1
var numberTwo = 2
var numberThree = 3

(numberOne, numberTwo, numberThree) = (4, 5, 6) // так делать не надо!!!

var cityTemp = [
    "Moscow": Int.random(in: 24...33),
    "Ufa": Int.random(in: 20...29),
    "S - Pb": Int.random(in: 15...27)
]


for (city, temp) in cityTemp {
    print(city, temp)
}

let cityList = cityTemp.sorted(by: <)

for cityTemp in cityList {
    print("\(cityTemp.key) \(cityTemp.value)")
}

func getTemp(in city: String) -> (city: String, temp: Int) {
    let temp = Int.random(in: 16...36)
    return (city, temp)
}

let (city, temp) = getTemp(in: "Ufa")
print("Температура в городе \(city) составляет \(temp) градусов")

let tempInCity = getTemp(in: "Moscow")
print("Температура в городе \(tempInCity.city) составляет \(tempInCity.temp) градусов")
