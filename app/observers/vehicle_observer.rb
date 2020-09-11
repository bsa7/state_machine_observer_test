# frozen_string_literal: true

class VehicleObserver < ActiveRecord::Observer
  observe Vehicle

  def before_save(vehicle)
    ap 'VehicleObserver#before_save##5' * 88 => { vehicle: vehicle }
  end

  def before_ignite(vehicle, transition)
    ap 'VehicleObserver#before_ignite##9' * 88 => { vehicle: vehicle, transition: transition }
  end

  def after_ignite(vehicle, transition)
    ap 'VehicleObserver#after_ignite##13' * 88 => { vehicle: vehicle, transition: transition }
  end

  def before_transition(vehicle, transition)
    ap 'VehicleObserver#before_transition##17' * 88 => { vehicle: vehicle, transition: transition }
  end

  def after_transition(vehicle, transition)
    ap 'VehicleObserver#after_transition##21' * 88 => { vehicle: vehicle, transition: transition }
  end

  def before_park(vehicle, transition)
    ap 'VehicleObserver#before_park##25' * 88 => { vehicle: vehicle, transition: transition }
  end

  def after_park(vehicle, transition)
    ap 'VehicleObserver#after_park##29' * 88 => { vehicle: vehicle, transition: transition }
  end
end
