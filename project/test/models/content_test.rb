require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Must have title" do
    contenido1 = Content.create({description: "algo"})
    assert_not contenido1.valid?
    contenido2 = Content.create({title: "123456", description: "algo"})
    contenido2.valid?
    assert_equal contenido2.errors.messages[:title].size, 0
  end
  
end
