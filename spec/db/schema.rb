ActiveRecord::Schema.define(:version => 1) do

  create_table :activites, :force => true do |t|
    t.string :user_id
    t.string :ip
    t.string :message
    t.string :changes
    t.string :model
    t.string :action
  end

  create_table :users, :force => true do |t|
    t.string :email
  end

  create_table :posts, :force => true do |t|
    t.string :title
    t.string :content
    t.integer :status
    t.integer :creator_id, :updater_id
  end
end