class LinkedList
  protected attr_writer :head, :tail
  def initialize
    @head = nil
  end

  def empty?
    @head.nil?
  end

  def add(val)
    l = LinkedList.new
    l.head = val
    l.tail = self
    l
  end

  def include?(val)
    return false if @head.nil?
    @head == val
  end
  # TODO: Add remove.
end