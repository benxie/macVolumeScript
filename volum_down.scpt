# Turn System Volume DOWN
# Get current output volume and then decrease accordingly
# No need to check for status of mute, when you decrease
# volume it will automatically toggle 'mute' off if present
 
set curVolume to output volume of (get volume settings)
# Work out the new setting
if curVolume > 6 then
	set newVolume to curVolume - 5
else
	# Can't go under 0!
	set newVolume to 0
end if
#Apply our new volume
set volume output volume newVolume
