class AddFieldToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :guide, index: true
  end
end
