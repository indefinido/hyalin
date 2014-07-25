require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :body => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => messages_path(@message), :method => "post" do
      assert_select "input#message_name", :name => "message[name]"
      assert_select "input#message_email", :name => "message[email]"
      assert_select "input#message_subject", :name => "message[subject]"
      assert_select "input#message_body", :name => "message[body]"
      assert_select "input#message_phone", :name => "message[phone]"
    end
  end
end
