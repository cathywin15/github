## ZRAM Starter 1.5GB
sleep 10
echo 1536M >/sys/block/zram0/disksize        # Change ZRAM Size
mkswap /dev/block/zram0                      # Create ZRAM Block
swapon /dev/block/zram0                      # Start ZRAM 

## Fix charge                                  
chmod 755 /system/bin/fixcharge              # Integrate Kapmino269's Fixcharge Module
fixcharge

## CPU Freq Limiter
sleep 3
echo "1 960000:85 1094400:100" >/sys/devices/system/cpu/cpufreq/interactive/target_loads
echo 1094400 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
sleep 240                                    # Wait 4 Minutes

## After 4 Minutes
echo "1 960000:85 1094400:90" >/sys/devices/system/cpu/cpufreq/interactive/target_loads

## Set Governor to Adaptive
echo adaptive > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor    # Change Governor
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor          # Disable File's Overwrite

## Disable CPU Limit
echo 960000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq      # Set Min Freq
echo 1497600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq     # Set Max Freq

## Governor Values Changer
chmod 644 /sys/block/mmcblk0/queue/read_ahead_kb                         # Set Files Permission
chmod 644 /sys/block/mmcblk1/queue/read_ahead_kb

sleep 3                                                                  # Wait 3 Second

echo 2048 > /sys/block/mmcblk0/queue/read_ahead_kb                       # Change Internal Storage's Scheduler Value
echo 1024 > /sys/block/mmcblk1/queue/read_ahead_kb                       # Change External Storage's Scheduler Value

## Change Entropy
echo 512 > /proc/sys/kernel/random/read_wakeup_threshold
echo 2000 > /proc/sys/kernel/random/write_wakeup_threshold

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
