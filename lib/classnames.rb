require "classnames/version"

module Classnames
  def self.to_s(*classes)
    Classnames.new(classes).to_s
  end

  class Classnames
    def initialize(*classes)
      @classes = classes
    end

    def to_a
      @classes.map { |css_class|
        if css_class.is_a?(Hash)
          compact_keys(css_class)
        else
          css_class
        end
      }.flatten.map(&:to_s)
    end

    def to_s
      to_a.join(" ")
    end

    private

    def compact_keys(classname_hash)
      classname_hash.reject { |_, value| value.nil? || value == false }.keys
    end
  end
end
