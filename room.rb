class Room
  attr_accessor :party

  def initialize
    @party = nil
  end

  def allocate_party(party)
    if @party.nil?
      @party = party
      party.allocate_room(self) 
    else
      raise "Room is already occupied."
    end
  end

  #  method to get the party name
  def party_name
    @party ? @party.name : "Vacant"
  end
end
