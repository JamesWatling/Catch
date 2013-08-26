require 'test/unit'

class TestFriends < Test::Unit::TestCase
    def test_no_second_argument
    	p "Testing no position is the same as the first friend"
    	output = %x(ruby catch_project.rb sample.json)
    	expected_output = "\"Larsen Hamilton (larsenhamilton@filodyne.com).  Name of one friend is: Gilmore Lancaster\"\n\"Reid Stuart (reidstuart@corepan.com).  Name of one friend is: Boyle Duke\"\n\"Neal Pruitt (nealpruitt@opportech.com).  Name of one friend is: Debbie William\"\n\"Peters Deleon (petersdeleon@tingles.com).  Name of one friend is: Simpson Morse\"\n\"Wright Wilder (wrightwilder@quilm.com).  Name of one friend is: White Mcdaniel\"\n\"Willie Fernandez (williefernandez@aquoavo.com).  Name of one friend is: Carney Aguilar\"\n\"Brigitte Benson (brigittebenson@xiix.com).  Name of one friend is: Waters Horn\"\n\"Hebert Hernandez (heberthernandez@bugsall.com).  Name of one friend is: Kristy Beard\"\n\"Guerrero Barton (guerrerobarton@zeam.com).  Name of one friend is: Madge Patel\"\n\"Church Small (churchsmall@waab.com).  Name of one friend is: Suzanne Todd\"\n\"Gomez Carney (gomezcarney@zolavo.com).  Name of one friend is: Verna Craig\"\n\"Ball Sawyer (ballsawyer@icology.com).  Name of one friend is: Sharlene Mcguire\"\n\"Brady Olsen (bradyolsen@mantro.com).  Name of one friend is: Anderson Green\"\n"
		assert_equal(output, expected_output)
    end

    def test_first_friend
    	p "Testing first friend"
    	output = %x(ruby catch_project.rb sample.json 0 )
    	expected_output = "\"Larsen Hamilton (larsenhamilton@filodyne.com).  Name of one friend is: Gilmore Lancaster\"\n\"Reid Stuart (reidstuart@corepan.com).  Name of one friend is: Boyle Duke\"\n\"Neal Pruitt (nealpruitt@opportech.com).  Name of one friend is: Debbie William\"\n\"Peters Deleon (petersdeleon@tingles.com).  Name of one friend is: Simpson Morse\"\n\"Wright Wilder (wrightwilder@quilm.com).  Name of one friend is: White Mcdaniel\"\n\"Willie Fernandez (williefernandez@aquoavo.com).  Name of one friend is: Carney Aguilar\"\n\"Brigitte Benson (brigittebenson@xiix.com).  Name of one friend is: Waters Horn\"\n\"Hebert Hernandez (heberthernandez@bugsall.com).  Name of one friend is: Kristy Beard\"\n\"Guerrero Barton (guerrerobarton@zeam.com).  Name of one friend is: Madge Patel\"\n\"Church Small (churchsmall@waab.com).  Name of one friend is: Suzanne Todd\"\n\"Gomez Carney (gomezcarney@zolavo.com).  Name of one friend is: Verna Craig\"\n\"Ball Sawyer (ballsawyer@icology.com).  Name of one friend is: Sharlene Mcguire\"\n\"Brady Olsen (bradyolsen@mantro.com).  Name of one friend is: Anderson Green\"\n"
		assert_equal(output, expected_output )
    end

    def test_second_friend
    	p "Testing second friend"
    	output = %x(ruby catch_project.rb sample.json 1)
    	expected_output = "\"Larsen Hamilton (larsenhamilton@filodyne.com).  Name of one friend is: Mills Fleming\"\n\"Reid Stuart (reidstuart@corepan.com).  Name of one friend is: Bowen Oneil\"\n\"Neal Pruitt (nealpruitt@opportech.com).  Name of one friend is: Jimenez Bailey\"\n\"Peters Deleon (petersdeleon@tingles.com).  Name of one friend is: Lindsay Kirkland\"\n\"Wright Wilder (wrightwilder@quilm.com).  Name of one friend is: Raquel Hurst\"\n\"Willie Fernandez (williefernandez@aquoavo.com).  Name of one friend is: Orr Wolfe\"\n\"Brigitte Benson (brigittebenson@xiix.com).  Name of one friend is: Walter Haley\"\n\"Hebert Hernandez (heberthernandez@bugsall.com).  Name of one friend is: Becker Torres\"\n\"Guerrero Barton (guerrerobarton@zeam.com).  Name of one friend is: Morse Townsend\"\n\"Church Small (churchsmall@waab.com).  Name of one friend is: Jean Norris\"\n\"Gomez Carney (gomezcarney@zolavo.com).  Name of one friend is: Susana Mathis\"\n\"Ball Sawyer (ballsawyer@icology.com).  Name of one friend is: Holly Mayer\"\n\"Brady Olsen (bradyolsen@mantro.com).  Name of one friend is: Mckee Gonzales\"\n"
		assert_equal(output, expected_output )
    end
    def test_third_friend
    	p "Testing third friend"
    	output = %x(ruby catch_project.rb sample.json 2)
    	expected_output = "\"Larsen Hamilton (larsenhamilton@filodyne.com).  Name of one friend is: Patterson Erickson\"\n\"Reid Stuart (reidstuart@corepan.com).  Name of one friend is: Ashley Hansen\"\n\"Neal Pruitt (nealpruitt@opportech.com).  Name of one friend is: Ward Blackburn\"\n\"Peters Deleon (petersdeleon@tingles.com).  Name of one friend is: Pittman Greene\"\n\"Wright Wilder (wrightwilder@quilm.com).  Name of one friend is: Meagan Casey\"\n\"Willie Fernandez (williefernandez@aquoavo.com).  Name of one friend is: Elliott Nichols\"\n\"Brigitte Benson (brigittebenson@xiix.com).  Name of one friend is: Lucile Sanders\"\n\"Hebert Hernandez (heberthernandez@bugsall.com).  Name of one friend is: Lilian Banks\"\n\"Guerrero Barton (guerrerobarton@zeam.com).  Name of one friend is: Juliet Garza\"\n\"Church Small (churchsmall@waab.com).  Name of one friend is: Cruz Gilbert\"\n\"Gomez Carney (gomezcarney@zolavo.com).  Name of one friend is: Wiley Velazquez\"\n\"Ball Sawyer (ballsawyer@icology.com).  Name of one friend is: Ware Benton\"\n\"Brady Olsen (bradyolsen@mantro.com).  Name of one friend is: Ross Odonnell\"\n"
		assert_equal(output, expected_output )
    end
    def test_out_of_bounds_friend
    	p "Testing out of bounds position gives me the first friend"
		output = %x(ruby catch_project.rb sample.json 25)
		expected_output = "\"Larsen Hamilton (larsenhamilton@filodyne.com).  Name of one friend is: Gilmore Lancaster\"\n\"Reid Stuart (reidstuart@corepan.com).  Name of one friend is: Boyle Duke\"\n\"Neal Pruitt (nealpruitt@opportech.com).  Name of one friend is: Debbie William\"\n\"Peters Deleon (petersdeleon@tingles.com).  Name of one friend is: Simpson Morse\"\n\"Wright Wilder (wrightwilder@quilm.com).  Name of one friend is: White Mcdaniel\"\n\"Willie Fernandez (williefernandez@aquoavo.com).  Name of one friend is: Carney Aguilar\"\n\"Brigitte Benson (brigittebenson@xiix.com).  Name of one friend is: Waters Horn\"\n\"Hebert Hernandez (heberthernandez@bugsall.com).  Name of one friend is: Kristy Beard\"\n\"Guerrero Barton (guerrerobarton@zeam.com).  Name of one friend is: Madge Patel\"\n\"Church Small (churchsmall@waab.com).  Name of one friend is: Suzanne Todd\"\n\"Gomez Carney (gomezcarney@zolavo.com).  Name of one friend is: Verna Craig\"\n\"Ball Sawyer (ballsawyer@icology.com).  Name of one friend is: Sharlene Mcguire\"\n\"Brady Olsen (bradyolsen@mantro.com).  Name of one friend is: Anderson Green\"\n"
		assert_equal(output, expected_output )
	end
end

