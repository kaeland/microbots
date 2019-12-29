class CreateMicroBots < ActiveRecord::Migration[5.2]
  def change
    create_table :micro_bots do |t|
      t.string :access_token
      t.string :device_name
      t.string :function_name 
      t.string :function_message

      t.timestamps
    end
  end
end
