require "classnames/version"
require "classnames/classnames"

def Classnames(*classes)
  Classnames::Classnames.new(classes).to_s
end
