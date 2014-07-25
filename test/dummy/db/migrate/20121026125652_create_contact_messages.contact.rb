# This migration comes from hyalin (originally 20121024194042)
class CreateHyalinMessages < ActiveRecord::Migration
  def change
    create_table :hyalin_messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :body
      t.string :phone

      t.timestamps
    end
  end
end
