require "minitest/autorun"
require File.expand_path("../../lib/classnames", __FILE__)

class TestClassnames < Minitest::Test
  def test_splat
    assert_equal Classnames::Classnames.new("Component").to_s, "Component"
    assert_equal Classnames::Classnames.new("Component", "Component--modifier").to_s, "Component Component--modifier"
  end

  def test_hash
    classes = Classnames::Classnames.new({
      "Component" => true,
      "FalseClass" => false,
      "NilClass" => nil,
      "Component--modifier" => true,
    })
    assert_equal classes.to_s, "Component Component--modifier"
  end

  def test_symbols
    classes = Classnames::Classnames.new(:Component)
    assert_equal classes.to_s, "Component"
  end

  def test_arrays
    classes = Classnames::Classnames.new([:Component, "Component--modifier"])
  end

  def test_complex
    classes = Classnames::Classnames.new(:Component, ["blue", :clearfix], {
      "is-rowdy" => true,
      green: true,
      red: nil,
      yellow: false,
    })
    assert_equal classes.to_s, "Component blue clearfix is-rowdy green"
  end

  def test_module
    assert_equal Classnames.to_s("class", "classy"), "class classy"
  end
end
