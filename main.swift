import Foundation

//Defines wordArray, sortedWordArray, word, and input
var wordArray = [String]()
var sortedWordArray : [String]
var word : String    


// Add your code below:

  func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

// sorts integers in an array by smallest to largest
  func selectionSort(unsortedIntegers: [String]) -> [String]{
    var sortedIntegers = unsortedIntegers

//    print("Pass: 0, Swaps: 0/0, Array: \(sortedIntegers)")        

    
    for i in 0 ..< unsortedIntegers.count{
        
        var i2 = i
        var j = i + 1
        while j < unsortedIntegers.count {
            if sortedIntegers[i2] >  sortedIntegers[j] {                
                i2 = j
            } else if !(sortedIntegers[i2] >  sortedIntegers[j]){
                j += 1
            }
        }
        swap(integers:&sortedIntegers, firstIndex:i, secondIndex:i2)
    }
    return sortedIntegers
    
  }


//checks if word is nil, breaks loop if its blank, appends if it isn't 
while let word = readLine() {
    if word == "" {
     break
    } else {
    wordArray.append(word)
    }
}
  
//insertionsorts the wordArray and assigns it to sortedWordArray

//prints every word in the sortedWordArray on a new line

for word in selectionSort(unsortedIntegers:wordArray) {
    print(word)
    }


