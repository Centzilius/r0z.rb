class CreateFlashes < ActiveRecord::Migration
  def change
    create_table :flashes do |t|
      t.text    :audiosrc, :null => true
      t.text    :imagesrc, :null => true
      t.text    :tags, :null => true
      t.text    :uploader, :null => true
      t.text    :original_name, :null => true

    end
  end
end
