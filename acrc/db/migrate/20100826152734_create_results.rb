class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.int :question_ID
      t.int :enrollment_ID
      t.datetime :stime
      t.datetime :etime
      t.int :score

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
