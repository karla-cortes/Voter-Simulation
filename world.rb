require './Person.rb'
require './Voter.rb'
require './Politician.rb'


loop do
  print "Welcome to the Voting Sim! What would you like to do? "
  print "(C)reate, (L)ist, (U)pdate, or (D)elete "
  choice = gets.chomp.upcase

case choice
  when "C"
   puts "What would you like to create? (P)olitician or (V)oter"
    create = gets.chomp.upcase
    if create == "P"
      print "Name? "
       name = gets.chomp
        p = Politician.new(name)
        print "Party? (D)emocrat or (R)epublican "
        party = gets.chomp.upcase
    if party == 'D'
      p.party_affiliation = "Democrat"
    elsif party == 'R'
      p.party_affiliation = "Republican"
    else
     print 'Party not found!'
    end
     p.save_pol
   else
    print "Name? "
     name = gets.chomp
      v = Voter.new(name)
      print "Politics? "
      print "(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral "
      politics = gets.chomp.upcase
    if politics == "L"
      v.political_affiliation = "Liberal"
    elsif politics == "C"
      v.political_affiliation = "Conservative"
    elsif politics == 'T'
      v.political_affiliation = "Tea Party"
    elsif politics == 'S'
      v.political_affiliation = "Socialist"
    elsif politics == 'N'
      v.political_affiliation = "Neutral"
   else
     print "Party not found!"
  end
    v.save_voter
 end
  when "L"
    Politician.print_pol
    Voter.print_voter
when "U"
  print "Would you like to update a (V)oter or (P)olitician? "
  update_choice = gets.chomp.upcase
  if update_choice == 'V'
  print 'What is their name? '
  update_name = gets.chomp
   Voter.print_voter.each do |person|
     if update_name == person.name
      print "New Name? "
      new_name = gets.chomp
      person.name = new_name
      print "New Politics? "
      new_politics = gets.chomp
      person.political_affiliation= new_politics
    end
  end
  else
    print 'What is their name?'
    update_name = gets.chomp
     Politician.print_pol.each do |person|
       if update_name == person.name
        print "New Name? "
        new_name = gets.chomp
        person.name = new_name
        print "New Party? "
        new_politics = gets.chomp
        person.party_affiliation= new_politics
    end
   end
  end
when "D"
  puts "Who do you want to delete?"
  delete_name = gets.chomp
  Voter.print_voter.each_with_index do |vot, i|
    if delete_name == vot.name
      Voter.print_voter.delete_at(i)
    end
    Politician.print_pol.each_with_index do |politic, index|
          if delete_name == politic.name
            Politician.print_pol.delete_at(index)
          else
            print "Name not found!"
    end
    end
  end
 end
end
