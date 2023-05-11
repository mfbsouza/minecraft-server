#!/bin/bash

# download mods and config zip file
wget "https://sth17w.dm.files.1drv.com/y4mi7BooY1VuQZQGuV_P0jSpmKR76TWoaHk5Jl9ZwSOV3D6v_WZlxYrAOZBAqdKqppxO35_RK59eEbqrq4ZvrtxVPqEerSLXgh47IMVebni_xJu-TQ-N0jtfMsemjgJouNR4J5Vwu8RjXGyL-dA3DUNKa98j-t3p6MV_mQii8XefMX19h7onsveUaiAxJndm0yquyEKNg54QXGJ46v2_gIlCQ" -O mods.zip

wget "https://sth17w.dm.files.1drv.com/y4maJiWROsotmMs_sFW8y4UyfaSxRNzC0QNPqXmxX-NdQGw8Yta21I92av4UMaThPw7kwzwRuNh3cbRbwpijuxs4uiBoiu2MPRQsJS2CcmZlTWEWlDBfELlX7ML9_rMww8cE96GlKWivVn4cW0TtjMsCHA3F7tNGE728FI4yho0t0a86YsjXqzthHUh7KkfNAt9I5J12JrsUkGpVYw8bwAL6A" -O config.zip

# unzip it
unzip mods.zip
unzip config.zip

# copy it
rsync -a --delete mods/ data/mods
rsync -a --delete config/ data/config

# remove folder
rm -rf mods/ config/
