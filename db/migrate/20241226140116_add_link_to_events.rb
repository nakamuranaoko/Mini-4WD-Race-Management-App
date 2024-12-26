class AddLinkToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :link, :string
  end
end
