class Task
  attr_reader :title, :id, :completed, :due_date
  def initialize(id, title, due_date = nil)
    # validaciones
    @title = title
    @id = id
    @completed = false
    @due_date = due_date
  end

  def complete
    @completed = true
  end

  def ==(other)
    false unless other.is_a? Task
    @title == other.title && @id == other.id
  end

  def eql?(other)
    self.==(other)
  end

  def <=>(other)
    # validaciones
    return @id > other.id if @due_date == other.date
    @due_date > other.due_date
  end

  def hash
    [@title, @id, @completed, @due_date].hash
  end
end