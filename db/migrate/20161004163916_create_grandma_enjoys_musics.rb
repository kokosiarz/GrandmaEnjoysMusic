class CreateGrandmaEnjoysMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :grandma_enjoys_musics do |t|
      t.string :name
      t.string :form

      t.timestamps
    end
  end
end
