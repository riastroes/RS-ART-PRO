;Project: Generate Knitting
;Ria Stroes
;start code
M140 S80.000000
M109 T0 S210.000000
T0
M190 S80           ;bed temperature on
M109 S210          ;extruder temperature on
G21                ;metric values
G90                ;absolute positioning
M107               ;start with the fan off
G28 X0 Y0          ;move X/Y to min endstops, so the head is out of the way
G28 Z0             ;move Z to min endstops
G1 Z15.0 F3000      ;move the platform up 15mm
G92 E0                  ;zero the extruded
G1 F200 E3              ;extrude 3mm of feed stock
G92 E0                  ;zero the extruded length again
M117 Printing...
G1 F1600.0
G1 Z0.25
G1 X46.600002 Y46.600002
G1 X46.600002 Y93.4 E4.68
G1 X93.4 Y93.4 E9.36
G1 X93.4 Y46.600002 E14.039999
G1 X46.8 Y46.8 E18.700043
G1 X46.8 Y93.200005 E23.340042
G1 X93.200005 Y93.200005 E27.980042
G1 X93.200005 Y46.8 E32.62004
G1 X47.0 Y47.0 E37.240086
G1 F1200.0
G1 Z0.25 X50.0 Y50.0
;start knitting
G1 F800.0
G1 Z0.35 X51.0 Y50.0 E42.513
G1 Z0.35 X52.0 Y51.0 E42.71099
G1 Z0.35 X50.0 Y55.0 E43.33959
G1 Z0.35 X51.0 Y56.0 E43.545345
G1 Z0.35 X53.0 Y56.0 E43.825344
G1 Z0.35 X54.0 Y55.0 E44.023335
G1 Z0.35 X52.0 Y51.0 E44.65193
G1 Z0.35 X53.0 Y50.0 E44.85769
G1 Z0.35 X54.0 Y50.0 E44.99769
G1 Z0.35 X54.0 Y50.0 E44.99769
G1 Z0.35 X55.0 Y50.0 E45.137688
G1 Z0.35 X56.0 Y51.0 E45.33568
G1 Z0.35 X54.0 Y55.0 E45.964275
G1 Z0.35 X55.0 Y56.0 E46.170033
G1 Z0.35 X57.0 Y56.0 E46.45003
G1 Z0.35 X58.0 Y55.0 E46.64802
G1 Z0.35 X56.0 Y51.0 E47.27662
G1 Z0.35 X57.0 Y50.0 E47.482376
G1 Z0.35 X58.0 Y50.0 E47.622375
G1 Z0.35 X58.0 Y50.0 E47.622375
G1 Z0.35 X59.0 Y50.0 E47.762375
G1 Z0.35 X60.0 Y51.0 E47.960365
G1 Z0.35 X58.0 Y55.0 E48.588963
G1 Z0.35 X59.0 Y56.0 E48.79472
G1 Z0.35 X61.0 Y56.0 E49.07472
G1 Z0.35 X62.0 Y55.0 E49.27271
G1 Z0.35 X60.0 Y51.0 E49.901306
G1 Z0.35 X61.0 Y50.0 E50.107063
G1 Z0.35 X62.0 Y50.0 E50.247063
G1 Z0.35 X62.0 Y50.0 E50.247063
G1 Z0.35 X63.0 Y50.0 E50.387062
G1 Z0.35 X64.0 Y51.0 E50.585052
G1 Z0.35 X62.0 Y55.0 E51.21365
G1 Z0.35 X63.0 Y56.0 E51.419407
G1 Z0.35 X65.0 Y56.0 E51.699406
G1 Z0.35 X66.0 Y55.0 E51.897396
G1 Z0.35 X64.0 Y51.0 E52.525993
G1 Z0.35 X65.0 Y50.0 E52.73175
G1 Z0.35 X66.0 Y50.0 E52.87175
G1 Z0.35 X66.0 Y50.0 E52.87175
G1 Z0.35 X67.0 Y50.0 E53.01175
G1 Z0.35 X68.0 Y51.0 E53.20974
G1 Z0.35 X66.0 Y55.0 E53.838337
G1 Z0.35 X67.0 Y56.0 E54.044094
G1 Z0.35 X69.0 Y56.0 E54.324093
G1 Z0.35 X70.0 Y55.0 E54.522083
G1 Z0.35 X68.0 Y51.0 E55.15068
G1 Z0.35 X69.0 Y50.0 E55.356438
G1 Z0.35 X70.0 Y50.0 E55.496437
G1 Z0.35 X70.0 Y50.0 E55.496437
G1 Z0.35 X71.0 Y50.0 E55.636436
G1 Z0.35 X72.0 Y51.0 E55.834427
G1 Z0.35 X70.0 Y55.0 E56.463024
G1 Z0.35 X71.0 Y56.0 E56.66878
G1 Z0.35 X73.0 Y56.0 E56.94878
G1 Z0.35 X74.0 Y55.0 E57.14677
G1 Z0.35 X72.0 Y51.0 E57.775368
G1 Z0.35 X73.0 Y50.0 E57.981125
G1 Z0.35 X74.0 Y50.0 E58.121124
G1 Z0.35 X74.0 Y50.0 E58.121124
G1 Z0.35 X75.0 Y50.0 E58.261124
G1 Z0.35 X76.0 Y51.0 E58.459114
G1 Z0.35 X74.0 Y55.0 E59.08771
G1 Z0.35 X75.0 Y56.0 E59.29347
G1 Z0.35 X77.0 Y56.0 E59.573467
G1 Z0.35 X78.0 Y55.0 E59.771458
G1 Z0.35 X76.0 Y51.0 E60.400055
G1 Z0.35 X77.0 Y50.0 E60.605812
G1 Z0.35 X78.0 Y50.0 E60.74581
G1 Z0.35 X78.0 Y50.0 E60.74581
G1 Z0.35 X79.0 Y50.0 E60.88581
G1 Z0.35 X80.0 Y51.0 E61.0838
G1 Z0.35 X78.0 Y55.0 E61.7124
G1 Z0.35 X79.0 Y56.0 E61.918156
G1 Z0.35 X81.0 Y56.0 E62.198154
G1 Z0.35 X82.0 Y55.0 E62.396145
G1 Z0.35 X80.0 Y51.0 E63.024742
G1 Z0.35 X81.0 Y50.0 E63.2305
G1 Z0.35 X82.0 Y50.0 E63.3705
G1 Z0.35 X82.0 Y50.0 E63.3705
G1 Z0.35 X83.0 Y50.0 E63.510498
G1 Z0.35 X84.0 Y51.0 E63.70849
G1 Z0.35 X82.0 Y55.0 E64.33709
G1 Z0.35 X83.0 Y56.0 E64.54285
G1 Z0.35 X85.0 Y56.0 E64.822845
G1 Z0.35 X86.0 Y55.0 E65.020836
G1 Z0.35 X84.0 Y51.0 E65.64944
G1 Z0.35 X85.0 Y50.0 E65.855194
G1 Z0.35 X86.0 Y50.0 E65.99519
G1 Z0.35 X86.0 Y50.0 E65.99519
G1 Z0.35 X87.0 Y50.0 E66.13519
G1 Z0.35 X88.0 Y51.0 E66.33318
G1 Z0.35 X86.0 Y55.0 E66.961784
G1 Z0.35 X87.0 Y56.0 E67.16754
G1 Z0.35 X89.0 Y56.0 E67.44754
G1 Z0.35 X90.0 Y55.0 E67.64553
G1 Z0.35 X88.0 Y51.0 E68.27413
G1 Z0.35 X89.0 Y50.0 E68.47989
G1 Z0.35 X90.0 Y50.0 E68.61989
G1 Z0.35 X90.0 Y53.0 E69.04082
G1 Z0.35 X90.0 Y53.0 E69.06882
G1 Z0.35 X89.0 Y53.0 E69.20882
G1 Z0.35 X88.0 Y54.0 E69.40681
G1 Z0.35 X90.0 Y58.0 E70.03541
G1 Z0.35 X89.0 Y59.0 E70.241165
G1 Z0.35 X87.0 Y59.0 E70.521164
G1 Z0.35 X86.0 Y58.0 E70.719154
G1 Z0.35 X88.0 Y54.0 E71.347755
G1 Z0.35 X87.0 Y53.0 E71.55351
G1 Z0.35 X86.0 Y53.0 E71.69351
G1 Z0.35 X86.0 Y53.0 E71.69351
G1 Z0.35 X85.0 Y53.0 E71.83351
G1 Z0.35 X84.0 Y54.0 E72.0315
G1 Z0.35 X86.0 Y58.0 E72.6601
G1 Z0.35 X85.0 Y59.0 E72.86586
G1 Z0.35 X83.0 Y59.0 E73.14586
G1 Z0.35 X82.0 Y58.0 E73.34385
G1 Z0.35 X84.0 Y54.0 E73.97245
G1 Z0.35 X83.0 Y53.0 E74.17821
G1 Z0.35 X82.0 Y53.0 E74.31821
G1 Z0.35 X82.0 Y53.0 E74.31821
G1 Z0.35 X81.0 Y53.0 E74.458206
G1 Z0.35 X80.0 Y54.0 E74.6562
G1 Z0.35 X82.0 Y58.0 E75.2848
G1 Z0.35 X81.0 Y59.0 E75.490555
G1 Z0.35 X79.0 Y59.0 E75.77055
G1 Z0.35 X78.0 Y58.0 E75.968544
G1 Z0.35 X80.0 Y54.0 E76.597145
G1 Z0.35 X79.0 Y53.0 E76.8029
G1 Z0.35 X78.0 Y53.0 E76.9429
G1 Z0.35 X78.0 Y53.0 E76.9429
G1 Z0.35 X77.0 Y53.0 E77.0829
G1 Z0.35 X76.0 Y54.0 E77.28089
G1 Z0.35 X78.0 Y58.0 E77.90949
G1 Z0.35 X77.0 Y59.0 E78.11525
G1 Z0.35 X75.0 Y59.0 E78.39525
G1 Z0.35 X74.0 Y58.0 E78.59324
G1 Z0.35 X76.0 Y54.0 E79.22184
G1 Z0.35 X75.0 Y53.0 E79.4276
G1 Z0.35 X74.0 Y53.0 E79.5676
G1 Z0.35 X74.0 Y53.0 E79.5676
G1 Z0.35 X73.0 Y53.0 E79.707596
G1 Z0.35 X72.0 Y54.0 E79.90559
G1 Z0.35 X74.0 Y58.0 E80.53419
G1 Z0.35 X73.0 Y59.0 E80.739944
G1 Z0.35 X71.0 Y59.0 E81.01994
G1 Z0.35 X70.0 Y58.0 E81.21793
G1 Z0.35 X72.0 Y54.0 E81.846535
G1 Z0.35 X71.0 Y53.0 E82.05229
G1 Z0.35 X70.0 Y53.0 E82.19229
G1 Z0.35 X70.0 Y53.0 E82.19229
G1 Z0.35 X69.0 Y53.0 E82.33229
G1 Z0.35 X68.0 Y54.0 E82.53028
G1 Z0.35 X70.0 Y58.0 E83.15888
G1 Z0.35 X69.0 Y59.0 E83.36464
G1 Z0.35 X67.0 Y59.0 E83.64464
G1 Z0.35 X66.0 Y58.0 E83.84263
G1 Z0.35 X68.0 Y54.0 E84.47123
G1 Z0.35 X67.0 Y53.0 E84.67699
G1 Z0.35 X66.0 Y53.0 E84.816986
G1 Z0.35 X66.0 Y53.0 E84.816986
G1 Z0.35 X65.0 Y53.0 E84.956985
G1 Z0.35 X64.0 Y54.0 E85.154976
G1 Z0.35 X66.0 Y58.0 E85.78358
G1 Z0.35 X65.0 Y59.0 E85.989334
G1 Z0.35 X63.0 Y59.0 E86.26933
G1 Z0.35 X62.0 Y58.0 E86.46732
G1 Z0.35 X64.0 Y54.0 E87.095924
G1 Z0.35 X63.0 Y53.0 E87.30168
G1 Z0.35 X62.0 Y53.0 E87.44168
G1 Z0.35 X62.0 Y53.0 E87.44168
G1 Z0.35 X61.0 Y53.0 E87.58168
G1 Z0.35 X60.0 Y54.0 E87.77967
G1 Z0.35 X62.0 Y58.0 E88.40827
G1 Z0.35 X61.0 Y59.0 E88.61403
G1 Z0.35 X59.0 Y59.0 E88.89403
G1 Z0.35 X58.0 Y58.0 E89.09202
G1 Z0.35 X60.0 Y54.0 E89.72062
G1 Z0.35 X59.0 Y53.0 E89.92638
G1 Z0.35 X58.0 Y53.0 E90.066376
G1 Z0.35 X58.0 Y53.0 E90.066376
G1 Z0.35 X57.0 Y53.0 E90.206375
G1 Z0.35 X56.0 Y54.0 E90.404366
G1 Z0.35 X58.0 Y58.0 E91.03297
G1 Z0.35 X57.0 Y59.0 E91.23872
G1 Z0.35 X55.0 Y59.0 E91.51872
G1 Z0.35 X54.0 Y58.0 E91.71671
G1 Z0.35 X56.0 Y54.0 E92.345314
G1 Z0.35 X55.0 Y53.0 E92.55107
G1 Z0.35 X54.0 Y53.0 E92.69107
G1 Z0.35 X54.0 Y53.0 E92.69107
G1 Z0.35 X53.0 Y53.0 E92.83107
G1 Z0.35 X52.0 Y54.0 E93.02906
G1 Z0.35 X54.0 Y58.0 E93.65766
G1 Z0.35 X53.0 Y59.0 E93.86342
G1 Z0.35 X51.0 Y59.0 E94.14342
G1 Z0.35 X50.0 Y58.0 E94.34141
G1 Z0.35 X52.0 Y54.0 E94.97001
G1 Z0.35 X51.0 Y53.0 E95.175766
G1 Z0.35 X50.0 Y53.0 E95.315765
G1 Z0.35 X50.0 Y56.0 E95.736694
G1 Z0.35 X50.0 Y56.0 E95.764694
G1 Z0.35 X51.0 Y56.0 E95.90469
G1 Z0.35 X52.0 Y57.0 E96.102684
G1 Z0.35 X50.0 Y61.0 E96.731285
G1 Z0.35 X51.0 Y62.0 E96.93704
G1 Z0.35 X53.0 Y62.0 E97.21704
G1 Z0.35 X54.0 Y61.0 E97.41503
G1 Z0.35 X52.0 Y57.0 E98.04363
G1 Z0.35 X53.0 Y56.0 E98.24939
G1 Z0.35 X54.0 Y56.0 E98.38939
G1 Z0.35 X54.0 Y56.0 E98.38939
G1 Z0.35 X55.0 Y56.0 E98.52939
G1 Z0.35 X56.0 Y57.0 E98.72738
G1 Z0.35 X54.0 Y61.0 E99.35598
G1 Z0.35 X55.0 Y62.0 E99.56174
G1 Z0.35 X57.0 Y62.0 E99.841736
G1 Z0.35 X58.0 Y61.0 E100.03973
G1 Z0.35 X56.0 Y57.0 E100.66833
G1 Z0.35 X57.0 Y56.0 E100.874084
G1 Z0.35 X58.0 Y56.0 E101.014084
G1 Z0.35 X58.0 Y56.0 E101.014084
G1 Z0.35 X59.0 Y56.0 E101.15408
G1 Z0.35 X60.0 Y57.0 E101.35207
G1 Z0.35 X58.0 Y61.0 E101.980675
G1 Z0.35 X59.0 Y62.0 E102.18643
G1 Z0.35 X61.0 Y62.0 E102.46643
G1 Z0.35 X62.0 Y61.0 E102.66442
G1 Z0.35 X60.0 Y57.0 E103.29302
G1 Z0.35 X61.0 Y56.0 E103.49878
G1 Z0.35 X62.0 Y56.0 E103.63878
G1 Z0.35 X62.0 Y56.0 E103.63878
G1 Z0.35 X63.0 Y56.0 E103.77878
G1 Z0.35 X64.0 Y57.0 E103.97677
G1 Z0.35 X62.0 Y61.0 E104.60537
G1 Z0.35 X63.0 Y62.0 E104.81113
G1 Z0.35 X65.0 Y62.0 E105.091125
G1 Z0.35 X66.0 Y61.0 E105.289116
G1 Z0.35 X64.0 Y57.0 E105.91772
G1 Z0.35 X65.0 Y56.0 E106.123474
G1 Z0.35 X66.0 Y56.0 E106.26347
G1 Z0.35 X66.0 Y56.0 E106.26347
G1 Z0.35 X67.0 Y56.0 E106.40347
G1 Z0.35 X68.0 Y57.0 E106.60146
G1 Z0.35 X66.0 Y61.0 E107.230064
G1 Z0.35 X67.0 Y62.0 E107.43582
G1 Z0.35 X69.0 Y62.0 E107.71582
G1 Z0.35 X70.0 Y61.0 E107.91381
G1 Z0.35 X68.0 Y57.0 E108.54241
G1 Z0.35 X69.0 Y56.0 E108.74817
G1 Z0.35 X70.0 Y56.0 E108.88817
G1 Z0.35 X70.0 Y56.0 E108.88817
G1 Z0.35 X71.0 Y56.0 E109.02817
G1 Z0.35 X72.0 Y57.0 E109.22616
G1 Z0.35 X70.0 Y61.0 E109.85476
G1 Z0.35 X71.0 Y62.0 E110.06052
G1 Z0.35 X73.0 Y62.0 E110.340515
G1 Z0.35 X74.0 Y61.0 E110.538506
G1 Z0.35 X72.0 Y57.0 E111.16711
G1 Z0.35 X73.0 Y56.0 E111.37286
G1 Z0.35 X74.0 Y56.0 E111.51286
G1 Z0.35 X74.0 Y56.0 E111.51286
G1 Z0.35 X75.0 Y56.0 E111.65286
G1 Z0.35 X76.0 Y57.0 E111.85085
G1 Z0.35 X74.0 Y61.0 E112.479454
G1 Z0.35 X75.0 Y62.0 E112.68521
G1 Z0.35 X77.0 Y62.0 E112.96521
G1 Z0.35 X78.0 Y61.0 E113.1632
G1 Z0.35 X76.0 Y57.0 E113.7918
G1 Z0.35 X77.0 Y56.0 E113.99756
G1 Z0.35 X78.0 Y56.0 E114.13756
G1 Z0.35 X78.0 Y56.0 E114.13756
G1 Z0.35 X79.0 Y56.0 E114.27756
G1 Z0.35 X80.0 Y57.0 E114.47555
G1 Z0.35 X78.0 Y61.0 E115.10415
G1 Z0.35 X79.0 Y62.0 E115.309906
G1 Z0.35 X81.0 Y62.0 E115.589905
G1 Z0.35 X82.0 Y61.0 E115.787895
G1 Z0.35 X80.0 Y57.0 E116.4165
G1 Z0.35 X81.0 Y56.0 E116.62225
G1 Z0.35 X82.0 Y56.0 E116.76225
G1 Z0.35 X82.0 Y56.0 E116.76225
G1 Z0.35 X83.0 Y56.0 E116.90225
G1 Z0.35 X84.0 Y57.0 E117.10024
G1 Z0.35 X82.0 Y61.0 E117.72884
G1 Z0.35 X83.0 Y62.0 E117.9346
G1 Z0.35 X85.0 Y62.0 E118.2146
G1 Z0.35 X86.0 Y61.0 E118.41259
G1 Z0.35 X84.0 Y57.0 E119.04119
G1 Z0.35 X85.0 Y56.0 E119.24695
G1 Z0.35 X86.0 Y56.0 E119.38695
G1 Z0.35 X86.0 Y56.0 E119.38695
G1 Z0.35 X87.0 Y56.0 E119.52695
G1 Z0.35 X88.0 Y57.0 E119.72494
G1 Z0.35 X86.0 Y61.0 E120.35354
G1 Z0.35 X87.0 Y62.0 E120.559296
G1 Z0.35 X89.0 Y62.0 E120.839294
G1 Z0.35 X90.0 Y61.0 E121.037285
G1 Z0.35 X88.0 Y57.0 E121.665886
G1 Z0.35 X89.0 Y56.0 E121.87164
G1 Z0.35 X90.0 Y56.0 E122.01164
G1 Z0.35 X90.0 Y59.0 E122.43257
G1 Z0.35 X90.0 Y59.0 E122.46057
G1 Z0.35 X89.0 Y59.0 E122.60057
G1 Z0.35 X88.0 Y60.0 E122.79856
G1 Z0.35 X90.0 Y64.0 E123.42716
G1 Z0.35 X89.0 Y65.0 E123.63292
G1 Z0.35 X87.0 Y65.0 E123.91292
G1 Z0.35 X86.0 Y64.0 E124.11091
G1 Z0.35 X88.0 Y60.0 E124.73951
G1 Z0.35 X87.0 Y59.0 E124.94527
G1 Z0.35 X86.0 Y59.0 E125.085266
G1 Z0.35 X86.0 Y59.0 E125.085266
G1 Z0.35 X85.0 Y59.0 E125.225266
G1 Z0.35 X84.0 Y60.0 E125.423256
G1 Z0.35 X86.0 Y64.0 E126.05186
G1 Z0.35 X85.0 Y65.0 E126.257614
G1 Z0.35 X83.0 Y65.0 E126.53761
G1 Z0.35 X82.0 Y64.0 E126.7356
G1 Z0.35 X84.0 Y60.0 E127.364204
G1 Z0.35 X83.0 Y59.0 E127.56996
G1 Z0.35 X82.0 Y59.0 E127.70996
G1 Z0.35 X82.0 Y59.0 E127.70996
G1 Z0.35 X81.0 Y59.0 E127.84996
G1 Z0.35 X80.0 Y60.0 E128.04794
G1 Z0.35 X82.0 Y64.0 E128.67654
G1 Z0.35 X81.0 Y65.0 E128.8823
G1 Z0.35 X79.0 Y65.0 E129.1623
G1 Z0.35 X78.0 Y64.0 E129.36028
G1 Z0.35 X80.0 Y60.0 E129.98888
G1 Z0.35 X79.0 Y59.0 E130.19464
G1 Z0.35 X78.0 Y59.0 E130.33464
G1 Z0.35 X78.0 Y59.0 E130.33464
G1 Z0.35 X77.0 Y59.0 E130.47464
G1 Z0.35 X76.0 Y60.0 E130.67262
G1 Z0.35 X78.0 Y64.0 E131.30122
G1 Z0.35 X77.0 Y65.0 E131.50699
G1 Z0.35 X75.0 Y65.0 E131.78699
G1 Z0.35 X74.0 Y64.0 E131.98497
G1 Z0.35 X76.0 Y60.0 E132.61357
G1 Z0.35 X75.0 Y59.0 E132.81934
G1 Z0.35 X74.0 Y59.0 E132.95934
G1 Z0.35 X74.0 Y59.0 E132.95934
G1 Z0.35 X73.0 Y59.0 E133.09933
G1 Z0.35 X72.0 Y60.0 E133.29732
G1 Z0.35 X74.0 Y64.0 E133.92592
G1 Z0.35 X73.0 Y65.0 E134.13168
G1 Z0.35 X71.0 Y65.0 E134.41168
G1 Z0.35 X70.0 Y64.0 E134.60966
G1 Z0.35 X72.0 Y60.0 E135.23827
G1 Z0.35 X71.0 Y59.0 E135.44403
G1 Z0.35 X70.0 Y59.0 E135.58403
G1 Z0.35 X70.0 Y59.0 E135.58403
G1 Z0.35 X69.0 Y59.0 E135.72403
G1 Z0.35 X68.0 Y60.0 E135.92201
G1 Z0.35 X70.0 Y64.0 E136.55061
G1 Z0.35 X69.0 Y65.0 E136.75638
G1 Z0.35 X67.0 Y65.0 E137.03638
G1 Z0.35 X66.0 Y64.0 E137.23436
G1 Z0.35 X68.0 Y60.0 E137.86296
G1 Z0.35 X67.0 Y59.0 E138.06873
G1 Z0.35 X66.0 Y59.0 E138.20872
G1 Z0.35 X66.0 Y59.0 E138.20872
G1 Z0.35 X65.0 Y59.0 E138.34872
G1 Z0.35 X64.0 Y60.0 E138.5467
G1 Z0.35 X66.0 Y64.0 E139.17531
G1 Z0.35 X65.0 Y65.0 E139.38107
G1 Z0.35 X63.0 Y65.0 E139.66107
G1 Z0.35 X62.0 Y64.0 E139.85905
G1 Z0.35 X64.0 Y60.0 E140.48766
G1 Z0.35 X63.0 Y59.0 E140.69342
G1 Z0.35 X62.0 Y59.0 E140.83342
G1 Z0.35 X62.0 Y59.0 E140.83342
G1 Z0.35 X61.0 Y59.0 E140.97342
G1 Z0.35 X60.0 Y60.0 E141.1714
G1 Z0.35 X62.0 Y64.0 E141.8
G1 Z0.35 X61.0 Y65.0 E142.00577
G1 Z0.35 X59.0 Y65.0 E142.28577
G1 Z0.35 X58.0 Y64.0 E142.48375
G1 Z0.35 X60.0 Y60.0 E143.11235
G1 Z0.35 X59.0 Y59.0 E143.31812
G1 Z0.35 X58.0 Y59.0 E143.45811
G1 Z0.35 X58.0 Y59.0 E143.45811
G1 Z0.35 X57.0 Y59.0 E143.59811
G1 Z0.35 X56.0 Y60.0 E143.7961
G1 Z0.35 X58.0 Y64.0 E144.4247
G1 Z0.35 X57.0 Y65.0 E144.63046
G1 Z0.35 X55.0 Y65.0 E144.91046
G1 Z0.35 X54.0 Y64.0 E145.10844
G1 Z0.35 X56.0 Y60.0 E145.73705
G1 Z0.35 X55.0 Y59.0 E145.94281
G1 Z0.35 X54.0 Y59.0 E146.08281
G1 Z0.35 X54.0 Y59.0 E146.08281
G1 Z0.35 X53.0 Y59.0 E146.22281
G1 Z0.35 X52.0 Y60.0 E146.42079
G1 Z0.35 X54.0 Y64.0 E147.0494
G1 Z0.35 X53.0 Y65.0 E147.25516
G1 Z0.35 X51.0 Y65.0 E147.53516
G1 Z0.35 X50.0 Y64.0 E147.73314
G1 Z0.35 X52.0 Y60.0 E148.36174
G1 Z0.35 X51.0 Y59.0 E148.5675
G1 Z0.35 X50.0 Y59.0 E148.7075
G1 Z0.35 X50.0 Y62.0 E149.12843
G1 Z0.35 X50.0 Y62.0 E149.15643
G1 Z0.35 X51.0 Y62.0 E149.29643
G1 Z0.35 X52.0 Y63.0 E149.49442
G1 Z0.35 X50.0 Y67.0 E150.12302
G1 Z0.35 X51.0 Y68.0 E150.32877
G1 Z0.35 X53.0 Y68.0 E150.60876
G1 Z0.35 X54.0 Y67.0 E150.80675
G1 Z0.35 X52.0 Y63.0 E151.43535
G1 Z0.35 X53.0 Y62.0 E151.64111
G1 Z0.35 X54.0 Y62.0 E151.78111
G1 Z0.35 X54.0 Y62.0 E151.78111
G1 Z0.35 X55.0 Y62.0 E151.92111
G1 Z0.35 X56.0 Y63.0 E152.1191
G1 Z0.35 X54.0 Y67.0 E152.7477
G1 Z0.35 X55.0 Y68.0 E152.95346
G1 Z0.35 X57.0 Y68.0 E153.23346
G1 Z0.35 X58.0 Y67.0 E153.43144
G1 Z0.35 X56.0 Y63.0 E154.06004
G1 Z0.35 X57.0 Y62.0 E154.26581
G1 Z0.35 X58.0 Y62.0 E154.4058
G1 Z0.35 X58.0 Y62.0 E154.4058
G1 Z0.35 X59.0 Y62.0 E154.5458
G1 Z0.35 X60.0 Y63.0 E154.74379
G1 Z0.35 X58.0 Y67.0 E155.37239
G1 Z0.35 X59.0 Y68.0 E155.57816
G1 Z0.35 X61.0 Y68.0 E155.85815
G1 Z0.35 X62.0 Y67.0 E156.05614
G1 Z0.35 X60.0 Y63.0 E156.68474
G1 Z0.35 X61.0 Y62.0 E156.8905
G1 Z0.35 X62.0 Y62.0 E157.0305
G1 Z0.35 X62.0 Y62.0 E157.0305
G1 Z0.35 X63.0 Y62.0 E157.1705
G1 Z0.35 X64.0 Y63.0 E157.36848
G1 Z0.35 X62.0 Y67.0 E157.99709
G1 Z0.35 X63.0 Y68.0 E158.20285
G1 Z0.35 X65.0 Y68.0 E158.48285
G1 Z0.35 X66.0 Y67.0 E158.68083
G1 Z0.35 X64.0 Y63.0 E159.30943
G1 Z0.35 X65.0 Y62.0 E159.5152
G1 Z0.35 X66.0 Y62.0 E159.6552
G1 Z0.35 X66.0 Y62.0 E159.6552
G1 Z0.35 X67.0 Y62.0 E159.7952
G1 Z0.35 X68.0 Y63.0 E159.99318
G1 Z0.35 X66.0 Y67.0 E160.62178
G1 Z0.35 X67.0 Y68.0 E160.82755
G1 Z0.35 X69.0 Y68.0 E161.10754
G1 Z0.35 X70.0 Y67.0 E161.30553
G1 Z0.35 X68.0 Y63.0 E161.93413
G1 Z0.35 X69.0 Y62.0 E162.1399
G1 Z0.35 X70.0 Y62.0 E162.27989
G1 Z0.35 X70.0 Y62.0 E162.27989
G1 Z0.35 X71.0 Y62.0 E162.41989
G1 Z0.35 X72.0 Y63.0 E162.61787
G1 Z0.35 X70.0 Y67.0 E163.24648
G1 Z0.35 X71.0 Y68.0 E163.45224
G1 Z0.35 X73.0 Y68.0 E163.73224
G1 Z0.35 X74.0 Y67.0 E163.93022
G1 Z0.35 X72.0 Y63.0 E164.55882
G1 Z0.35 X73.0 Y62.0 E164.76459
G1 Z0.35 X74.0 Y62.0 E164.90459
G1 Z0.35 X74.0 Y62.0 E164.90459
G1 Z0.35 X75.0 Y62.0 E165.04459
G1 Z0.35 X76.0 Y63.0 E165.24257
G1 Z0.35 X74.0 Y67.0 E165.87117
G1 Z0.35 X75.0 Y68.0 E166.07693
G1 Z0.35 X77.0 Y68.0 E166.35693
G1 Z0.35 X78.0 Y67.0 E166.55492
G1 Z0.35 X76.0 Y63.0 E167.18352
G1 Z0.35 X77.0 Y62.0 E167.38928
G1 Z0.35 X78.0 Y62.0 E167.52928
G1 Z0.35 X78.0 Y62.0 E167.52928
G1 Z0.35 X79.0 Y62.0 E167.66928
G1 Z0.35 X80.0 Y63.0 E167.86726
G1 Z0.35 X78.0 Y67.0 E168.49586
G1 Z0.35 X79.0 Y68.0 E168.70163
G1 Z0.35 X81.0 Y68.0 E168.98163
G1 Z0.35 X82.0 Y67.0 E169.17961
G1 Z0.35 X80.0 Y63.0 E169.80821
G1 Z0.35 X81.0 Y62.0 E170.01398
G1 Z0.35 X82.0 Y62.0 E170.15398
G1 Z0.35 X82.0 Y62.0 E170.15398
G1 Z0.35 X83.0 Y62.0 E170.29398
G1 Z0.35 X84.0 Y63.0 E170.49196
G1 Z0.35 X82.0 Y67.0 E171.12056
G1 Z0.35 X83.0 Y68.0 E171.32632
G1 Z0.35 X85.0 Y68.0 E171.60632
G1 Z0.35 X86.0 Y67.0 E171.8043
G1 Z0.35 X84.0 Y63.0 E172.4329
G1 Z0.35 X85.0 Y62.0 E172.63867
G1 Z0.35 X86.0 Y62.0 E172.77867
G1 Z0.35 X86.0 Y62.0 E172.77867
G1 Z0.35 X87.0 Y62.0 E172.91867
G1 Z0.35 X88.0 Y63.0 E173.11665
G1 Z0.35 X86.0 Y67.0 E173.74525
G1 Z0.35 X87.0 Y68.0 E173.95102
G1 Z0.35 X89.0 Y68.0 E174.23102
G1 Z0.35 X90.0 Y67.0 E174.429
G1 Z0.35 X88.0 Y63.0 E175.0576
G1 Z0.35 X89.0 Y62.0 E175.26337
G1 Z0.35 X90.0 Y62.0 E175.40337
G1 Z0.35 X90.0 Y65.0 E175.8243
G1 Z0.35 X90.0 Y65.0 E175.8523
G1 Z0.35 X89.0 Y65.0 E175.9923
G1 Z0.35 X88.0 Y66.0 E176.19028
G1 Z0.35 X90.0 Y70.0 E176.81888
G1 Z0.35 X89.0 Y71.0 E177.02463
G1 Z0.35 X87.0 Y71.0 E177.30463
G1 Z0.35 X86.0 Y70.0 E177.50261
G1 Z0.35 X88.0 Y66.0 E178.13121
G1 Z0.35 X87.0 Y65.0 E178.33698
G1 Z0.35 X86.0 Y65.0 E178.47697
G1 Z0.35 X86.0 Y65.0 E178.47697
G1 Z0.35 X85.0 Y65.0 E178.61697
G1 Z0.35 X84.0 Y66.0 E178.81496
G1 Z0.35 X86.0 Y70.0 E179.44356
G1 Z0.35 X85.0 Y71.0 E179.64932
G1 Z0.35 X83.0 Y71.0 E179.92932
G1 Z0.35 X82.0 Y70.0 E180.1273
G1 Z0.35 X84.0 Y66.0 E180.7559
G1 Z0.35 X83.0 Y65.0 E180.96167
G1 Z0.35 X82.0 Y65.0 E181.10167
G1 Z0.35 X82.0 Y65.0 E181.10167
G1 Z0.35 X81.0 Y65.0 E181.24167
G1 Z0.35 X80.0 Y66.0 E181.43965
G1 Z0.35 X82.0 Y70.0 E182.06825
G1 Z0.35 X81.0 Y71.0 E182.27402
G1 Z0.35 X79.0 Y71.0 E182.55402
G1 Z0.35 X78.0 Y70.0 E182.752
G1 Z0.35 X80.0 Y66.0 E183.3806
G1 Z0.35 X79.0 Y65.0 E183.58636
G1 Z0.35 X78.0 Y65.0 E183.72636
G1 Z0.35 X78.0 Y65.0 E183.72636
G1 Z0.35 X77.0 Y65.0 E183.86636
G1 Z0.35 X76.0 Y66.0 E184.06435
G1 Z0.35 X78.0 Y70.0 E184.69295
G1 Z0.35 X77.0 Y71.0 E184.89871
G1 Z0.35 X75.0 Y71.0 E185.17871
G1 Z0.35 X74.0 Y70.0 E185.3767
G1 Z0.35 X76.0 Y66.0 E186.0053
G1 Z0.35 X75.0 Y65.0 E186.21106
G1 Z0.35 X74.0 Y65.0 E186.35106
G1 Z0.35 X74.0 Y65.0 E186.35106
G1 Z0.35 X73.0 Y65.0 E186.49106
G1 Z0.35 X72.0 Y66.0 E186.68904
G1 Z0.35 X74.0 Y70.0 E187.31764
G1 Z0.35 X73.0 Y71.0 E187.5234
G1 Z0.35 X71.0 Y71.0 E187.8034
G1 Z0.35 X70.0 Y70.0 E188.00139
G1 Z0.35 X72.0 Y66.0 E188.62999
G1 Z0.35 X71.0 Y65.0 E188.83575
G1 Z0.35 X70.0 Y65.0 E188.97575
G1 Z0.35 X70.0 Y65.0 E188.97575
G1 Z0.35 X69.0 Y65.0 E189.11575
G1 Z0.35 X68.0 Y66.0 E189.31374
G1 Z0.35 X70.0 Y70.0 E189.94234
G1 Z0.35 X69.0 Y71.0 E190.1481
G1 Z0.35 X67.0 Y71.0 E190.4281
G1 Z0.35 X66.0 Y70.0 E190.62608
G1 Z0.35 X68.0 Y66.0 E191.25468
G1 Z0.35 X67.0 Y65.0 E191.46045
G1 Z0.35 X66.0 Y65.0 E191.60045
G1 Z0.35 X66.0 Y65.0 E191.60045
G1 Z0.35 X65.0 Y65.0 E191.74045
G1 Z0.35 X64.0 Y66.0 E191.93843
G1 Z0.35 X66.0 Y70.0 E192.56703
G1 Z0.35 X65.0 Y71.0 E192.7728
G1 Z0.35 X63.0 Y71.0 E193.0528
G1 Z0.35 X62.0 Y70.0 E193.25078
G1 Z0.35 X64.0 Y66.0 E193.87938
G1 Z0.35 X63.0 Y65.0 E194.08514
G1 Z0.35 X62.0 Y65.0 E194.22514
G1 Z0.35 X62.0 Y65.0 E194.22514
G1 Z0.35 X61.0 Y65.0 E194.36514
G1 Z0.35 X60.0 Y66.0 E194.56313
G1 Z0.35 X62.0 Y70.0 E195.19173
G1 Z0.35 X61.0 Y71.0 E195.39749
G1 Z0.35 X59.0 Y71.0 E195.67749
G1 Z0.35 X58.0 Y70.0 E195.87547
G1 Z0.35 X60.0 Y66.0 E196.50407
G1 Z0.35 X59.0 Y65.0 E196.70984
G1 Z0.35 X58.0 Y65.0 E196.84984
G1 Z0.35 X58.0 Y65.0 E196.84984
G1 Z0.35 X57.0 Y65.0 E196.98984
G1 Z0.35 X56.0 Y66.0 E197.18782
G1 Z0.35 X58.0 Y70.0 E197.81642
G1 Z0.35 X57.0 Y71.0 E198.02219
G1 Z0.35 X55.0 Y71.0 E198.30219
G1 Z0.35 X54.0 Y70.0 E198.50017
G1 Z0.35 X56.0 Y66.0 E199.12877
G1 Z0.35 X55.0 Y65.0 E199.33453
G1 Z0.35 X54.0 Y65.0 E199.47453
G1 Z0.35 X54.0 Y65.0 E199.47453
G1 Z0.35 X53.0 Y65.0 E199.61453
G1 Z0.35 X52.0 Y66.0 E199.81252
G1 Z0.35 X54.0 Y70.0 E200.44112
G1 Z0.35 X53.0 Y71.0 E200.64688
G1 Z0.35 X51.0 Y71.0 E200.92688
G1 Z0.35 X50.0 Y70.0 E201.12486
G1 Z0.35 X52.0 Y66.0 E201.75346
G1 Z0.35 X51.0 Y65.0 E201.95923
G1 Z0.35 X50.0 Y65.0 E202.09923
G1 Z0.35 X50.0 Y68.0 E202.52016
G1 Z0.35 X50.0 Y68.0 E202.54816
G1 Z0.35 X51.0 Y68.0 E202.68816
G1 Z0.35 X52.0 Y69.0 E202.88614
G1 Z0.35 X50.0 Y73.0 E203.51474
G1 Z0.35 X51.0 Y74.0 E203.72049
G1 Z0.35 X53.0 Y74.0 E204.00049
G1 Z0.35 X54.0 Y73.0 E204.19847
G1 Z0.35 X52.0 Y69.0 E204.82707
G1 Z0.35 X53.0 Y68.0 E205.03284
G1 Z0.35 X54.0 Y68.0 E205.17284
G1 Z0.35 X54.0 Y68.0 E205.17284
G1 Z0.35 X55.0 Y68.0 E205.31284
G1 Z0.35 X56.0 Y69.0 E205.51082
G1 Z0.35 X54.0 Y73.0 E206.13942
G1 Z0.35 X55.0 Y74.0 E206.34518
G1 Z0.35 X57.0 Y74.0 E206.62518
G1 Z0.35 X58.0 Y73.0 E206.82317
G1 Z0.35 X56.0 Y69.0 E207.45177
G1 Z0.35 X57.0 Y68.0 E207.65753
G1 Z0.35 X58.0 Y68.0 E207.79753
G1 Z0.35 X58.0 Y68.0 E207.79753
G1 Z0.35 X59.0 Y68.0 E207.93753
G1 Z0.35 X60.0 Y69.0 E208.13551
G1 Z0.35 X58.0 Y73.0 E208.76411
G1 Z0.35 X59.0 Y74.0 E208.96988
G1 Z0.35 X61.0 Y74.0 E209.24988
G1 Z0.35 X62.0 Y73.0 E209.44786
G1 Z0.35 X60.0 Y69.0 E210.07646
G1 Z0.35 X61.0 Y68.0 E210.28223
G1 Z0.35 X62.0 Y68.0 E210.42223
G1 Z0.35 X62.0 Y68.0 E210.42223
G1 Z0.35 X63.0 Y68.0 E210.56223
G1 Z0.35 X64.0 Y69.0 E210.76021
G1 Z0.35 X62.0 Y73.0 E211.38881
G1 Z0.35 X63.0 Y74.0 E211.59457
G1 Z0.35 X65.0 Y74.0 E211.87457
G1 Z0.35 X66.0 Y73.0 E212.07256
G1 Z0.35 X64.0 Y69.0 E212.70116
G1 Z0.35 X65.0 Y68.0 E212.90692
G1 Z0.35 X66.0 Y68.0 E213.04692
G1 Z0.35 X66.0 Y68.0 E213.04692
G1 Z0.35 X67.0 Y68.0 E213.18692
G1 Z0.35 X68.0 Y69.0 E213.3849
G1 Z0.35 X66.0 Y73.0 E214.0135
G1 Z0.35 X67.0 Y74.0 E214.21927
G1 Z0.35 X69.0 Y74.0 E214.49927
G1 Z0.35 X70.0 Y73.0 E214.69725
G1 Z0.35 X68.0 Y69.0 E215.32585
G1 Z0.35 X69.0 Y68.0 E215.53162
G1 Z0.35 X70.0 Y68.0 E215.67162
G1 Z0.35 X70.0 Y68.0 E215.67162
G1 Z0.35 X71.0 Y68.0 E215.81161
G1 Z0.35 X72.0 Y69.0 E216.0096
G1 Z0.35 X70.0 Y73.0 E216.6382
G1 Z0.35 X71.0 Y74.0 E216.84396
G1 Z0.35 X73.0 Y74.0 E217.12396
G1 Z0.35 X74.0 Y73.0 E217.32195
G1 Z0.35 X72.0 Y69.0 E217.95055
G1 Z0.35 X73.0 Y68.0 E218.15631
G1 Z0.35 X74.0 Y68.0 E218.29631
G1 Z0.35 X74.0 Y68.0 E218.29631
G1 Z0.35 X75.0 Y68.0 E218.43631
G1 Z0.35 X76.0 Y69.0 E218.6343
G1 Z0.35 X74.0 Y73.0 E219.2629
G1 Z0.35 X75.0 Y74.0 E219.46866
G1 Z0.35 X77.0 Y74.0 E219.74866
G1 Z0.35 X78.0 Y73.0 E219.94664
G1 Z0.35 X76.0 Y69.0 E220.57524
G1 Z0.35 X77.0 Y68.0 E220.781
G1 Z0.35 X78.0 Y68.0 E220.921
G1 Z0.35 X78.0 Y68.0 E220.921
G1 Z0.35 X79.0 Y68.0 E221.061
G1 Z0.35 X80.0 Y69.0 E221.25899
G1 Z0.35 X78.0 Y73.0 E221.88759
G1 Z0.35 X79.0 Y74.0 E222.09335
G1 Z0.35 X81.0 Y74.0 E222.37335
G1 Z0.35 X82.0 Y73.0 E222.57133
G1 Z0.35 X80.0 Y69.0 E223.19994
G1 Z0.35 X81.0 Y68.0 E223.4057
G1 Z0.35 X82.0 Y68.0 E223.5457
G1 Z0.35 X82.0 Y68.0 E223.5457
G1 Z0.35 X83.0 Y68.0 E223.6857
G1 Z0.35 X84.0 Y69.0 E223.88368
G1 Z0.35 X82.0 Y73.0 E224.51228
G1 Z0.35 X83.0 Y74.0 E224.71805
G1 Z0.35 X85.0 Y74.0 E224.99805
G1 Z0.35 X86.0 Y73.0 E225.19603
G1 Z0.35 X84.0 Y69.0 E225.82463
G1 Z0.35 X85.0 Y68.0 E226.0304
G1 Z0.35 X86.0 Y68.0 E226.1704
G1 Z0.35 X86.0 Y68.0 E226.1704
G1 Z0.35 X87.0 Y68.0 E226.3104
G1 Z0.35 X88.0 Y69.0 E226.50838
G1 Z0.35 X86.0 Y73.0 E227.13698
G1 Z0.35 X87.0 Y74.0 E227.34274
G1 Z0.35 X89.0 Y74.0 E227.62274
G1 Z0.35 X90.0 Y73.0 E227.82072
G1 Z0.35 X88.0 Y69.0 E228.44933
G1 Z0.35 X89.0 Y68.0 E228.65509
G1 Z0.35 X90.0 Y68.0 E228.79509
G1 Z0.35 X90.0 Y71.0 E229.21602
G1 Z0.35 X90.0 Y71.0 E229.24402
G1 Z0.35 X89.0 Y71.0 E229.38402
G1 Z0.35 X88.0 Y72.0 E229.582
G1 Z0.35 X90.0 Y76.0 E230.2106
G1 Z0.35 X89.0 Y77.0 E230.41635
G1 Z0.35 X87.0 Y77.0 E230.69635
G1 Z0.35 X86.0 Y76.0 E230.89433
G1 Z0.35 X88.0 Y72.0 E231.52293
G1 Z0.35 X87.0 Y71.0 E231.7287
G1 Z0.35 X86.0 Y71.0 E231.8687
G1 Z0.35 X86.0 Y71.0 E231.8687
G1 Z0.35 X85.0 Y71.0 E232.0087
G1 Z0.35 X84.0 Y72.0 E232.20668
G1 Z0.35 X86.0 Y76.0 E232.83528
G1 Z0.35 X85.0 Y77.0 E233.04105
G1 Z0.35 X83.0 Y77.0 E233.32104
G1 Z0.35 X82.0 Y76.0 E233.51903
G1 Z0.35 X84.0 Y72.0 E234.14763
G1 Z0.35 X83.0 Y71.0 E234.3534
G1 Z0.35 X82.0 Y71.0 E234.4934
G1 Z0.35 X82.0 Y71.0 E234.4934
G1 Z0.35 X81.0 Y71.0 E234.63339
G1 Z0.35 X80.0 Y72.0 E234.83138
G1 Z0.35 X82.0 Y76.0 E235.45998
G1 Z0.35 X81.0 Y77.0 E235.66574
G1 Z0.35 X79.0 Y77.0 E235.94574
G1 Z0.35 X78.0 Y76.0 E236.14372
G1 Z0.35 X80.0 Y72.0 E236.77232
G1 Z0.35 X79.0 Y71.0 E236.97809
G1 Z0.35 X78.0 Y71.0 E237.11809
G1 Z0.35 X78.0 Y71.0 E237.11809
G1 Z0.35 X77.0 Y71.0 E237.25809
G1 Z0.35 X76.0 Y72.0 E237.45607
G1 Z0.35 X78.0 Y76.0 E238.08467
G1 Z0.35 X77.0 Y77.0 E238.29044
G1 Z0.35 X75.0 Y77.0 E238.57043
G1 Z0.35 X74.0 Y76.0 E238.76842
G1 Z0.35 X76.0 Y72.0 E239.39702
G1 Z0.35 X75.0 Y71.0 E239.60278
G1 Z0.35 X74.0 Y71.0 E239.74278
G1 Z0.35 X74.0 Y71.0 E239.74278
G1 Z0.35 X73.0 Y71.0 E239.88278
G1 Z0.35 X72.0 Y72.0 E240.08076
G1 Z0.35 X74.0 Y76.0 E240.70937
G1 Z0.35 X73.0 Y77.0 E240.91513
G1 Z0.35 X71.0 Y77.0 E241.19513
G1 Z0.35 X70.0 Y76.0 E241.39311
G1 Z0.35 X72.0 Y72.0 E242.02171
G1 Z0.35 X71.0 Y71.0 E242.22748
G1 Z0.35 X70.0 Y71.0 E242.36748
G1 Z0.35 X70.0 Y71.0 E242.36748
G1 Z0.35 X69.0 Y71.0 E242.50748
G1 Z0.35 X68.0 Y72.0 E242.70546
G1 Z0.35 X70.0 Y76.0 E243.33406
G1 Z0.35 X69.0 Y77.0 E243.53983
G1 Z0.35 X67.0 Y77.0 E243.81982
G1 Z0.35 X66.0 Y76.0 E244.0178
G1 Z0.35 X68.0 Y72.0 E244.64641
G1 Z0.35 X67.0 Y71.0 E244.85217
G1 Z0.35 X66.0 Y71.0 E244.99217
G1 Z0.35 X66.0 Y71.0 E244.99217
G1 Z0.35 X65.0 Y71.0 E245.13217
G1 Z0.35 X64.0 Y72.0 E245.33015
G1 Z0.35 X66.0 Y76.0 E245.95876
G1 Z0.35 X65.0 Y77.0 E246.16452
G1 Z0.35 X63.0 Y77.0 E246.44452
G1 Z0.35 X62.0 Y76.0 E246.6425
G1 Z0.35 X64.0 Y72.0 E247.2711
G1 Z0.35 X63.0 Y71.0 E247.47687
G1 Z0.35 X62.0 Y71.0 E247.61687
G1 Z0.35 X62.0 Y71.0 E247.61687
G1 Z0.35 X61.0 Y71.0 E247.75687
G1 Z0.35 X60.0 Y72.0 E247.95485
G1 Z0.35 X62.0 Y76.0 E248.58345
G1 Z0.35 X61.0 Y77.0 E248.78922
G1 Z0.35 X59.0 Y77.0 E249.06921
G1 Z0.35 X58.0 Y76.0 E249.2672
G1 Z0.35 X60.0 Y72.0 E249.8958
G1 Z0.35 X59.0 Y71.0 E250.10156
G1 Z0.35 X58.0 Y71.0 E250.24156
G1 Z0.35 X58.0 Y71.0 E250.24156
G1 Z0.35 X57.0 Y71.0 E250.38156
G1 Z0.35 X56.0 Y72.0 E250.57954
G1 Z0.35 X58.0 Y76.0 E251.20815
G1 Z0.35 X57.0 Y77.0 E251.41391
G1 Z0.35 X55.0 Y77.0 E251.69391
G1 Z0.35 X54.0 Y76.0 E251.89189
G1 Z0.35 X56.0 Y72.0 E252.5205
G1 Z0.35 X55.0 Y71.0 E252.72626
G1 Z0.35 X54.0 Y71.0 E252.86626
G1 Z0.35 X54.0 Y71.0 E252.86626
G1 Z0.35 X53.0 Y71.0 E253.00626
G1 Z0.35 X52.0 Y72.0 E253.20424
G1 Z0.35 X54.0 Y76.0 E253.83284
G1 Z0.35 X53.0 Y77.0 E254.0386
G1 Z0.35 X51.0 Y77.0 E254.3186
G1 Z0.35 X50.0 Y76.0 E254.51659
G1 Z0.35 X52.0 Y72.0 E255.14519
G1 Z0.35 X51.0 Y71.0 E255.35095
G1 Z0.35 X50.0 Y71.0 E255.49095
G1 Z0.35 X50.0 Y74.0 E255.91188
G1 Z0.35 X50.0 Y74.0 E255.93988
G1 Z0.35 X51.0 Y74.0 E256.0799
G1 Z0.35 X52.0 Y75.0 E256.2779
G1 Z0.35 X50.0 Y79.0 E256.9065
G1 Z0.35 X51.0 Y80.0 E257.11224
G1 Z0.35 X53.0 Y80.0 E257.39224
G1 Z0.35 X54.0 Y79.0 E257.59024
G1 Z0.35 X52.0 Y75.0 E258.21884
G1 Z0.35 X53.0 Y74.0 E258.4246
G1 Z0.35 X54.0 Y74.0 E258.5646
G1 Z0.35 X54.0 Y74.0 E258.5646
G1 Z0.35 X55.0 Y74.0 E258.70462
G1 Z0.35 X56.0 Y75.0 E258.90262
G1 Z0.35 X54.0 Y79.0 E259.53122
G1 Z0.35 X55.0 Y80.0 E259.73697
G1 Z0.35 X57.0 Y80.0 E260.01697
G1 Z0.35 X58.0 Y79.0 E260.21497
G1 Z0.35 X56.0 Y75.0 E260.84357
G1 Z0.35 X57.0 Y74.0 E261.04932
G1 Z0.35 X58.0 Y74.0 E261.18933
G1 Z0.35 X58.0 Y74.0 E261.18933
G1 Z0.35 X59.0 Y74.0 E261.32935
G1 Z0.35 X60.0 Y75.0 E261.52734
G1 Z0.35 X58.0 Y79.0 E262.15594
G1 Z0.35 X59.0 Y80.0 E262.3617
G1 Z0.35 X61.0 Y80.0 E262.6417
G1 Z0.35 X62.0 Y79.0 E262.8397
G1 Z0.35 X60.0 Y75.0 E263.4683
G1 Z0.35 X61.0 Y74.0 E263.67404
G1 Z0.35 X62.0 Y74.0 E263.81406
G1 Z0.35 X62.0 Y74.0 E263.81406
G1 Z0.35 X63.0 Y74.0 E263.95407
G1 Z0.35 X64.0 Y75.0 E264.15207
G1 Z0.35 X62.0 Y79.0 E264.78067
G1 Z0.35 X63.0 Y80.0 E264.98642
G1 Z0.35 X65.0 Y80.0 E265.26642
G1 Z0.35 X66.0 Y79.0 E265.46442
G1 Z0.35 X64.0 Y75.0 E266.09302
G1 Z0.35 X65.0 Y74.0 E266.29877
G1 Z0.35 X66.0 Y74.0 E266.43878
G1 Z0.35 X66.0 Y74.0 E266.43878
G1 Z0.35 X67.0 Y74.0 E266.5788
G1 Z0.35 X68.0 Y75.0 E266.7768
G1 Z0.35 X66.0 Y79.0 E267.4054
G1 Z0.35 X67.0 Y80.0 E267.61115
G1 Z0.35 X69.0 Y80.0 E267.89114
G1 Z0.35 X70.0 Y79.0 E268.08914
G1 Z0.35 X68.0 Y75.0 E268.71774
G1 Z0.35 X69.0 Y74.0 E268.9235
G1 Z0.35 X70.0 Y74.0 E269.0635
G1 Z0.35 X70.0 Y74.0 E269.0635
G1 Z0.35 X71.0 Y74.0 E269.20352
G1 Z0.35 X72.0 Y75.0 E269.40152
G1 Z0.35 X70.0 Y79.0 E270.03012
G1 Z0.35 X71.0 Y80.0 E270.23587
G1 Z0.35 X73.0 Y80.0 E270.51587
G1 Z0.35 X74.0 Y79.0 E270.71387
G1 Z0.35 X72.0 Y75.0 E271.34247
G1 Z0.35 X73.0 Y74.0 E271.54822
G1 Z0.35 X74.0 Y74.0 E271.68823
G1 Z0.35 X74.0 Y74.0 E271.68823
G1 Z0.35 X75.0 Y74.0 E271.82825
G1 Z0.35 X76.0 Y75.0 E272.02625
G1 Z0.35 X74.0 Y79.0 E272.65485
G1 Z0.35 X75.0 Y80.0 E272.8606
G1 Z0.35 X77.0 Y80.0 E273.1406
G1 Z0.35 X78.0 Y79.0 E273.3386
G1 Z0.35 X76.0 Y75.0 E273.9672
G1 Z0.35 X77.0 Y74.0 E274.17294
G1 Z0.35 X78.0 Y74.0 E274.31296
G1 Z0.35 X78.0 Y74.0 E274.31296
G1 Z0.35 X79.0 Y74.0 E274.45297
G1 Z0.35 X80.0 Y75.0 E274.65097
G1 Z0.35 X78.0 Y79.0 E275.27957
G1 Z0.35 X79.0 Y80.0 E275.48532
G1 Z0.35 X81.0 Y80.0 E275.76532
G1 Z0.35 X82.0 Y79.0 E275.96332
G1 Z0.35 X80.0 Y75.0 E276.59192
G1 Z0.35 X81.0 Y74.0 E276.79767
G1 Z0.35 X82.0 Y74.0 E276.93768
G1 Z0.35 X82.0 Y74.0 E276.93768
G1 Z0.35 X83.0 Y74.0 E277.0777
G1 Z0.35 X84.0 Y75.0 E277.2757
G1 Z0.35 X82.0 Y79.0 E277.9043
G1 Z0.35 X83.0 Y80.0 E278.11005
G1 Z0.35 X85.0 Y80.0 E278.39005
G1 Z0.35 X86.0 Y79.0 E278.58804
G1 Z0.35 X84.0 Y75.0 E279.21664
G1 Z0.35 X85.0 Y74.0 E279.4224
G1 Z0.35 X86.0 Y74.0 E279.5624
G1 Z0.35 X86.0 Y74.0 E279.5624
G1 Z0.35 X87.0 Y74.0 E279.70242
G1 Z0.35 X88.0 Y75.0 E279.90042
G1 Z0.35 X86.0 Y79.0 E280.52902
G1 Z0.35 X87.0 Y80.0 E280.73477
G1 Z0.35 X89.0 Y80.0 E281.01477
G1 Z0.35 X90.0 Y79.0 E281.21277
G1 Z0.35 X88.0 Y75.0 E281.84137
G1 Z0.35 X89.0 Y74.0 E282.04712
G1 Z0.35 X90.0 Y74.0 E282.18713
G1 Z0.35 X90.0 Y77.0 E282.60806
G1 Z0.35 X90.0 Y77.0 E282.63608
G1 Z0.35 X89.0 Y77.0 E282.7761
G1 Z0.35 X88.0 Y78.0 E282.9741
G1 Z0.35 X90.0 Y82.0 E283.6027
G1 Z0.35 X89.0 Y83.0 E283.80844
G1 Z0.35 X87.0 Y83.0 E284.08844
G1 Z0.35 X86.0 Y82.0 E284.28644
G1 Z0.35 X88.0 Y78.0 E284.91504
G1 Z0.35 X87.0 Y77.0 E285.1208
G1 Z0.35 X86.0 Y77.0 E285.2608
G1 Z0.35 X86.0 Y77.0 E285.2608
G1 Z0.35 X85.0 Y77.0 E285.40082
G1 Z0.35 X84.0 Y78.0 E285.59882
G1 Z0.35 X86.0 Y82.0 E286.22742
G1 Z0.35 X85.0 Y83.0 E286.43317
G1 Z0.35 X83.0 Y83.0 E286.71317
G1 Z0.35 X82.0 Y82.0 E286.91116
G1 Z0.35 X84.0 Y78.0 E287.53976
G1 Z0.35 X83.0 Y77.0 E287.7455
G1 Z0.35 X82.0 Y77.0 E287.88553
G1 Z0.35 X82.0 Y77.0 E287.88553
G1 Z0.35 X81.0 Y77.0 E288.02554
G1 Z0.35 X80.0 Y78.0 E288.22354
G1 Z0.35 X82.0 Y82.0 E288.85214
G1 Z0.35 X81.0 Y83.0 E289.0579
G1 Z0.35 X79.0 Y83.0 E289.3379
G1 Z0.35 X78.0 Y82.0 E289.5359
G1 Z0.35 X80.0 Y78.0 E290.1645
G1 Z0.35 X79.0 Y77.0 E290.37024
G1 Z0.35 X78.0 Y77.0 E290.51025
G1 Z0.35 X78.0 Y77.0 E290.51025
G1 Z0.35 X77.0 Y77.0 E290.65027
G1 Z0.35 X76.0 Y78.0 E290.84827
G1 Z0.35 X78.0 Y82.0 E291.47687
G1 Z0.35 X77.0 Y83.0 E291.68262
G1 Z0.35 X75.0 Y83.0 E291.96262
G1 Z0.35 X74.0 Y82.0 E292.1606
G1 Z0.35 X76.0 Y78.0 E292.7892
G1 Z0.35 X75.0 Y77.0 E292.99496
G1 Z0.35 X74.0 Y77.0 E293.13498
G1 Z0.35 X74.0 Y77.0 E293.13498
G1 Z0.35 X73.0 Y77.0 E293.275
G1 Z0.35 X72.0 Y78.0 E293.473
G1 Z0.35 X74.0 Y82.0 E294.1016
G1 Z0.35 X73.0 Y83.0 E294.30734
G1 Z0.35 X71.0 Y83.0 E294.58734
G1 Z0.35 X70.0 Y82.0 E294.78534
G1 Z0.35 X72.0 Y78.0 E295.41394
G1 Z0.35 X71.0 Y77.0 E295.6197
G1 Z0.35 X70.0 Y77.0 E295.7597
G1 Z0.35 X70.0 Y77.0 E295.7597
G1 Z0.35 X69.0 Y77.0 E295.89972
G1 Z0.35 X68.0 Y78.0 E296.09772
G1 Z0.35 X70.0 Y82.0 E296.72632
G1 Z0.35 X69.0 Y83.0 E296.93207
G1 Z0.35 X67.0 Y83.0 E297.21207
G1 Z0.35 X66.0 Y82.0 E297.41006
G1 Z0.35 X68.0 Y78.0 E298.03867
G1 Z0.35 X67.0 Y77.0 E298.24442
G1 Z0.35 X66.0 Y77.0 E298.38443
G1 Z0.35 X66.0 Y77.0 E298.38443
G1 Z0.35 X65.0 Y77.0 E298.52444
G1 Z0.35 X64.0 Y78.0 E298.72244
G1 Z0.35 X66.0 Y82.0 E299.35104
G1 Z0.35 X65.0 Y83.0 E299.5568
G1 Z0.35 X63.0 Y83.0 E299.8368
G1 Z0.35 X62.0 Y82.0 E300.0348
G1 Z0.35 X64.0 Y78.0 E300.6634
G1 Z0.35 X63.0 Y77.0 E300.86914
G1 Z0.35 X62.0 Y77.0 E301.00916
G1 Z0.35 X62.0 Y77.0 E301.00916
G1 Z0.35 X61.0 Y77.0 E301.14917
G1 Z0.35 X60.0 Y78.0 E301.34717
G1 Z0.35 X62.0 Y82.0 E301.97577
G1 Z0.35 X61.0 Y83.0 E302.18152
G1 Z0.35 X59.0 Y83.0 E302.46152
G1 Z0.35 X58.0 Y82.0 E302.65952
G1 Z0.35 X60.0 Y78.0 E303.28812
G1 Z0.35 X59.0 Y77.0 E303.49387
G1 Z0.35 X58.0 Y77.0 E303.63388
G1 Z0.35 X58.0 Y77.0 E303.63388
G1 Z0.35 X57.0 Y77.0 E303.7739
G1 Z0.35 X56.0 Y78.0 E303.9719
G1 Z0.35 X58.0 Y82.0 E304.6005
G1 Z0.35 X57.0 Y83.0 E304.80624
G1 Z0.35 X55.0 Y83.0 E305.08624
G1 Z0.35 X54.0 Y82.0 E305.28424
G1 Z0.35 X56.0 Y78.0 E305.91284
G1 Z0.35 X55.0 Y77.0 E306.1186
G1 Z0.35 X54.0 Y77.0 E306.2586
G1 Z0.35 X54.0 Y77.0 E306.2586
G1 Z0.35 X53.0 Y77.0 E306.39862
G1 Z0.35 X52.0 Y78.0 E306.59662
G1 Z0.35 X54.0 Y82.0 E307.22522
G1 Z0.35 X53.0 Y83.0 E307.43097
G1 Z0.35 X51.0 Y83.0 E307.71097
G1 Z0.35 X50.0 Y82.0 E307.90897
G1 Z0.35 X52.0 Y78.0 E308.53757
G1 Z0.35 X51.0 Y77.0 E308.74332
G1 Z0.35 X50.0 Y77.0 E308.88333
G1 Z0.35 X50.0 Y80.0 E309.30426
G1 Z0.35 X50.0 Y80.0 E309.33228
G1 Z0.35 X51.0 Y80.0 E309.4723
G1 Z0.35 X52.0 Y81.0 E309.6703
G1 Z0.35 X50.0 Y85.0 E310.2989
G1 Z0.35 X51.0 Y86.0 E310.50464
G1 Z0.35 X53.0 Y86.0 E310.78464
G1 Z0.35 X54.0 Y85.0 E310.98264
G1 Z0.35 X52.0 Y81.0 E311.61124
G1 Z0.35 X53.0 Y80.0 E311.817
G1 Z0.35 X54.0 Y80.0 E311.957
G1 Z0.35 X54.0 Y80.0 E311.957
G1 Z0.35 X55.0 Y80.0 E312.09702
G1 Z0.35 X56.0 Y81.0 E312.295
G1 Z0.35 X54.0 Y85.0 E312.9236
G1 Z0.35 X55.0 Y86.0 E313.12936
G1 Z0.35 X57.0 Y86.0 E313.40936
G1 Z0.35 X58.0 Y85.0 E313.60736
G1 Z0.35 X56.0 Y81.0 E314.23596
G1 Z0.35 X57.0 Y80.0 E314.4417
G1 Z0.35 X58.0 Y80.0 E314.58173
G1 Z0.35 X58.0 Y80.0 E314.58173
G1 Z0.35 X59.0 Y80.0 E314.72174
G1 Z0.35 X60.0 Y81.0 E314.91974
G1 Z0.35 X58.0 Y85.0 E315.54834
G1 Z0.35 X59.0 Y86.0 E315.7541
G1 Z0.35 X61.0 Y86.0 E316.0341
G1 Z0.35 X62.0 Y85.0 E316.2321
G1 Z0.35 X60.0 Y81.0 E316.8607
G1 Z0.35 X61.0 Y80.0 E317.06644
G1 Z0.35 X62.0 Y80.0 E317.20645
G1 Z0.35 X62.0 Y80.0 E317.20645
G1 Z0.35 X63.0 Y80.0 E317.34647
G1 Z0.35 X64.0 Y81.0 E317.54446
G1 Z0.35 X62.0 Y85.0 E318.17307
G1 Z0.35 X63.0 Y86.0 E318.3788
G1 Z0.35 X65.0 Y86.0 E318.6588
G1 Z0.35 X66.0 Y85.0 E318.8568
G1 Z0.35 X64.0 Y81.0 E319.4854
G1 Z0.35 X65.0 Y80.0 E319.69116
G1 Z0.35 X66.0 Y80.0 E319.83118
G1 Z0.35 X66.0 Y80.0 E319.83118
G1 Z0.35 X67.0 Y80.0 E319.9712
G1 Z0.35 X68.0 Y81.0 E320.1692
G1 Z0.35 X66.0 Y85.0 E320.7978
G1 Z0.35 X67.0 Y86.0 E321.00354
G1 Z0.35 X69.0 Y86.0 E321.28354
G1 Z0.35 X70.0 Y85.0 E321.48154
G1 Z0.35 X68.0 Y81.0 E322.11014
G1 Z0.35 X69.0 Y80.0 E322.3159
G1 Z0.35 X70.0 Y80.0 E322.4559
G1 Z0.35 X70.0 Y80.0 E322.4559
G1 Z0.35 X71.0 Y80.0 E322.59592
G1 Z0.35 X72.0 Y81.0 E322.7939
G1 Z0.35 X70.0 Y85.0 E323.42252
G1 Z0.35 X71.0 Y86.0 E323.62827
G1 Z0.35 X73.0 Y86.0 E323.90826
G1 Z0.35 X74.0 Y85.0 E324.10626
G1 Z0.35 X72.0 Y81.0 E324.73486
G1 Z0.35 X73.0 Y80.0 E324.9406
G1 Z0.35 X74.0 Y80.0 E325.08063
G1 Z0.35 X74.0 Y80.0 E325.08063
G1 Z0.35 X75.0 Y80.0 E325.22064
G1 Z0.35 X76.0 Y81.0 E325.41864
G1 Z0.35 X74.0 Y85.0 E326.04724
G1 Z0.35 X75.0 Y86.0 E326.253
G1 Z0.35 X77.0 Y86.0 E326.533
G1 Z0.35 X78.0 Y85.0 E326.731
G1 Z0.35 X76.0 Y81.0 E327.3596
G1 Z0.35 X77.0 Y80.0 E327.56534
G1 Z0.35 X78.0 Y80.0 E327.70535
G1 Z0.35 X78.0 Y80.0 E327.70535
G1 Z0.35 X79.0 Y80.0 E327.84537
G1 Z0.35 X80.0 Y81.0 E328.04337
G1 Z0.35 X78.0 Y85.0 E328.67197
G1 Z0.35 X79.0 Y86.0 E328.87772
G1 Z0.35 X81.0 Y86.0 E329.1577
G1 Z0.35 X82.0 Y85.0 E329.3557
G1 Z0.35 X80.0 Y81.0 E329.9843
G1 Z0.35 X81.0 Y80.0 E330.19006
G1 Z0.35 X82.0 Y80.0 E330.33008
G1 Z0.35 X82.0 Y80.0 E330.33008
G1 Z0.35 X83.0 Y80.0 E330.4701
G1 Z0.35 X84.0 Y81.0 E330.6681
G1 Z0.35 X82.0 Y85.0 E331.2967
G1 Z0.35 X83.0 Y86.0 E331.50244
G1 Z0.35 X85.0 Y86.0 E331.78244
G1 Z0.35 X86.0 Y85.0 E331.98044
G1 Z0.35 X84.0 Y81.0 E332.60904
G1 Z0.35 X85.0 Y80.0 E332.8148
G1 Z0.35 X86.0 Y80.0 E332.9548
G1 Z0.35 X86.0 Y80.0 E332.9548
G1 Z0.35 X87.0 Y80.0 E333.09482
G1 Z0.35 X88.0 Y81.0 E333.29282
G1 Z0.35 X86.0 Y85.0 E333.92142
G1 Z0.35 X87.0 Y86.0 E334.12717
G1 Z0.35 X89.0 Y86.0 E334.40717
G1 Z0.35 X90.0 Y85.0 E334.60516
G1 Z0.35 X88.0 Y81.0 E335.23376
G1 Z0.35 X89.0 Y80.0 E335.4395
G1 Z0.35 X90.0 Y80.0 E335.57953
G1 Z0.35 X90.0 Y83.0 E336.00046
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
