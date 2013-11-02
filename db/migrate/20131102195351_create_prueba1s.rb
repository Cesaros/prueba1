class CreatePrueba1s < ActiveRecord::Migration
  def change
    create_table :prueba1s do |t|
    	t.string :titulo
    	t.string :texto
    	t.date :fecha
    	t.string :autor
    	

      t.timestamps
    end
  end
end
	