# Element( flags description blank blank mark_x mark_y text_x text_y text_direction text_scale text_flags
# Pin( x y thickness clearance mask drillhole name number flags
# ElementLine( x1 y1 x2 y2 thickness)
# ElementArc( centre_x centre_y radius_x radius_y startAngle deltaAngle thickness)  startAngle in degs, 0=East, +ve deltaAngle anti-clockwise
# Measurements are taken from the datasheet
#

Element[0x0 "HEADER26_SHROUD" "" "" 150000 0   5000   5000 3 100 0x0]
(

	Pin[ 5000  5000 6000  2000 7000 3800 "" "1" 0x101]
	Pin[15000  5000 6000  2000 7000 3800 "" "2" 0x01]
	Pin[ 5000 15000 6000  2000 7000 3800 "" "3" 0x01]
	Pin[15000 15000 6000  2000 7000 3800 "" "4" 0x01]
	Pin[ 5000 25000 6000  2000 7000 3800 "" "5" 0x01]
	Pin[15000 25000 6000  2000 7000 3800 "" "6" 0x01]
	Pin[ 5000 35000 6000  2000 7000 3800 "" "7" 0x01]
	Pin[15000 35000 6000  2000 7000 3800 "" "8" 0x01]
	Pin[ 5000 45000 6000  2000 7000 3800 "" "9" 0x01]
	Pin[15000 45000 6000  2000 7000 3800 "" "10" 0x01]
	Pin[ 5000 55000 6000  2000 7000 3800 "" "11" 0x01]
	Pin[15000 55000 6000  2000 7000 3800 "" "12" 0x01]
	Pin[ 5000 65000 6000  2000 7000 3800 "" "13" 0x01]
	Pin[15000 65000 6000  2000 7000 3800 "" "14" 0x01]
	Pin[ 5000 75000 6000  2000 7000 3800 "" "15" 0x01]
	Pin[15000 75000 6000  2000 7000 3800 "" "16" 0x01]
	Pin[ 5000 85000 6000  2000 7000 3800 "" "17" 0x01]
	Pin[15000 85000 6000  2000 7000 3800 "" "18" 0x01]
	Pin[ 5000 95000 6000  2000 7000 3800 "" "19" 0x01]
	Pin[15000 95000 6000  2000 7000 3800 "" "20" 0x01]
	Pin[ 5000 105000 6000 2000 7000 3800 "" "21" 0x01]
	Pin[15000 105000 6000 2000 7000 3800 "" "22" 0x01]
	Pin[ 5000 115000 6000 2000 7000 3800 "" "23" 0x01]
	Pin[15000 115000 6000 2000 7000 3800 "" "24" 0x01]
	Pin[ 5000 125000 6000 2000 7000 3800 "" "25" 0x01]
	Pin[15000 125000 6000 2000 7000 3800 "" "26" 0x01]

	ElementLine[0 0 0 130000 1000]
	ElementLine[0 130000 20000 130000 1000]
	ElementLine[20000 130000 20000 0 1000]
	ElementLine[20000 0 0 0 1000]
	ElementLine[0 10000 10000 10000 1000]
	ElementLine[10000 10000 10000 0 1000]

	ElementLine[-5000 -15000 -5000 145000 1000]
	ElementLine[-5000 145000 25000 145000 1000]
	ElementLine[25000 145000 25000 -15000 1000]
	ElementLine[25000 -15000 -5000 -15000 1000]
)
