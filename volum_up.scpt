# Turn System Volume UP
# Get current output volume and then increase accordingly
# No need to check for status of mute, when you increase
# volume it will automatically toggle 'mute' off if present
 
set curVolume to output volume of (get volume settings)
# Work out the new setting
if curVolume < 96 then
	set newVolume to curVolume + 5
else
	# Can't go over 100
	set newVolume to 100
end if
# And apply our new volume
set volume output volume newVolume
