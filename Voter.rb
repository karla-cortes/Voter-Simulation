require './Person.rb'

class Voter < Person
 @@voters = []
 attr_accessor :political_affiliation


  def save_voter
    @@voters << self
  end

  def self.print_voter
    @@voters.each do |voter|
      print "Voter, #{voter.name}, #{voter.political_affiliation}\n"
  end
 end
end
