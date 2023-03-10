# frozen_string_literal: true

class AddApiKeyToSpreeUsers < ActiveRecord::Migration[4.2]
  def change
    if table_exists?(:spree_users)
      add_column :spree_users, :api_key, :string, limit: 40
    end
  end
end
