class CreateEnrollments < ActiveRecord::Migration
  def self.up
    create_table :enrollments do |t|
      t.int :user_ID
      t.int :course_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollments
  end
end
