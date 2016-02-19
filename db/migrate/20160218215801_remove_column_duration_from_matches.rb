class RemoveColumnDurationFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :duration, :time
  end
end
