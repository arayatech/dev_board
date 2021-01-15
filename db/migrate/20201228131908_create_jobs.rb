class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.timestamps
      t.string :years_of_experience
      t.string :title
      t.string :status, default: "pending"
      t.string :link_to_apply
      t.string :compensation_range
      t.string :compesation_type
      t.string :estimated_hours
      t.string :company_website
      t.string :company_name
      t.string :headquarters
      t.string :upsell_type
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.datetime :published_at
      t.datetime :featured_until
      t.boolean :remote, default: false
      t.boolean :featured, default: false
    end
  end
end
