require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should have_db_column(:first_name) }
  it { should have_db_column(:last_name) }
  it { should have_db_column(:company) }
  it { should have_db_column(:email) }
  it { should have_db_column(:description) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:description) }
end
