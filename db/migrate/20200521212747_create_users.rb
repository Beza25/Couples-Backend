class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :img, default: "https://banner2.cleanpng.com/20180712/jqt/kisspng-computer-icons-avatar-icon-design-woman-profile-5b481f00aa54e1.3801883215314531846977.jpg"
      t.date :birth_day
      t.string :gender
      t.string :theme, default:"https://wallpapercave.com/wp/wp4410724.jpg"
      t.references :partenr_a
    

      t.timestamps
    end
  end
end
