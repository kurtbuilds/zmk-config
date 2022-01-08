build:
    cd ~/work/zmk/app && west build -b nice_nano -- -DSHIELD=wkb64_left -DZMK_CONFIG=$(pwd)

