class Classnames::Classnames
  def initialize(*classes)
    @classes = classes.map { |classname| normalize(classname) }.flatten
    self
  end

  def remove(classname)
    classes.delete(classname)
    self
  end

  def add(classname)
    classes << normalize(classname)
    self
  end

  def to_a
    classes.map(&:to_s)
  end

  def to_s
    to_a.join(" ")
  end

  private

  attr_reader :classes

  def normalize(classname)
    classname.is_a?(Hash) ? compact_keys(classname) : classname
  end

  def compact_keys(classname_hash)
    classname_hash.select { |_, value| value }.keys
  end
end
