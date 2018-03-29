class Task
  attr_reader :completed
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
end