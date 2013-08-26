####Catch Project


A command line script in Ruby that will read the JSON file and output the name, email address and the name of the first friend of either every person in the file or only one person which position in the file is specified as an argument when running the script.
####Usage 
```
ruby catch_project.rb filename [position]
```
####Example  
```
$ ruby catch_project.rb sample.json 

----------- Output---------------------

"Larsen Hamilton (larsenhamilton@filodyne.com).  Name of one friend is: Gilmore Lancaster"
"Reid Stuart (reidstuart@corepan.com).  Name of one friend is: Boyle Duke"
"Neal Pruitt (nealpruitt@opportech.com).  Name of one friend is: Debbie William"
"Peters Deleon (petersdeleon@tingles.com).  Name of one friend is: Simpson Morse"
"Wright Wilder (wrightwilder@quilm.com).  Name of one friend is: White Mcdaniel"
"Willie Fernandez (williefernandez@aquoavo.com).  Name of one friend is: Carney Aguilar"
"Brigitte Benson (brigittebenson@xiix.com).  Name of one friend is: Waters Horn"
"Hebert Hernandez (heberthernandez@bugsall.com).  Name of one friend is: Kristy Beard"
"Guerrero Barton (guerrerobarton@zeam.com).  Name of one friend is: Madge Patel"
"Church Small (churchsmall@waab.com).  Name of one friend is: Suzanne Todd"
"Gomez Carney (gomezcarney@zolavo.com).  Name of one friend is: Verna Craig"
"Ball Sawyer (ballsawyer@icology.com).  Name of one friend is: Sharlene Mcguire"
"Brady Olsen (bradyolsen@mantro.com).  Name of one friend is: Anderson Green"

```
Will run the script using the sample JSON file, and default to the first friend listed.



####Example2 
```
ruby catch_project.rb sample.json 1
```
Will run the script using the sample JSON file, and list the 2nd Friend (Counting starts from 0)




####Tests

Run tests with 

```
ruby tests.rb 
```
Tests have been manually copied out for each friend depending on the test case, and converting to the same format as the output of the script


