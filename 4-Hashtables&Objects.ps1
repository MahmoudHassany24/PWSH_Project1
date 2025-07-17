Set-StrictMode -Version Latest
Set-StrictMode -off

# 1- Hashtables
# ==============

$myHashtable = @{
    key1 = 1
    key2 = -2
    key3 = 3.4
    name = 'Mahmoud Hassany'
    key4 = $true
}

$myHashtable.GetType()
$myHashtable.Keys         # Hashtables are unordered
$myHashtable.Values
$myHashtable.key2
$myHashtable['key2']
$myHashtable['key6']      # no output, not exist
$myHashtable.ContainsKey('key6')  # False
$myHashtable.ContainsValue('Mahmoud Hassany')  # True

# keys are unique but values not unique

# $myHashtable = @{
#     key1 = 1
#     key2 = -2
#     key3 = 3.4
#     name = 'Mahmoud Hassany'
#     key4 = $true
#     key4 = $true    # error, keys must be unique
#     key5 = $true    # values not unique
# }

# Adding to Hashtable

$myHashtable.Add('key7', '15')               # added by add method
$myHashtable                                 # Hashtables are unordered

$myHashtable['key8'] = '16'                  # added by square bracket
$myHashtable 

$myHashtable.key9 = '17'                     # added by dot notation
$myHashtable 

# Modifing Hashtable

$myHashtable.key9 = '19'                     # modifing key9
$myHashtable

# Removing from Hashtable

$myHashtable.Remove('key9')                  # removing key9
$myHashtable

Write-Output('=' * 110)

# 2- Custom Objects
# ==================

$employee1 = New-Object -TypeName pscustomobject

# $employee1.GetType()

Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'EmployeeID' -Value 158760
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'FirstName' -Value 'Mahmoud'
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'LastName' -value 'Hassany'

# $employee1
# $employee1.EmployeeID
# $employee1.FirstName
# $employee1.LastName

Get-Member -InputObject $employee1

# another method to create custom object

$employee2 = [PSCustomObject]@{
    EmployeeID = 303150
    FirstName  = 'Eslam'
    LastName   = 'Adel'
}

$employee2

# if you need it in one raw, separate every with semi colon, For example:
# $employee2 = [PSCustomObject]@{EmployeeID = 303150;FirstName  = 'Eslam';LastName   = 'Adel'}