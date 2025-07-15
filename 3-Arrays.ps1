# $myArray = @()

# $myArray.GetType()
# $myArray.IsFixedSize

# Write-Output("=" * 80)

# $myArray = @("Test1", "Test2", "Test3")

# $myArray.Count
# $myArray.Length

# $myArray
# $myArray[1]    #zero-based indexing
# $myArray[3] 

#there is no index 3 in the array above, so nothing in the output, 
# but if you need to give you error in the output, just execute this command:
# Set-StrictMode -Version Latest
# if you need to revert back, execute this command:
# Set-StrictMode -Off

# $myArray.Add("Test4")    #error because it is fixed size 
# $myArray.IsFixedSize

# $myArray = $myArray + "Test4"
# $myArray

#or

# $myArray += "Test4"
# $myArray

# $myArray.RemoveAt(1)    #error because it is fixed size
# $myArray.Remove("Test2")   #error because it is fixed size
# $myArray=$myArray - "Test2"   #error
# $myArray -= "Test2"   #error

# $myArray = $myArray -ne "Test2"
# $myArray

# Write-Output("=" * 100)

#Array List

# $myList1 = [System.Collections.ArrayList]@()   #old method
# $myList = New-Object -TypeName System.Collections.ArrayList    #new method

# $myList1.GetType()
# $myList.GetType()

# $myList.IsFixedSize
# $myList.Add("Test1")
# $myList.Add("Test2")

# [void]$myList.Add("Test1")   # same as previous, but avoiding output of indexing
# [void]$myList.Add("Test2")

# $myList

# Write-Output("=" * 100)

# $myList.AddRange(@("Test3", "Test4", "Test5"))
# $myList
# # $myList.Count
# # $myList[1]

# Write-Output("=" * 100)

# $myList.Remove("Test2")
# $myList

# Write-Output("=" * 100)

# $myList.RemoveAt(0)
# $myList

# Write-Output("=" * 100)

# $myList.RemoveRange(0, 2)   # End not included
# $myList

# Write-Output("=" * 100)

# $array = @()
# Measure-Command -Expression { @(1..50000).ForEach({ $array += $_ }) }

# $arrayList = New-Object -TypeName System.Collections.ArrayList
# Measure-Command -Expression { @(1..50000).ForEach({ $arrayList.Add($_) }) }   #less time than above

# $arrayList = New-Object -TypeName System.Collections.ArrayList
# Measure-Command -Expression { $arrayList.AddRange(@(1..50000)) }         #less time of all