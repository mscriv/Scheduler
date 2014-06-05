require 'spec_helper'

describe Appointment do
  it { should belong_to(:patient) }
end
