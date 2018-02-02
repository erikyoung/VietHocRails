class CreateStudyhabits < ActiveRecord::Migration[5.1]
  def change
    create_table :studyhabits do |t|
    	 t.string :title
      	t.text :body


      t.timestamps
    end
  end
end
