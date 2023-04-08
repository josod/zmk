west build -d build/left -b nice_nano -- -DSHIELD=kyria_rev3_left -DZMK_CONFIG=../../zmk-config/config/

if [ $? -eq 0 ]; then
    echo "FLASH left"
    cp ./build/left/zephyr/zmk.uf2 ./left_board
else
    echo "BUILD failed"
fi

