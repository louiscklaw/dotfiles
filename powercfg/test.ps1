# https://www.windowscentral.com/how-use-powercfg-control-power-settings-windows-10#:~:text=Type%20the%20following%20command%20to%20change%20the%20settings%20of%20the,a%20new%20time%20in%20minutes.

echo "Disabling power profiles"
powercfg /change     monitor-timeout-ac 10
powercfg /change     monitor-timeout-dc 10
powercfg /change     disk-timeout-ac 0
powercfg /change     disk-timeout-dc 0
powercfg /change     standby-timeout-ac 0
powercfg /change     standby-timeout-dc 0
