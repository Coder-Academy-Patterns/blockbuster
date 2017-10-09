require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :title => "Title",
        :year_released => 2,
        :description => "MyText",
        :classification => "Classification",
        :genre => "Genre"
      ),
      Video.create!(
        :title => "Title",
        :year_released => 2,
        :description => "MyText",
        :classification => "Classification",
        :genre => "Genre"
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
  end
end
