class Tribe
  attr_reader :name, :members
  
  def initialize(options={})
    @name=options[:name] if options[:name]
    @members=options[:members] if options[:members]
    puts "#{@name}, #{@members}"
  end
  
  def tribal_council(immune:)
    begin
      member_pick=@members.sample
    end until member_pick!=immune
    @members.delete(member_pick)
  end
  
  def to_s
    @name
  end
 
 

  
end