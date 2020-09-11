# frozen_string_literal: true

class Vehicle < ApplicationRecord
  state_machine initial: :parked do
    # before_transition do |vehicle, transition|
    #   Rails.logger.ap 'before_transition#10 => ' * 88 => { vehicle: vehicle, transition: transition }
    # end

    # before_transition do |vehicle, transition|
    #   ap 'Vehicle#before_transition##10' * 88 => { vehicle: vehicle, transition: transition }
    # end

    # after_transition do |vehicle, transition|
    #   ap 'Vehicle#after_transition##14' * 88 => { vehicle: vehicle, transition: transition }
    # end

    event :ignite do
      transition parked: :idling
    end

    event :park do
      transition idling: :parked
    end
  end
end
# == Schema Information
#
# Table name: vehicles
#
#  created_at      :datetime         not null
#  id              :bigint           not null, primary key
#  name            :string
#  state           :string
#  state_update_at :datetime
#  updated_at      :datetime         not null
#
