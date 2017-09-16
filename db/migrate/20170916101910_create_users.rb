class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :enterprise_id
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :password

      t.timestamps
    end
  end
end
