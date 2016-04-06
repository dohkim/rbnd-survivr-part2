class Jury
  attr_accessor :members
  def initialize
    @members=[]
    @votes=Hash.new
  end
  
  def add_member(jury_member)
    @members << jury_member
  end
  
  def cast_votes(finalists)
    finalists.each do |finalist|
      @votes[finalist.name]=0
    end
    
    @members.size.times do 
      @votes[finalists.sample.name] += 1
      puts "Someone voted"
    end
    @votes
  end
  
  def report_votes(final_votes)
    final_votes.each do |k, v|
      puts "#{k} : #{v}"
    end
  end
  
  def announce_winner(final_votes)
    final_votes.sort_by {|k,v| v}
    p "Final Winner"
    p final_votes.keys.first
  end
      
end