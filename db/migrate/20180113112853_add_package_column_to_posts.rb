class AddPackageColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :package, :string
  end
end
