# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    peak = 0

    altitude = 0
    gain.each do |alt|
        altitude += alt
        peak = [altitude, peak].max
    end

    peak
end
