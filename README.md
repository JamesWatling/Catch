####Catch Project


A command line script in Ruby that will read the JSON file and output the name, email address and the name of the first friend of either every person in the file or only one person which position in the file is specified as an argument when running the script.
####Usage 
```
ruby catch_project.rb filename [position]
```
####Example  
```
ruby catch_project.rb sample.json 
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


