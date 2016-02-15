require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  def show
    render template: "about/#{params[:page]}"
  end
  # test "the truth" do
  #   assert true
  # end
end
