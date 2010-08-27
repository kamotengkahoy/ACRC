class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
      t.int :course_ID
      t.string :quizname
      t.string :quiztype
      t.datetime :datepublished
      t.datetime :stime
      t.datetime :etime

      t.timestamps
    end
  end

  def self.down
    drop_table :quizzes
  end
end
