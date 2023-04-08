west build -d build/right -b nice_nano -- -DSHIELD=kyria_rev3_right -DZMK_CONFIG=../../zmk-config/config/

if [ $? -eq 0 ]; then
    echo "FLASH right"
    cp ./build/right/zephyr/zmk.uf2 ./right_board
else
    echo "BUILD failed"
fi
