require './Person.rb'

def create_pol
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
  end
end
