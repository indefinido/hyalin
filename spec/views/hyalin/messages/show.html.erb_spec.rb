require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "Name",
      :email => "Email",
      :subject => "Subject",
      :body => "Body",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Subject/)
    rendered.should match(/Body/)
    rendered.should match(/Phone/)
  end
end
