 if(exists("name")!=0)exit()
 filename = sprintf("%s.eps",name);  # ファイル名に拡張子をつける。
 pause -1 filename."で保存します。"  # ファイル名の確認用。省略可。
 set terminal postscript eps enhanced color "Arial,"
 set size 0.5,0.5          # 図を50%に。すると、文字は150%に。縦軸だけ半分（1.0,0.5）とかもできる。
 set output filename       # ファイル名で保存場所を指定可能
 pause 1                   # 1秒待つ。PCが高速の場合は処理を待つために必要。
 replot                    # 必要
 set output                # 必要。これで、先ほど作ったepsがcloseされる。
 set terminal X11          # ターミナルをもとに戻す(wxtでなくても良い)
 set size 1.0,1.0          # 図の大きさをもとに戻す。
 replot

