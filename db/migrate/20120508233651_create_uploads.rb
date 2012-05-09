class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :to_email
      t.string :comment
      t.timestamps
    end
  end
end
