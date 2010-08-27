class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.int :quiz_ID
      t.string :questionname
      t.string :answer
      t.int :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
