class Jury
  attr_accessor :members
  def initialize
    @members=[]
  end
  
  def add_member(jury_member)
    @members << jury_member
  end
  
  def cast_votes(finalists)
    Hash[finalists.collect {|finalist| [finalist,0]}]
  end
  
end