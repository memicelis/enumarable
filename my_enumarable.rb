module MyEnumarable
  def all?()
    value = true
    each { |n| value = false unless yield n }
    value
  end

  def any?
    found = false
    each { |n| found = true if yield n }
    found
  end

  def filter()
    result = []
    each { |n| result << n if yield n }
    result
  end
end
