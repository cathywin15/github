## ZRAM Starter 1GB
sleep 10
echo 1024M >/sys/block/zram0/disksize        # Change ZRAM Size
mkswap /dev/block/zram0                      # Create ZRAM Block
swapon  /dev/block/zram0                     # Start ZRAM 

## Fix charge                                  
chmod 755 /system/bin/fixcharge              # Integrate Kapmino269's Fixcharge Module
fixcharge

## Set Min Freq to 200 MHz
echo "1 200000:85 1094400:90" >/sys/devices/system/cpu/cpufreq/interactive/target_loads
echo 200000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

## CPU Freq Limiter
sleep 3
chmod 644 /sys/power/cpufreq_max_limit       # Change File's Permission
echo 1248 > /sys/power/cpufreq_max_limit     # Enable CPU Freq Limiter
chmod 444 /sys/power/cpufreq_max_limit       # Disable Overwrite
sleep 240                                    # Wait 4 Minutes

## After 4 Minutes
chmod 644 /sys/power/cpufreq_max_limit       # Change File's Permission
echo -1 > /sys/power/cpufreq_max_limit       # Disable CPU limiter

## Set Governor to Adaptive
echo adaptive > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor    # Change Governor
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor          # Disable File's Overwrite

## Set Wifi Tools Permission
sleep 5
chmod 755 /system/bin/airbase-ng
chmod 755 /system/bin/aircrack-ng
chmod 755 /system/bin/airdecap-ng
chmod 755 /system/bin/airdecloak-ng
chmod 755 /system/bin/aireplay-ng
chmod 755 /system/bin/airmon-ng
chmod 755 /system/bin/airodump-ng
chmod 755 /system/bin/airodump-ng-oui-update
chmod 755 /system/bin/airserv-ng
chmod 755 /system/bin/airtun-ng
chmod 755 /system/bin/ethtool
chmod 755 /system/bin/iw
chmod 755 /system/bin/iwconfig
chmod 755 /system/bin/iwpriv
chmod 755 /system/bin/mondis
chmod 755 /system/bin/monen
