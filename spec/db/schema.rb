ActiveRecord::Schema.define(:version => 1) do

  create_table :activities, :force => true do |t|
    t.references :user
    t.string :ip
    t.string :message
    t.string :changes
    t.string :model
    t.string :controller
    t.string :action
    t.timestamps
  end

  create_table :users, :force => true do |t|
    t.string :email
    t.timestamps
  end

  create_table :posts, :force => true do |t|
    t.string :title
    t.string :content
    t.integer :status
    t.integer :creator_id, :updater_id
    t.timestamps
  end
end