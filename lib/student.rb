class Student < User

  attr_accessor :knowledge

  @@all = []

  def initialize
    @knowledge = []
    @@all << self
  end

  def learn(string)
    @knowledge << string
  end

  def knowledge
    @knowledge
  end

  def self.all
    @@all
  end

  def self.all_student_knowledge
    self.all.each {|pupil| puts "#{pupil.first_name}: #{pupil.knowledge}"}
  end

end
