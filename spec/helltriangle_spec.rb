require "./spec/spec_helper"

RSpec.describe Helltriangle do

  it "must receive an array" do
    expect{ Helltriangle.new(String.new) }.to raise_error(RuntimeError)
  end

  it "must receive a triangle multidimensional array" do
    non_triangular_multidimensional = [[1], [2], [1,3]]
    expect{ Helltriangle.new(non_triangular_multidimensional) }.to raise_error(RuntimeError)
  end

  it "must return the maximum total from top to bottom" do
    triangle = Helltriangle.new([[6],[3,5],[9,7,1],[4,6,8,4]])
    expect(triangle.sum).to eql(26)
  end
end
