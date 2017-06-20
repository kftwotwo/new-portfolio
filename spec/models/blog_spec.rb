require 'rails_helper'

describe Blog do
  it { should have_db_column :title }
  it { should have_db_column :body }
  it { should have_db_column :likes }
end
