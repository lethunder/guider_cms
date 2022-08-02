class CreateGuiderCmsCategoryHierarchies < ActiveRecord::Migration[6.0]
  def change
    create_table :guider_cms_category_hierarchies, id: false do |t|
      t.references :ancestor, index: true, foreign_key:{to_table: "guider_cms_categories"}, null: false, type: :uuid
      t.references :descendant, index: true, foreign_key: {to_table: "guider_cms_categories"}, null: false, type: :uuid
      t.integer :generations, null: false
    end

    add_index :guider_cms_category_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "category_anc_desc_idx"

    add_index :guider_cms_category_hierarchies, [:descendant_id],
      name: "category_desc_idx"
  end
end
