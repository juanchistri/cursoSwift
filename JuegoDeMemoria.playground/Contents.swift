//: Playground - noun: a place where people can play

import UIKit

// Rango de 0 a 100
for index in 0...100
{
    if ((index % 5) == 0) //Si es divisible entre 5
    {
        print ("\(index) Bingo!!!")
    }
    if ((index % 2) == 0) // Si es par
    {
        print ("\(index) par")
    }
    else //Es impar
    {
        print("\(index) impar")
    }
    if (index >= 30 && index <= 40) { // Está en el rango de 30 a 40
        print ("\(index) Viva Swift")
    }
    
}
