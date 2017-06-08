class RemoveReservationReferences < ActiveRecord::Migration[5.1]
  def change
    remove_reference :reservations, :match_list
    remove_reference :reservations, :user
  end
end
