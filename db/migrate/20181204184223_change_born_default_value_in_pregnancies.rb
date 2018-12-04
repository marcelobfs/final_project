class ChangeBornDefaultValueInPregnancies < ActiveRecord::Migration[5.1]
  def change
    change_column_default :pregnancies, :born, 'null'
  end
end
