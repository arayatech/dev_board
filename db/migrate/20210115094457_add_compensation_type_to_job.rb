class AddCompensationTypeToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :compensation_type, :string
  end
end
