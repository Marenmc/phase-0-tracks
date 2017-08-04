class TodoList

  def initialize(x, y)
    @list = [x, y]
  end

  def get_items
    @list
  end

  def add_item(z)
    @list.push(z)
  end

  def delete_item(x)
    @list.delete(x)
  end

  def get_item(i)
    num = i.to_i
    @list[num]
  end

end