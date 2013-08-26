# Catch Design Test Project
# @author James Watling 2013
require "rubygems"
require "json"

class CatchProject

  def initialize
    #reads in first two arguments, in order of filename then position (if applicable), assuming all results have the same number of friends
    filename, position = ARGV
    #checks if the file exists
    unless File.exist? filename
    	#reaches here if the file does not exist, and notifies user, exits program
    	p 'File does not exist, please check the name and try again' and exit
    end

    #read file and parse json to ruby hash
    file = File.open filename
    json = file.read
    parsed = JSON.parse json

    #for every person in the file
    parsed['result'].each do |person|
    	#if a position has NOT been specified
    	unless position
    		#just get the first friend
      		friend = person['friends'].first
      	#the user has specified a position
      	else
      		#if the result has a friend at the user specified position
      		if person['friends'][position.to_i]
      			#get the friend at the position specified by the user
      			friend = person['friends'][position.to_i]
      		else
      			#if friend with that number does not exist, fallback to first friend
      			friend = person['friends'].first
      		end
        end
        #prints each persons name, and email address (and placeholder text)
    	p person['name'] + ' (' + person['email'] + ').  Name of one friend is: ' +  friend['name']
    end
  end
end

c = CatchProject.new

