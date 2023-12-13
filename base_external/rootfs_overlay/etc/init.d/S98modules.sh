#! /bin/sh

 
case "$1" in
    start)
        echo "Initialization of BME280 module"
        modprobe i2c-dev
        modprobe i2c-bcm2835
        i2cdetect -y 1
        echo "Module loaded succesfully"

        cd /etc/
        rm -rf tmpdir
        mkdir tmpdir
        cd /tmpdir/
        rm -rf sensordata.txt
        touch sensordata.txt
        chmod +rwx sensordata.txt
        chmod +x /usr/bin/final_code
        /usr/bin/final_code
        echo "BME280 sensor module started"

        ;;
    stop)
        echo "Removing BME280 modules"
        rmmod i2c-bcm2835
        rmmo i2c-dev
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0

