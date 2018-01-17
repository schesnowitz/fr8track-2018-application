class CreateKtReports < ActiveRecord::Migration[5.2]
  def change
    create_table :kt_reports do |t|
      t.string :time_zone

      t.timestamps
    end
  end
end
