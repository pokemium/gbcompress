# Benchmark

## Tools

- wyvern: v1.1.4
- pb16: https://github.com/pinobatch/libbet/blob/8b894e4c02d43ddf2180176ee670e977b0170ccd/tools/pb16.py
- lz4gb: https://github.com/gitendo/lz4gb/tree/da333add4c956260e6db7c921d6903fe067acc3d
- pkmncompress: https://github.com/pret/pokered/tree/fc3bbc1358f95038b167d3f8bc9006ab5ab655c1/tools
- lzcomp: https://github.com/pret/pokecrystal/tree/7d3ea88611efbc2f9b903063e2816b1cae1bad35/tools
- inhal: https://github.com/devinacker/exhal/tree/76b12eebd3fcd90fd3f21d427b62d9de8f5fb797

## Results

### cenotaph

  Method | Size | Cycles | 
---- | ---- | ----
 wyvern & cenotaph.atr | 360 -> 196(54%) | 20996
 wyvern & cenotaph.chr | 4000 -> 3397(84%) | 190972
 wyvern & cenotaph.map | 360 -> 336(93%) | 14984
 wyvern & pokered/abra.2bpp | 400 -> 326(81%) | 18780
 wyvern & pokered/red.2bpp | 784 -> 338(43%) | 29764
 wyvern & pokecrystal/chris.2bpp | 784 -> 375(47%) | 29656 
 wyvern & pokecrystal/diploma.2bpp | 1792 -> 1193(66%) | TODO 
 wyvern & pokecrystal/ditto.2bpp | 1024 -> 420(41%) | TODO 
 wyvern & pokecrystal/suicune_jump.2bpp | 2048 -> 1281(62%) | TODO 
 wyvern & ladx/animated_tiles.w32.cgb.2bpp | 3584 -> 2075(57%) | TODO 
 wyvern & ladx/camera_shop.2bpp | 512 -> 344(67%) | TODO 
 wyvern & ladx/christine.cgb.2bpp | 2048 -> 1769(86%) | TODO 
 wyvern & ladx/intro_1.cgb.2bpp | 4096 -> 3387(82%) | TODO 
 wyvern & ladx/oam_color_dungeon.2bpp | 4608 -> 3125(67%) | TODO 
 pb16 & cenotaph.atr | 360 -> 226(62%) | TODO
 pb16 & cenotaph.chr | 4000 -> 3329(83%) | TODO
 pb16 & cenotaph.map | 360 -> 367(101%) | TODO
 pb16 & pokered/abra.2bpp | 400 -> 330(82%) | TODO
 pb16 & pokered/red.2bpp | 784 -> 393(50%) | TODO
 pb16 & pokecrystal/chris.2bpp | 784 -> 425(54%) | TODO 
 pb16 & pokecrystal/diploma.2bpp | 1792 -> 1037(57%) | TODO 
 pb16 & pokecrystal/ditto.2bpp | 1024 -> 477(46%) | TODO 
 pb16 & pokecrystal/suicune_jump.2bpp | 2048 -> 1330(64%) | TODO 
 pb16 & ladx/animated_tiles.w32.cgb.2bpp | 3584 -> 2569(71%) | TODO 
 pb16 & ladx/camera_shop.2bpp | 512 -> 344(67%) | TODO 
 pb16 & ladx/christine.cgb.2bpp | 2048 -> 1716(83%) | TODO 
 pb16 & ladx/intro_1.cgb.2bpp | 4096 -> 3169(77%) | TODO 
 pb16 & ladx/oam_color_dungeon.2bpp | 4608 -> 3443(74%) | TODO 
 lz4gb & cenotaph.atr | 360 -> 221(61%) | 26240
 lz4gb & cenotaph.chr | 4000 -> 3370(84%) | 223964
 lz4gb & cenotaph.map | 360 -> 342(95%) | 16676
 lz4gb & pokered/abra.2bpp | 400 -> 337(84%) | TODO
 lz4gb & pokered/red.2bpp | 784 -> 362(46%) | TODO
 lz4gb & pokecrystal/chris.2bpp | 784 -> 401(51%) | TODO 
 lz4gb & pokecrystal/diploma.2bpp | 1792 -> 1199(66%) | TODO 
 lz4gb & pokecrystal/ditto.2bpp | 1024 -> 422(41%) | TODO 
 lz4gb & pokecrystal/suicune_jump.2bpp | 2048 -> 1295(63%) | TODO 
 pkmncompress & pokered/abra.2bpp | 400 -> 259(64%) | TODO
 pkmncompress & pokered/red.2bpp  | 784 -> 266(33%) | TODO
 lzcomp & pokered/abra.2bpp | 400 -> 310(77%) | TODO 
 lzcomp & pokecrystal/chris.2bpp | 784 -> 365(46%) | TODO 
 lzcomp & pokecrystal/diploma.2bpp | 1792 -> 1094(61%) | TODO 
 lzcomp & pokecrystal/suicune_jump.2bpp | 2048 -> 1216(59%) | TODO 
 inhal & cenotaph.atr | 360 -> 203(56%) | TODO
 inhal & cenotaph.chr | 4000 -> 3329(83%) | TODO
 inhal & cenotaph.map | 360 -> 127(35%) | TODO
 inhal & pokered/abra.2bpp | 400 -> 324(81%) | TODO
 inhal & pokered/red.2bpp | 784 -> 347(44%) | TODO
 inhal & pokecrystal/chris.2bpp | 784 -> 374(47%) | TODO 
 inhal & pokecrystal/diploma.2bpp | 1792 -> 1118(62%) | TODO 
 inhal & pokecrystal/ditto.2bpp | 1024 -> 382(37%) | TODO 
 inhal & pokecrystal/suicune_jump.2bpp | 2048 -> 1266(61%) | TODO 
 inhal & ladx/animated_tiles.w32.cgb.2bpp | 3584 -> 1877(52%) | TODO 
 inhal & ladx/camera_shop.2bpp | 512 -> 301(58%) | TODO 
 inhal & ladx/christine.cgb.2bpp | 2048 -> 1744(85%) | TODO 
 inhal & ladx/intro_1.cgb.2bpp | 4096 -> 3307(80%) | TODO 
 inhal & ladx/oam_color_dungeon.2bpp | 4608 -> 3034(65%) | TODO 
