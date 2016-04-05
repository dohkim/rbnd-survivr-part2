class Game
  attr_reader :tribes
  
  def initialize(tribe_first, tribe_second)
    @tribes=[]
    @tribes << tribe_first
    @tribes << tribe_second
  end
  
  def add_tribe(tribe_three)
    @tribes << tribe_three
  end
  
  def immunity_challenge
    @tribes.sample
  end
  
  def clear_tribes
    @tribes=[]
  end
  
  def merge(name)
    new_memebers=[]
    @tribes.each do |tribe|
      new_memebers += tribe.members
    end
    Tribe.new(name: name, members: new_memebers)
  end
    
  def individual_immunity_challenge
    target_tribe=immunity_challenge
    immune=target_tribe.members.sample
    target_tribe.tribal_council(immune: immune)
  end
  
end