require './Person.rb'

class Politician < Person
  @@politicians = []
  attr_accessor :party_affiliation

  def save_pol
    @@politicians << self
  end

  def self.print_pol
      @@politicians.each do |politician|
      print "Politician, #{politician.name}, #{politician.party_affiliation}\n"
    end
  end
end
