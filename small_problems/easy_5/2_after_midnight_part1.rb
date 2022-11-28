def normalize_time(delta)
  while delta < 0
    delta += 1440
  end
  delta % 1440
end

def time_of_day(delta)
  normalized_delta = normalize_time(delta)
  hours, minutes = normalized_delta.divmod(60)
  format('%02d:%02d', hours, minutes)
  "#{'%02d' % hours}:#{'%02d' % minutes}"
end