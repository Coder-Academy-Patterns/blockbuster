require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :title => "MyString",
      :year_released => 1,
      :description => "MyText",
      :classification => "MyString",
      :genre => "MyString"
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input[name=?]", "video[title]"

      assert_select "input[name=?]", "video[year_released]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[classification]"

      assert_select "input[name=?]", "video[genre]"
    end
  end
end
