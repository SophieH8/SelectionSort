

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

  func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

// sorts integers in an array by smallest to largest
  func selectionSort(unsortedIntegers: [Int]) {
    var sortedIntegers = unsortedIntegers
    var swaps = 0
    var swapTotal = 0
    var pass = 0

//    print("Pass: 0, Swaps: 0/0, Array: \(sortedIntegers)")        

    
    for i in 0 ..< unsortedIntegers.count{
        
        print("Pass: \(pass), Swaps: \(swaps)/\(swapTotal), Array: \(sortedIntegers)")
        var i2 = i
        var j = i + 1
        swaps = 0
        while j < unsortedIntegers.count {
            if sortedIntegers[i2] >  sortedIntegers[j] {                
                i2 = j
            } else if !(sortedIntegers[i2] >  sortedIntegers[j]){
                j += 1
            }
        }
        swaps += 1
        swapTotal += 1            
        pass += 1
        swap(integers:&sortedIntegers, firstIndex:i, secondIndex:i2)
    }
  }


selectionSort(unsortedIntegers: unsortedIntegers)
