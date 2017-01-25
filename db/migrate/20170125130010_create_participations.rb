class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :participations, id: false do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :person, index: true
      t.string :role
    end
  end
end
