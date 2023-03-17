# frozen_string_literal: true

class CreateLounges < ActiveRecord::Migration[7.0]
  def change
    create_table :lounges do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
