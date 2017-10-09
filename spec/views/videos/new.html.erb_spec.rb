require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :title => "MyString",
      :year_released => 1,
      :description => "MyText",
      :classification => "MyString",
      :genre => "MyString"
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input[name=?]", "video[title]"

      assert_select "input[name=?]", "video[year_released]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[classification]"

      assert_select "input[name=?]", "video[genre]"
    end
  end
end
