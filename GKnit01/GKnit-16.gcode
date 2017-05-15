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
G1 Z0.1
G1 X46.600002 Y46.600002
G1 X46.600002 Y93.4 E4.68
G1 X101.4 Y93.4 E10.16
G1 X101.4 Y46.600002 E14.84
G1 X46.8 Y46.8 E20.300037
G1 X46.8 Y93.200005 E24.940037
G1 X101.200005 Y93.200005 E30.380037
G1 X101.200005 Y46.8 E35.02004
G1 X47.0 Y47.0 E40.440075
;start knitting
G1 F800.0
G1 Z0.02
G1 X51.0 Y50.0 E40.542057
G1 X52.0 Y51.0 E40.68348
G1 X50.0 Y55.0 E41.132477
G1 X51.0 Y56.0 E41.279446
G1 X53.0 Y56.0 E41.479446
G1 X54.0 Y55.0 E41.62087
G1 X52.0 Y51.0 E42.069866
G1 X53.0 Y50.0 E42.216835
G1 X54.0 Y50.0 E42.316833
G1 X54.0 Y50.0
G1 X55.0 Y50.0 E42.418816
G1 X56.0 Y51.0 E42.560238
G1 X54.0 Y55.0 E43.009235
G1 X55.0 Y56.0 E43.156204
G1 X57.0 Y56.0 E43.356205
G1 X58.0 Y55.0 E43.497627
G1 X56.0 Y51.0 E43.946625
G1 X57.0 Y50.0 E44.093594
G1 X58.0 Y50.0 E44.193592
G1 X58.0 Y50.0
G1 X59.0 Y50.0 E44.31021
G1 X60.0 Y51.0 E44.451633
G1 X58.0 Y55.0 E44.90063
G1 X59.0 Y56.0 E45.0476
G1 X61.0 Y56.0 E45.2476
G1 X62.0 Y55.0 E45.389023
G1 X60.0 Y51.0 E45.83802
G1 X61.0 Y50.0 E45.98499
G1 X62.0 Y50.0 E46.084988
G1 X62.0 Y50.0
G1 X63.0 Y50.0 E46.201607
G1 X64.0 Y51.0 E46.34303
G1 X62.0 Y55.0 E46.792027
G1 X63.0 Y56.0 E46.938995
G1 X65.0 Y56.0 E47.138996
G1 X66.0 Y55.0 E47.28042
G1 X64.0 Y51.0 E47.729416
G1 X65.0 Y50.0 E47.876385
G1 X66.0 Y50.0 E47.976383
G1 X66.0 Y50.0
G1 X67.0 Y50.0 E48.078365
G1 X68.0 Y51.0 E48.219788
G1 X66.0 Y55.0 E48.668785
G1 X67.0 Y56.0 E48.815754
G1 X69.0 Y56.0 E49.015755
G1 X70.0 Y55.0 E49.157177
G1 X68.0 Y51.0 E49.606174
G1 X69.0 Y50.0 E49.753143
G1 X70.0 Y50.0 E49.85314
G1 X70.0 Y50.0
G1 X71.0 Y50.0 E49.955124
G1 X72.0 Y51.0 E50.096546
G1 X70.0 Y55.0 E50.545544
G1 X71.0 Y56.0 E50.692513
G1 X73.0 Y56.0 E50.892513
G1 X74.0 Y55.0 E51.033936
G1 X72.0 Y51.0 E51.482933
G1 X73.0 Y50.0 E51.6299
G1 X74.0 Y50.0 E51.7299
G1 X74.0 Y50.0
G1 X75.0 Y50.0 E51.84652
G1 X76.0 Y51.0 E51.98794
G1 X74.0 Y55.0 E52.43694
G1 X75.0 Y56.0 E52.583908
G1 X77.0 Y56.0 E52.78391
G1 X78.0 Y55.0 E52.92533
G1 X76.0 Y51.0 E53.37433
G1 X77.0 Y50.0 E53.521297
G1 X78.0 Y50.0 E53.621296
G1 X78.0 Y50.0
G1 X79.0 Y50.0 E53.737915
G1 X80.0 Y51.0 E53.879337
G1 X78.0 Y55.0 E54.328335
G1 X79.0 Y56.0 E54.475304
G1 X81.0 Y56.0 E54.675304
G1 X82.0 Y55.0 E54.816727
G1 X80.0 Y51.0 E55.265724
G1 X81.0 Y50.0 E55.412693
G1 X82.0 Y50.0 E55.51269
G1 X82.0 Y50.0
G1 X83.0 Y50.0 E55.614674
G1 X84.0 Y51.0 E55.756096
G1 X82.0 Y55.0 E56.205093
G1 X83.0 Y56.0 E56.352062
G1 X85.0 Y56.0 E56.552063
G1 X86.0 Y55.0 E56.693485
G1 X84.0 Y51.0 E57.142483
G1 X85.0 Y50.0 E57.28945
G1 X86.0 Y50.0 E57.38945
G1 X86.0 Y50.0
G1 X87.0 Y50.0 E57.491432
G1 X88.0 Y51.0 E57.632854
G1 X86.0 Y55.0 E58.081852
G1 X87.0 Y56.0 E58.22882
G1 X89.0 Y56.0 E58.42882
G1 X90.0 Y55.0 E58.570244
G1 X88.0 Y51.0 E59.01924
G1 X89.0 Y50.0 E59.16621
G1 X90.0 Y50.0 E59.26621
G1 X90.0 Y50.0
G1 X91.0 Y50.0 E59.36819
G1 X92.0 Y51.0 E59.509613
G1 X90.0 Y55.0 E59.95861
G1 X91.0 Y56.0 E60.10558
G1 X93.0 Y56.0 E60.30558
G1 X94.0 Y55.0 E60.447002
G1 X92.0 Y51.0 E60.896
G1 X93.0 Y50.0 E61.04297
G1 X94.0 Y50.0 E61.142967
G1 X94.0 Y53.0 E61.443634
G1 X94.0 Y53.0
G1 X93.0 Y53.0 E61.560253
G1 X92.0 Y54.0 E61.701675
G1 X94.0 Y58.0 E62.150673
G1 X93.0 Y59.0 E62.29764
G1 X91.0 Y59.0 E62.497643
G1 X90.0 Y58.0 E62.639065
G1 X92.0 Y54.0 E63.088062
G1 X91.0 Y53.0 E63.23503
G1 X90.0 Y53.0 E63.33503
G1 X90.0 Y53.0
G1 X89.0 Y53.0 E63.45165
G1 X88.0 Y54.0 E63.59307
G1 X90.0 Y58.0 E64.04207
G1 X89.0 Y59.0 E64.18904
G1 X87.0 Y59.0 E64.38904
G1 X86.0 Y58.0 E64.53046
G1 X88.0 Y54.0 E64.979454
G1 X87.0 Y53.0 E65.12643
G1 X86.0 Y53.0 E65.226425
G1 X86.0 Y53.0
G1 X85.0 Y53.0 E65.34304
G1 X84.0 Y54.0 E65.48446
G1 X86.0 Y58.0 E65.93346
G1 X85.0 Y59.0 E66.08043
G1 X83.0 Y59.0 E66.280426
G1 X82.0 Y58.0 E66.421844
G1 X84.0 Y54.0 E66.87084
G1 X83.0 Y53.0 E67.017815
G1 X82.0 Y53.0 E67.11781
G1 X82.0 Y53.0
G1 X81.0 Y53.0 E67.23443
G1 X80.0 Y54.0 E67.37585
G1 X82.0 Y58.0 E67.824844
G1 X81.0 Y59.0 E67.97182
G1 X79.0 Y59.0 E68.171814
G1 X78.0 Y58.0 E68.31323
G1 X80.0 Y54.0 E68.76223
G1 X79.0 Y53.0 E68.9092
G1 X78.0 Y53.0 E69.0092
G1 X78.0 Y53.0
G1 X77.0 Y53.0 E69.12582
G1 X76.0 Y54.0 E69.267235
G1 X78.0 Y58.0 E69.71623
G1 X77.0 Y59.0 E69.863205
G1 X75.0 Y59.0 E70.0632
G1 X74.0 Y58.0 E70.20462
G1 X76.0 Y54.0 E70.65362
G1 X75.0 Y53.0 E70.80059
G1 X74.0 Y53.0 E70.90059
G1 X74.0 Y53.0
G1 X73.0 Y53.0 E71.017204
G1 X72.0 Y54.0 E71.15862
G1 X74.0 Y58.0 E71.60762
G1 X73.0 Y59.0 E71.75459
G1 X71.0 Y59.0 E71.95459
G1 X70.0 Y58.0 E72.09601
G1 X72.0 Y54.0 E72.545006
G1 X71.0 Y53.0 E72.69198
G1 X70.0 Y53.0 E72.79198
G1 X70.0 Y53.0
G1 X69.0 Y53.0 E72.90859
G1 X68.0 Y54.0 E73.05001
G1 X70.0 Y58.0 E73.49901
G1 X69.0 Y59.0 E73.64598
G1 X67.0 Y59.0 E73.84598
G1 X66.0 Y58.0 E73.9874
G1 X68.0 Y54.0 E74.43639
G1 X67.0 Y53.0 E74.58337
G1 X66.0 Y53.0 E74.683365
G1 X66.0 Y53.0
G1 X65.0 Y53.0 E74.79998
G1 X64.0 Y54.0 E74.9414
G1 X66.0 Y58.0 E75.390396
G1 X65.0 Y59.0 E75.53737
G1 X63.0 Y59.0 E75.737366
G1 X62.0 Y58.0 E75.878784
G1 X64.0 Y54.0 E76.32778
G1 X63.0 Y53.0 E76.474754
G1 X62.0 Y53.0 E76.57475
G1 X62.0 Y53.0
G1 X61.0 Y53.0 E76.69137
G1 X60.0 Y54.0 E76.83279
G1 X62.0 Y58.0 E77.281784
G1 X61.0 Y59.0 E77.42876
G1 X59.0 Y59.0 E77.62875
G1 X58.0 Y58.0 E77.77017
G1 X60.0 Y54.0 E78.21917
G1 X59.0 Y53.0 E78.36614
G1 X58.0 Y53.0 E78.46614
G1 X58.0 Y53.0
G1 X57.0 Y53.0 E78.582756
G1 X56.0 Y54.0 E78.724174
G1 X58.0 Y58.0 E79.17317
G1 X57.0 Y59.0 E79.320145
G1 X55.0 Y59.0 E79.52014
G1 X54.0 Y58.0 E79.66156
G1 X56.0 Y54.0 E80.11056
G1 X55.0 Y53.0 E80.25753
G1 X54.0 Y53.0 E80.35753
G1 X54.0 Y53.0
G1 X53.0 Y53.0 E80.474144
G1 X52.0 Y54.0 E80.61556
G1 X54.0 Y58.0 E81.06456
G1 X53.0 Y59.0 E81.21153
G1 X51.0 Y59.0 E81.41153
G1 X50.0 Y58.0 E81.55295
G1 X52.0 Y54.0 E82.001945
G1 X51.0 Y53.0 E82.14892
G1 X50.0 Y53.0 E82.24892
G1 X50.0 Y56.0 E82.54958
G1 X50.0 Y56.0
G1 X51.0 Y56.0 E82.651566
G1 X52.0 Y57.0 E82.792984
G1 X50.0 Y61.0 E83.24198
G1 X51.0 Y62.0 E83.388954
G1 X53.0 Y62.0 E83.58895
G1 X54.0 Y61.0 E83.73037
G1 X52.0 Y57.0 E84.17937
G1 X53.0 Y56.0 E84.32634
G1 X54.0 Y56.0 E84.42634
G1 X54.0 Y56.0
G1 X55.0 Y56.0 E84.52832
G1 X56.0 Y57.0 E84.66974
G1 X54.0 Y61.0 E85.11874
G1 X55.0 Y62.0 E85.26571
G1 X57.0 Y62.0 E85.465706
G1 X58.0 Y61.0 E85.607124
G1 X56.0 Y57.0 E86.05612
G1 X57.0 Y56.0 E86.203094
G1 X58.0 Y56.0 E86.30309
G1 X58.0 Y56.0
G1 X59.0 Y56.0 E86.41971
G1 X60.0 Y57.0 E86.56113
G1 X58.0 Y61.0 E87.010124
G1 X59.0 Y62.0 E87.1571
G1 X61.0 Y62.0 E87.35709
G1 X62.0 Y61.0 E87.49851
G1 X60.0 Y57.0 E87.94751
G1 X61.0 Y56.0 E88.09448
G1 X62.0 Y56.0 E88.19448
G1 X62.0 Y56.0
G1 X63.0 Y56.0 E88.3111
G1 X64.0 Y57.0 E88.452515
G1 X62.0 Y61.0 E88.90151
G1 X63.0 Y62.0 E89.048485
G1 X65.0 Y62.0 E89.24848
G1 X66.0 Y61.0 E89.3899
G1 X64.0 Y57.0 E89.8389
G1 X65.0 Y56.0 E89.98587
G1 X66.0 Y56.0 E90.08587
G1 X66.0 Y56.0
G1 X67.0 Y56.0 E90.18785
G1 X68.0 Y57.0 E90.32927
G1 X66.0 Y61.0 E90.77827
G1 X67.0 Y62.0 E90.92524
G1 X69.0 Y62.0 E91.12524
G1 X70.0 Y61.0 E91.266655
G1 X68.0 Y57.0 E91.71565
G1 X69.0 Y56.0 E91.862625
G1 X70.0 Y56.0 E91.96262
G1 X70.0 Y56.0
G1 X71.0 Y56.0 E92.064606
G1 X72.0 Y57.0 E92.206024
G1 X70.0 Y61.0 E92.65502
G1 X71.0 Y62.0 E92.801994
G1 X73.0 Y62.0 E93.00199
G1 X74.0 Y61.0 E93.14341
G1 X72.0 Y57.0 E93.59241
G1 X73.0 Y56.0 E93.73938
G1 X74.0 Y56.0 E93.83938
G1 X74.0 Y56.0
G1 X75.0 Y56.0 E93.95599
G1 X76.0 Y57.0 E94.09741
G1 X74.0 Y61.0 E94.54641
G1 X75.0 Y62.0 E94.69338
G1 X77.0 Y62.0 E94.89338
G1 X78.0 Y61.0 E95.0348
G1 X76.0 Y57.0 E95.483795
G1 X77.0 Y56.0 E95.63077
G1 X78.0 Y56.0 E95.73077
G1 X78.0 Y56.0
G1 X79.0 Y56.0 E95.84738
G1 X80.0 Y57.0 E95.9888
G1 X78.0 Y61.0 E96.4378
G1 X79.0 Y62.0 E96.58477
G1 X81.0 Y62.0 E96.78477
G1 X82.0 Y61.0 E96.926186
G1 X80.0 Y57.0 E97.37518
G1 X81.0 Y56.0 E97.522156
G1 X82.0 Y56.0 E97.622154
G1 X82.0 Y56.0
G1 X83.0 Y56.0 E97.72414
G1 X84.0 Y57.0 E97.865555
G1 X82.0 Y61.0 E98.31455
G1 X83.0 Y62.0 E98.461525
G1 X85.0 Y62.0 E98.66152
G1 X86.0 Y61.0 E98.80294
G1 X84.0 Y57.0 E99.25194
G1 X85.0 Y56.0 E99.39891
G1 X86.0 Y56.0 E99.49891
G1 X86.0 Y56.0
G1 X87.0 Y56.0 E99.60089
G1 X88.0 Y57.0 E99.74231
G1 X86.0 Y61.0 E100.19131
G1 X87.0 Y62.0 E100.33828
G1 X89.0 Y62.0 E100.53828
G1 X90.0 Y61.0 E100.679695
G1 X88.0 Y57.0 E101.12869
G1 X89.0 Y56.0 E101.275665
G1 X90.0 Y56.0 E101.37566
G1 X90.0 Y56.0
G1 X91.0 Y56.0 E101.49228
G1 X92.0 Y57.0 E101.6337
G1 X90.0 Y61.0 E102.082695
G1 X91.0 Y62.0 E102.22967
G1 X93.0 Y62.0 E102.429665
G1 X94.0 Y61.0 E102.57108
G1 X92.0 Y57.0 E103.02008
G1 X93.0 Y56.0 E103.16705
G1 X94.0 Y56.0 E103.26705
G1 X94.0 Y59.0 E103.56772
G1 X94.0 Y59.0
G1 X93.0 Y59.0 E103.68433
G1 X92.0 Y60.0 E103.82575
G1 X94.0 Y64.0 E104.27475
G1 X93.0 Y65.0 E104.42172
G1 X91.0 Y65.0 E104.62172
G1 X90.0 Y64.0 E104.76314
G1 X92.0 Y60.0 E105.212135
G1 X91.0 Y59.0 E105.35911
G1 X90.0 Y59.0 E105.45911
G1 X90.0 Y59.0
G1 X89.0 Y59.0 E105.57572
G1 X88.0 Y60.0 E105.71714
G1 X90.0 Y64.0 E106.16614
G1 X89.0 Y65.0 E106.31311
G1 X87.0 Y65.0 E106.51311
G1 X86.0 Y64.0 E106.654526
G1 X88.0 Y60.0 E107.10352
G1 X87.0 Y59.0 E107.250496
G1 X86.0 Y59.0 E107.350494
G1 X86.0 Y59.0
G1 X85.0 Y59.0 E107.46711
G1 X84.0 Y60.0 E107.60853
G1 X86.0 Y64.0 E108.057526
G1 X85.0 Y65.0 E108.2045
G1 X83.0 Y65.0 E108.404495
G1 X82.0 Y64.0 E108.54591
G1 X84.0 Y60.0 E108.99491
G1 X83.0 Y59.0 E109.141884
G1 X82.0 Y59.0 E109.24188
G1 X82.0 Y59.0
G1 X81.0 Y59.0 E109.3585
G1 X80.0 Y60.0 E109.499916
G1 X82.0 Y64.0 E109.94891
G1 X81.0 Y65.0 E110.09589
G1 X79.0 Y65.0 E110.29588
G1 X78.0 Y64.0 E110.4373
G1 X80.0 Y60.0 E110.8863
G1 X79.0 Y59.0 E111.03327
G1 X78.0 Y59.0 E111.13327
G1 X78.0 Y59.0
G1 X77.0 Y59.0 E111.249886
G1 X76.0 Y60.0 E111.391304
G1 X78.0 Y64.0 E111.8403
G1 X77.0 Y65.0 E111.987274
G1 X75.0 Y65.0 E112.18727
G1 X74.0 Y64.0 E112.32869
G1 X76.0 Y60.0 E112.77769
G1 X75.0 Y59.0 E112.92466
G1 X74.0 Y59.0 E113.02466
G1 X74.0 Y59.0
G1 X73.0 Y59.0 E113.14127
G1 X72.0 Y60.0 E113.28269
G1 X74.0 Y64.0 E113.73169
G1 X73.0 Y65.0 E113.87866
G1 X71.0 Y65.0 E114.07866
G1 X70.0 Y64.0 E114.22008
G1 X72.0 Y60.0 E114.669075
G1 X71.0 Y59.0 E114.81605
G1 X70.0 Y59.0 E114.916046
G1 X70.0 Y59.0
G1 X69.0 Y59.0 E115.03266
G1 X68.0 Y60.0 E115.17408
G1 X70.0 Y64.0 E115.62308
G1 X69.0 Y65.0 E115.77005
G1 X67.0 Y65.0 E115.97005
G1 X66.0 Y64.0 E116.111465
G1 X68.0 Y60.0 E116.56046
G1 X67.0 Y59.0 E116.707436
G1 X66.0 Y59.0 E116.807434
G1 X66.0 Y59.0
G1 X65.0 Y59.0 E116.92405
G1 X64.0 Y60.0 E117.06547
G1 X66.0 Y64.0 E117.514465
G1 X65.0 Y65.0 E117.66144
G1 X63.0 Y65.0 E117.861435
G1 X62.0 Y64.0 E118.00285
G1 X64.0 Y60.0 E118.45185
G1 X63.0 Y59.0 E118.59882
G1 X62.0 Y59.0 E118.69882
G1 X62.0 Y59.0
G1 X61.0 Y59.0 E118.81544
G1 X60.0 Y60.0 E118.956856
G1 X62.0 Y64.0 E119.40585
G1 X61.0 Y65.0 E119.552826
G1 X59.0 Y65.0 E119.75282
G1 X58.0 Y64.0 E119.89424
G1 X60.0 Y60.0 E120.34324
G1 X59.0 Y59.0 E120.49021
G1 X58.0 Y59.0 E120.59021
G1 X58.0 Y59.0
G1 X57.0 Y59.0 E120.706825
G1 X56.0 Y60.0 E120.84824
G1 X58.0 Y64.0 E121.29724
G1 X57.0 Y65.0 E121.444214
G1 X55.0 Y65.0 E121.64421
G1 X54.0 Y64.0 E121.78563
G1 X56.0 Y60.0 E122.23463
G1 X55.0 Y59.0 E122.3816
G1 X54.0 Y59.0 E122.4816
G1 X54.0 Y59.0
G1 X53.0 Y59.0 E122.59821
G1 X52.0 Y60.0 E122.73963
G1 X54.0 Y64.0 E123.18863
G1 X53.0 Y65.0 E123.3356
G1 X51.0 Y65.0 E123.5356
G1 X50.0 Y64.0 E123.67702
G1 X52.0 Y60.0 E124.126015
G1 X51.0 Y59.0 E124.27299
G1 X50.0 Y59.0 E124.372986
G1 X50.0 Y62.0 E124.67365
G1 X50.0 Y62.0
G1 X51.0 Y62.0 E124.775635
G1 X52.0 Y63.0 E124.91705
G1 X50.0 Y67.0 E125.36605
G1 X51.0 Y68.0 E125.51302
G1 X53.0 Y68.0 E125.71302
G1 X54.0 Y67.0 E125.85444
G1 X52.0 Y63.0 E126.30344
G1 X53.0 Y62.0 E126.45041
G1 X54.0 Y62.0 E126.55041
G1 X54.0 Y62.0
G1 X55.0 Y62.0 E126.65239
G1 X56.0 Y63.0 E126.79381
G1 X54.0 Y67.0 E127.242805
G1 X55.0 Y68.0 E127.38978
G1 X57.0 Y68.0 E127.589775
G1 X58.0 Y67.0 E127.73119
G1 X56.0 Y63.0 E128.18019
G1 X57.0 Y62.0 E128.32716
G1 X58.0 Y62.0 E128.42717
G1 X58.0 Y62.0
G1 X59.0 Y62.0 E128.5438
G1 X60.0 Y63.0 E128.68521
G1 X58.0 Y67.0 E129.13422
G1 X59.0 Y68.0 E129.28119
G1 X61.0 Y68.0 E129.48119
G1 X62.0 Y67.0 E129.6226
G1 X60.0 Y63.0 E130.07161
G1 X61.0 Y62.0 E130.21858
G1 X62.0 Y62.0 E130.31859
G1 X62.0 Y62.0
G1 X63.0 Y62.0 E130.43521
G1 X64.0 Y63.0 E130.57663
G1 X62.0 Y67.0 E131.02563
G1 X63.0 Y68.0 E131.1726
G1 X65.0 Y68.0 E131.3726
G1 X66.0 Y67.0 E131.51402
G1 X64.0 Y63.0 E131.96303
G1 X65.0 Y62.0 E132.11
G1 X66.0 Y62.0 E132.21
G1 X66.0 Y62.0
G1 X67.0 Y62.0 E132.31198
G1 X68.0 Y63.0 E132.4534
G1 X66.0 Y67.0 E132.9024
G1 X67.0 Y68.0 E133.04938
G1 X69.0 Y68.0 E133.24937
G1 X70.0 Y67.0 E133.3908
G1 X68.0 Y63.0 E133.8398
G1 X69.0 Y62.0 E133.98677
G1 X70.0 Y62.0 E134.08678
G1 X70.0 Y62.0
G1 X71.0 Y62.0 E134.18875
G1 X72.0 Y63.0 E134.33017
G1 X70.0 Y67.0 E134.77917
G1 X71.0 Y68.0 E134.92615
G1 X73.0 Y68.0 E135.12614
G1 X74.0 Y67.0 E135.26756
G1 X72.0 Y63.0 E135.71657
G1 X73.0 Y62.0 E135.86354
G1 X74.0 Y62.0 E135.96355
G1 X74.0 Y62.0
G1 X75.0 Y62.0 E136.08017
G1 X76.0 Y63.0 E136.22159
G1 X74.0 Y67.0 E136.6706
G1 X75.0 Y68.0 E136.81757
G1 X77.0 Y68.0 E137.01756
G1 X78.0 Y67.0 E137.15898
G1 X76.0 Y63.0 E137.60799
G1 X77.0 Y62.0 E137.75496
G1 X78.0 Y62.0 E137.85497
G1 X78.0 Y62.0
G1 X79.0 Y62.0 E137.97159
G1 X80.0 Y63.0 E138.113
G1 X78.0 Y67.0 E138.56201
G1 X79.0 Y68.0 E138.70898
G1 X81.0 Y68.0 E138.90898
G1 X82.0 Y67.0 E139.0504
G1 X80.0 Y63.0 E139.4994
G1 X81.0 Y62.0 E139.64638
G1 X82.0 Y62.0 E139.74638
G1 X82.0 Y62.0
G1 X83.0 Y62.0 E139.84836
G1 X84.0 Y63.0 E139.98978
G1 X82.0 Y67.0 E140.43878
G1 X83.0 Y68.0 E140.58575
G1 X85.0 Y68.0 E140.78575
G1 X86.0 Y67.0 E140.92717
G1 X84.0 Y63.0 E141.37617
G1 X85.0 Y62.0 E141.52315
G1 X86.0 Y62.0 E141.62315
G1 X86.0 Y62.0
G1 X87.0 Y62.0 E141.72513
G1 X88.0 Y63.0 E141.86655
G1 X86.0 Y67.0 E142.31555
G1 X87.0 Y68.0 E142.46252
G1 X89.0 Y68.0 E142.66252
G1 X90.0 Y67.0 E142.80394
G1 X88.0 Y63.0 E143.25294
G1 X89.0 Y62.0 E143.39992
G1 X90.0 Y62.0 E143.49992
G1 X90.0 Y62.0
G1 X91.0 Y62.0 E143.6019
G1 X92.0 Y63.0 E143.74332
G1 X90.0 Y67.0 E144.19232
G1 X91.0 Y68.0 E144.3393
G1 X93.0 Y68.0 E144.53929
G1 X94.0 Y67.0 E144.68071
G1 X92.0 Y63.0 E145.12971
G1 X93.0 Y62.0 E145.27669
G1 X94.0 Y62.0 E145.3767
G1 X94.0 Y65.0 E145.67735
G1 X94.0 Y65.0
G1 X93.0 Y65.0 E145.79398
G1 X92.0 Y66.0 E145.9354
G1 X94.0 Y70.0 E146.3844
G1 X93.0 Y71.0 E146.53137
G1 X91.0 Y71.0 E146.73137
G1 X90.0 Y70.0 E146.87279
G1 X92.0 Y66.0 E147.3218
G1 X91.0 Y65.0 E147.46877
G1 X90.0 Y65.0 E147.56877
G1 X90.0 Y65.0
G1 X89.0 Y65.0 E147.6854
G1 X88.0 Y66.0 E147.82681
G1 X90.0 Y70.0 E148.27582
G1 X89.0 Y71.0 E148.42279
G1 X87.0 Y71.0 E148.62279
G1 X86.0 Y70.0 E148.7642
G1 X88.0 Y66.0 E149.21321
G1 X87.0 Y65.0 E149.36018
G1 X86.0 Y65.0 E149.46019
G1 X86.0 Y65.0
G1 X85.0 Y65.0 E149.57681
G1 X84.0 Y66.0 E149.71823
G1 X86.0 Y70.0 E150.16724
G1 X85.0 Y71.0 E150.31421
G1 X83.0 Y71.0 E150.5142
G1 X82.0 Y70.0 E150.65562
G1 X84.0 Y66.0 E151.10463
G1 X83.0 Y65.0 E151.2516
G1 X82.0 Y65.0 E151.35161
G1 X82.0 Y65.0
G1 X81.0 Y65.0 E151.46823
G1 X80.0 Y66.0 E151.60965
G1 X82.0 Y70.0 E152.05865
G1 X81.0 Y71.0 E152.20563
G1 X79.0 Y71.0 E152.40562
G1 X78.0 Y70.0 E152.54704
G1 X80.0 Y66.0 E152.99605
G1 X79.0 Y65.0 E153.14302
G1 X78.0 Y65.0 E153.24303
G1 X78.0 Y65.0
G1 X77.0 Y65.0 E153.35965
G1 X76.0 Y66.0 E153.50107
G1 X78.0 Y70.0 E153.95007
G1 X77.0 Y71.0 E154.09705
G1 X75.0 Y71.0 E154.29704
G1 X74.0 Y70.0 E154.43846
G1 X76.0 Y66.0 E154.88747
G1 X75.0 Y65.0 E155.03444
G1 X74.0 Y65.0 E155.13445
G1 X74.0 Y65.0
G1 X73.0 Y65.0 E155.25107
G1 X72.0 Y66.0 E155.39249
G1 X74.0 Y70.0 E155.84149
G1 X73.0 Y71.0 E155.98846
G1 X71.0 Y71.0 E156.18846
G1 X70.0 Y70.0 E156.32988
G1 X72.0 Y66.0 E156.77888
G1 X71.0 Y65.0 E156.92586
G1 X70.0 Y65.0 E157.02586
G1 X70.0 Y65.0
G1 X69.0 Y65.0 E157.14249
G1 X68.0 Y66.0 E157.2839
G1 X70.0 Y70.0 E157.73291
G1 X69.0 Y71.0 E157.87988
G1 X67.0 Y71.0 E158.07988
G1 X66.0 Y70.0 E158.2213
G1 X68.0 Y66.0 E158.6703
G1 X67.0 Y65.0 E158.81728
G1 X66.0 Y65.0 E158.91728
G1 X66.0 Y65.0
G1 X65.0 Y65.0 E159.0339
G1 X64.0 Y66.0 E159.17532
G1 X66.0 Y70.0 E159.62433
G1 X65.0 Y71.0 E159.7713
G1 X63.0 Y71.0 E159.9713
G1 X62.0 Y70.0 E160.11272
G1 X64.0 Y66.0 E160.56172
G1 X63.0 Y65.0 E160.7087
G1 X62.0 Y65.0 E160.8087
G1 X62.0 Y65.0
G1 X61.0 Y65.0 E160.92532
G1 X60.0 Y66.0 E161.06674
G1 X62.0 Y70.0 E161.51575
G1 X61.0 Y71.0 E161.66272
G1 X59.0 Y71.0 E161.86272
G1 X58.0 Y70.0 E162.00414
G1 X60.0 Y66.0 E162.45314
G1 X59.0 Y65.0 E162.60011
G1 X58.0 Y65.0 E162.70012
G1 X58.0 Y65.0
G1 X57.0 Y65.0 E162.81674
G1 X56.0 Y66.0 E162.95816
G1 X58.0 Y70.0 E163.40717
G1 X57.0 Y71.0 E163.55414
G1 X55.0 Y71.0 E163.75414
G1 X54.0 Y70.0 E163.89555
G1 X56.0 Y66.0 E164.34456
G1 X55.0 Y65.0 E164.49153
G1 X54.0 Y65.0 E164.59154
G1 X54.0 Y65.0
G1 X53.0 Y65.0 E164.70816
G1 X52.0 Y66.0 E164.84958
G1 X54.0 Y70.0 E165.29858
G1 X53.0 Y71.0 E165.44556
G1 X51.0 Y71.0 E165.64555
G1 X50.0 Y70.0 E165.78697
G1 X52.0 Y66.0 E166.23598
G1 X51.0 Y65.0 E166.38295
G1 X50.0 Y65.0 E166.48296
G1 X50.0 Y68.0 E166.78362
G1 X50.0 Y68.0
G1 X51.0 Y68.0 E166.88559
G1 X52.0 Y69.0 E167.02701
G1 X50.0 Y73.0 E167.47601
G1 X51.0 Y74.0 E167.62299
G1 X53.0 Y74.0 E167.82298
G1 X54.0 Y73.0 E167.9644
G1 X52.0 Y69.0 E168.4134
G1 X53.0 Y68.0 E168.56038
G1 X54.0 Y68.0 E168.66039
G1 X54.0 Y68.0
G1 X55.0 Y68.0 E168.76236
G1 X56.0 Y69.0 E168.90378
G1 X54.0 Y73.0 E169.35278
G1 X55.0 Y74.0 E169.49976
G1 X57.0 Y74.0 E169.69975
G1 X58.0 Y73.0 E169.84117
G1 X56.0 Y69.0 E170.29018
G1 X57.0 Y68.0 E170.43715
G1 X58.0 Y68.0 E170.53716
G1 X58.0 Y68.0
G1 X59.0 Y68.0 E170.65378
G1 X60.0 Y69.0 E170.7952
G1 X58.0 Y73.0 E171.2442
G1 X59.0 Y74.0 E171.39117
G1 X61.0 Y74.0 E171.59117
G1 X62.0 Y73.0 E171.73259
G1 X60.0 Y69.0 E172.1816
G1 X61.0 Y68.0 E172.32857
G1 X62.0 Y68.0 E172.42857
G1 X62.0 Y68.0
G1 X63.0 Y68.0 E172.5452
G1 X64.0 Y69.0 E172.68661
G1 X62.0 Y73.0 E173.13562
G1 X63.0 Y74.0 E173.2826
G1 X65.0 Y74.0 E173.48259
G1 X66.0 Y73.0 E173.62401
G1 X64.0 Y69.0 E174.07301
G1 X65.0 Y68.0 E174.21999
G1 X66.0 Y68.0 E174.31999
G1 X66.0 Y68.0
G1 X67.0 Y68.0 E174.42197
G1 X68.0 Y69.0 E174.56339
G1 X66.0 Y73.0 E175.01239
G1 X67.0 Y74.0 E175.15936
G1 X69.0 Y74.0 E175.35936
G1 X70.0 Y73.0 E175.50078
G1 X68.0 Y69.0 E175.94978
G1 X69.0 Y68.0 E176.09676
G1 X70.0 Y68.0 E176.19676
G1 X70.0 Y68.0
G1 X71.0 Y68.0 E176.29874
G1 X72.0 Y69.0 E176.44016
G1 X70.0 Y73.0 E176.88916
G1 X71.0 Y74.0 E177.03613
G1 X73.0 Y74.0 E177.23613
G1 X74.0 Y73.0 E177.37755
G1 X72.0 Y69.0 E177.82655
G1 X73.0 Y68.0 E177.97353
G1 X74.0 Y68.0 E178.07353
G1 X74.0 Y68.0
G1 X75.0 Y68.0 E178.19016
G1 X76.0 Y69.0 E178.33157
G1 X74.0 Y73.0 E178.78058
G1 X75.0 Y74.0 E178.92755
G1 X77.0 Y74.0 E179.12755
G1 X78.0 Y73.0 E179.26897
G1 X76.0 Y69.0 E179.71797
G1 X77.0 Y68.0 E179.86494
G1 X78.0 Y68.0 E179.96495
G1 X78.0 Y68.0
G1 X79.0 Y68.0 E180.08157
G1 X80.0 Y69.0 E180.22299
G1 X78.0 Y73.0 E180.672
G1 X79.0 Y74.0 E180.81897
G1 X81.0 Y74.0 E181.01897
G1 X82.0 Y73.0 E181.16039
G1 X80.0 Y69.0 E181.60939
G1 X81.0 Y68.0 E181.75636
G1 X82.0 Y68.0 E181.85637
G1 X82.0 Y68.0
G1 X83.0 Y68.0 E181.95834
G1 X84.0 Y69.0 E182.09976
G1 X82.0 Y73.0 E182.54877
G1 X83.0 Y74.0 E182.69574
G1 X85.0 Y74.0 E182.89574
G1 X86.0 Y73.0 E183.03716
G1 X84.0 Y69.0 E183.48616
G1 X85.0 Y68.0 E183.63313
G1 X86.0 Y68.0 E183.73314
G1 X86.0 Y68.0
G1 X87.0 Y68.0 E183.83511
G1 X88.0 Y69.0 E183.97653
G1 X86.0 Y73.0 E184.42554
G1 X87.0 Y74.0 E184.57251
G1 X89.0 Y74.0 E184.7725
G1 X90.0 Y73.0 E184.91393
G1 X88.0 Y69.0 E185.36293
G1 X89.0 Y68.0 E185.5099
G1 X90.0 Y68.0 E185.60991
G1 X90.0 Y68.0
G1 X91.0 Y68.0 E185.72653
G1 X92.0 Y69.0 E185.86795
G1 X90.0 Y73.0 E186.31696
G1 X91.0 Y74.0 E186.46393
G1 X93.0 Y74.0 E186.66393
G1 X94.0 Y73.0 E186.80534
G1 X92.0 Y69.0 E187.25435
G1 X93.0 Y68.0 E187.40132
G1 X94.0 Y68.0 E187.50133
G1 X94.0 Y71.0 E187.80199
G1 X94.0 Y71.0
G1 X93.0 Y71.0 E187.91861
G1 X92.0 Y72.0 E188.06003
G1 X94.0 Y76.0 E188.50903
G1 X93.0 Y77.0 E188.656
G1 X91.0 Y77.0 E188.856
G1 X90.0 Y76.0 E188.99742
G1 X92.0 Y72.0 E189.44643
G1 X91.0 Y71.0 E189.5934
G1 X90.0 Y71.0 E189.6934
G1 X90.0 Y71.0
G1 X89.0 Y71.0 E189.81003
G1 X88.0 Y72.0 E189.95145
G1 X90.0 Y76.0 E190.40045
G1 X89.0 Y77.0 E190.54742
G1 X87.0 Y77.0 E190.74742
G1 X86.0 Y76.0 E190.88884
G1 X88.0 Y72.0 E191.33784
G1 X87.0 Y71.0 E191.48482
G1 X86.0 Y71.0 E191.58482
G1 X86.0 Y71.0
G1 X85.0 Y71.0 E191.70145
G1 X84.0 Y72.0 E191.84286
G1 X86.0 Y76.0 E192.29187
G1 X85.0 Y77.0 E192.43884
G1 X83.0 Y77.0 E192.63884
G1 X82.0 Y76.0 E192.78026
G1 X84.0 Y72.0 E193.22926
G1 X83.0 Y71.0 E193.37624
G1 X82.0 Y71.0 E193.47624
G1 X82.0 Y71.0
G1 X81.0 Y71.0 E193.59286
G1 X80.0 Y72.0 E193.73428
G1 X82.0 Y76.0 E194.18329
G1 X81.0 Y77.0 E194.33026
G1 X79.0 Y77.0 E194.53026
G1 X78.0 Y76.0 E194.67168
G1 X80.0 Y72.0 E195.12068
G1 X79.0 Y71.0 E195.26765
G1 X78.0 Y71.0 E195.36766
G1 X78.0 Y71.0
G1 X77.0 Y71.0 E195.48428
G1 X76.0 Y72.0 E195.6257
G1 X78.0 Y76.0 E196.0747
G1 X77.0 Y77.0 E196.22168
G1 X75.0 Y77.0 E196.42168
G1 X74.0 Y76.0 E196.5631
G1 X76.0 Y72.0 E197.0121
G1 X75.0 Y71.0 E197.15907
G1 X74.0 Y71.0 E197.25908
G1 X74.0 Y71.0
G1 X73.0 Y71.0 E197.3757
G1 X72.0 Y72.0 E197.51712
G1 X74.0 Y76.0 E197.96613
G1 X73.0 Y77.0 E198.1131
G1 X71.0 Y77.0 E198.3131
G1 X70.0 Y76.0 E198.45451
G1 X72.0 Y72.0 E198.90352
G1 X71.0 Y71.0 E199.05049
G1 X70.0 Y71.0 E199.1505
G1 X70.0 Y71.0
G1 X69.0 Y71.0 E199.26712
G1 X68.0 Y72.0 E199.40854
G1 X70.0 Y76.0 E199.85754
G1 X69.0 Y77.0 E200.00452
G1 X67.0 Y77.0 E200.20451
G1 X66.0 Y76.0 E200.34593
G1 X68.0 Y72.0 E200.79494
G1 X67.0 Y71.0 E200.94191
G1 X66.0 Y71.0 E201.04192
G1 X66.0 Y71.0
G1 X65.0 Y71.0 E201.15854
G1 X64.0 Y72.0 E201.29996
G1 X66.0 Y76.0 E201.74896
G1 X65.0 Y77.0 E201.89594
G1 X63.0 Y77.0 E202.09593
G1 X62.0 Y76.0 E202.23735
G1 X64.0 Y72.0 E202.68636
G1 X63.0 Y71.0 E202.83333
G1 X62.0 Y71.0 E202.93333
G1 X62.0 Y71.0
G1 X61.0 Y71.0 E203.04996
G1 X60.0 Y72.0 E203.19138
G1 X62.0 Y76.0 E203.64038
G1 X61.0 Y77.0 E203.78735
G1 X59.0 Y77.0 E203.98735
G1 X58.0 Y76.0 E204.12877
G1 X60.0 Y72.0 E204.57777
G1 X59.0 Y71.0 E204.72475
G1 X58.0 Y71.0 E204.82475
G1 X58.0 Y71.0
G1 X57.0 Y71.0 E204.94138
G1 X56.0 Y72.0 E205.0828
G1 X58.0 Y76.0 E205.5318
G1 X57.0 Y77.0 E205.67877
G1 X55.0 Y77.0 E205.87877
G1 X54.0 Y76.0 E206.02019
G1 X56.0 Y72.0 E206.4692
G1 X55.0 Y71.0 E206.61617
G1 X54.0 Y71.0 E206.71617
G1 X54.0 Y71.0
G1 X53.0 Y71.0 E206.8328
G1 X52.0 Y72.0 E206.97421
G1 X54.0 Y76.0 E207.42322
G1 X53.0 Y77.0 E207.57019
G1 X51.0 Y77.0 E207.77019
G1 X50.0 Y76.0 E207.9116
G1 X52.0 Y72.0 E208.36061
G1 X51.0 Y71.0 E208.50758
G1 X50.0 Y71.0 E208.60759
G1 X50.0 Y74.0 E208.90825
G1 X50.0 Y74.0
G1 X51.0 Y74.0 E209.01022
G1 X52.0 Y75.0 E209.15164
G1 X50.0 Y79.0 E209.60065
G1 X51.0 Y80.0 E209.74762
G1 X53.0 Y80.0 E209.94762
G1 X54.0 Y79.0 E210.08904
G1 X52.0 Y75.0 E210.53804
G1 X53.0 Y74.0 E210.68501
G1 X54.0 Y74.0 E210.78502
G1 X54.0 Y74.0
G1 X55.0 Y74.0 E210.887
G1 X56.0 Y75.0 E211.02841
G1 X54.0 Y79.0 E211.47742
G1 X55.0 Y80.0 E211.62439
G1 X57.0 Y80.0 E211.82439
G1 X58.0 Y79.0 E211.9658
G1 X56.0 Y75.0 E212.41481
G1 X57.0 Y74.0 E212.56178
G1 X58.0 Y74.0 E212.66179
G1 X58.0 Y74.0
G1 X59.0 Y74.0 E212.77841
G1 X60.0 Y75.0 E212.91983
G1 X58.0 Y79.0 E213.36884
G1 X59.0 Y80.0 E213.51581
G1 X61.0 Y80.0 E213.7158
G1 X62.0 Y79.0 E213.85722
G1 X60.0 Y75.0 E214.30623
G1 X61.0 Y74.0 E214.4532
G1 X62.0 Y74.0 E214.5532
G1 X62.0 Y74.0
G1 X63.0 Y74.0 E214.66983
G1 X64.0 Y75.0 E214.81125
G1 X62.0 Y79.0 E215.26025
G1 X63.0 Y80.0 E215.40723
G1 X65.0 Y80.0 E215.60722
G1 X66.0 Y79.0 E215.74864
G1 X64.0 Y75.0 E216.19765
G1 X65.0 Y74.0 E216.34462
G1 X66.0 Y74.0 E216.44463
G1 X66.0 Y74.0
G1 X67.0 Y74.0 E216.5466
G1 X68.0 Y75.0 E216.68802
G1 X66.0 Y79.0 E217.13702
G1 X67.0 Y80.0 E217.284
G1 X69.0 Y80.0 E217.484
G1 X70.0 Y79.0 E217.62541
G1 X68.0 Y75.0 E218.07442
G1 X69.0 Y74.0 E218.22139
G1 X70.0 Y74.0 E218.3214
G1 X70.0 Y74.0
G1 X71.0 Y74.0 E218.42337
G1 X72.0 Y75.0 E218.56479
G1 X70.0 Y79.0 E219.0138
G1 X71.0 Y80.0 E219.16077
G1 X73.0 Y80.0 E219.36076
G1 X74.0 Y79.0 E219.50218
G1 X72.0 Y75.0 E219.95119
G1 X73.0 Y74.0 E220.09816
G1 X74.0 Y74.0 E220.19817
G1 X74.0 Y74.0
G1 X75.0 Y74.0 E220.31479
G1 X76.0 Y75.0 E220.4562
G1 X74.0 Y79.0 E220.90521
G1 X75.0 Y80.0 E221.05219
G1 X77.0 Y80.0 E221.25218
G1 X78.0 Y79.0 E221.3936
G1 X76.0 Y75.0 E221.8426
G1 X77.0 Y74.0 E221.98958
G1 X78.0 Y74.0 E222.08958
G1 X78.0 Y74.0
G1 X79.0 Y74.0 E222.2062
G1 X80.0 Y75.0 E222.34763
G1 X78.0 Y79.0 E222.79663
G1 X79.0 Y80.0 E222.9436
G1 X81.0 Y80.0 E223.1436
G1 X82.0 Y79.0 E223.28502
G1 X80.0 Y75.0 E223.73402
G1 X81.0 Y74.0 E223.881
G1 X82.0 Y74.0 E223.981
G1 X82.0 Y74.0
G1 X83.0 Y74.0 E224.08298
G1 X84.0 Y75.0 E224.2244
G1 X82.0 Y79.0 E224.6734
G1 X83.0 Y80.0 E224.82037
G1 X85.0 Y80.0 E225.02037
G1 X86.0 Y79.0 E225.16179
G1 X84.0 Y75.0 E225.6108
G1 X85.0 Y74.0 E225.75777
G1 X86.0 Y74.0 E225.85777
G1 X86.0 Y74.0
G1 X87.0 Y74.0 E225.95975
G1 X88.0 Y75.0 E226.10117
G1 X86.0 Y79.0 E226.55017
G1 X87.0 Y80.0 E226.69714
G1 X89.0 Y80.0 E226.89714
G1 X90.0 Y79.0 E227.03856
G1 X88.0 Y75.0 E227.48756
G1 X89.0 Y74.0 E227.63454
G1 X90.0 Y74.0 E227.73454
G1 X90.0 Y74.0
G1 X91.0 Y74.0 E227.83652
G1 X92.0 Y75.0 E227.97794
G1 X90.0 Y79.0 E228.42694
G1 X91.0 Y80.0 E228.57391
G1 X93.0 Y80.0 E228.77391
G1 X94.0 Y79.0 E228.91533
G1 X92.0 Y75.0 E229.36433
G1 X93.0 Y74.0 E229.5113
G1 X94.0 Y74.0 E229.61131
G1 X94.0 Y77.0 E229.91197
G1 X94.0 Y77.0
G1 X93.0 Y77.0 E230.0286
G1 X92.0 Y78.0 E230.17001
G1 X94.0 Y82.0 E230.61902
G1 X93.0 Y83.0 E230.76599
G1 X91.0 Y83.0 E230.96599
G1 X90.0 Y82.0 E231.1074
G1 X92.0 Y78.0 E231.55641
G1 X91.0 Y77.0 E231.70338
G1 X90.0 Y77.0 E231.80339
G1 X90.0 Y77.0
G1 X89.0 Y77.0 E231.92001
G1 X88.0 Y78.0 E232.06143
G1 X90.0 Y82.0 E232.51044
G1 X89.0 Y83.0 E232.65741
G1 X87.0 Y83.0 E232.8574
G1 X86.0 Y82.0 E232.99883
G1 X88.0 Y78.0 E233.44783
G1 X87.0 Y77.0 E233.5948
G1 X86.0 Y77.0 E233.69481
G1 X86.0 Y77.0
G1 X85.0 Y77.0 E233.81143
G1 X84.0 Y78.0 E233.95285
G1 X86.0 Y82.0 E234.40186
G1 X85.0 Y83.0 E234.54883
G1 X83.0 Y83.0 E234.74883
G1 X82.0 Y82.0 E234.89024
G1 X84.0 Y78.0 E235.33925
G1 X83.0 Y77.0 E235.48622
G1 X82.0 Y77.0 E235.58623
G1 X82.0 Y77.0
G1 X81.0 Y77.0 E235.70285
G1 X80.0 Y78.0 E235.84427
G1 X82.0 Y82.0 E236.29327
G1 X81.0 Y83.0 E236.44025
G1 X79.0 Y83.0 E236.64024
G1 X78.0 Y82.0 E236.78166
G1 X80.0 Y78.0 E237.23067
G1 X79.0 Y77.0 E237.37764
G1 X78.0 Y77.0 E237.47765
G1 X78.0 Y77.0
G1 X77.0 Y77.0 E237.59427
G1 X76.0 Y78.0 E237.73569
G1 X78.0 Y82.0 E238.1847
G1 X77.0 Y83.0 E238.33167
G1 X75.0 Y83.0 E238.53166
G1 X74.0 Y82.0 E238.67308
G1 X76.0 Y78.0 E239.12209
G1 X75.0 Y77.0 E239.26906
G1 X74.0 Y77.0 E239.36906
G1 X74.0 Y77.0
G1 X73.0 Y77.0 E239.48569
G1 X72.0 Y78.0 E239.6271
G1 X74.0 Y82.0 E240.07611
G1 X73.0 Y83.0 E240.22308
G1 X71.0 Y83.0 E240.42308
G1 X70.0 Y82.0 E240.5645
G1 X72.0 Y78.0 E241.0135
G1 X71.0 Y77.0 E241.16048
G1 X70.0 Y77.0 E241.26048
G1 X70.0 Y77.0
G1 X69.0 Y77.0 E241.3771
G1 X68.0 Y78.0 E241.51852
G1 X70.0 Y82.0 E241.96753
G1 X69.0 Y83.0 E242.1145
G1 X67.0 Y83.0 E242.3145
G1 X66.0 Y82.0 E242.45592
G1 X68.0 Y78.0 E242.90492
G1 X67.0 Y77.0 E243.0519
G1 X66.0 Y77.0 E243.1519
G1 X66.0 Y77.0
G1 X65.0 Y77.0 E243.26852
G1 X64.0 Y78.0 E243.40994
G1 X66.0 Y82.0 E243.85895
G1 X65.0 Y83.0 E244.00592
G1 X63.0 Y83.0 E244.20592
G1 X62.0 Y82.0 E244.34734
G1 X64.0 Y78.0 E244.79634
G1 X63.0 Y77.0 E244.94331
G1 X62.0 Y77.0 E245.04332
G1 X62.0 Y77.0
G1 X61.0 Y77.0 E245.15994
G1 X60.0 Y78.0 E245.30136
G1 X62.0 Y82.0 E245.75037
G1 X61.0 Y83.0 E245.89734
G1 X59.0 Y83.0 E246.09734
G1 X58.0 Y82.0 E246.23875
G1 X60.0 Y78.0 E246.68776
G1 X59.0 Y77.0 E246.83473
G1 X58.0 Y77.0 E246.93474
G1 X58.0 Y77.0
G1 X57.0 Y77.0 E247.05136
G1 X56.0 Y78.0 E247.19278
G1 X58.0 Y82.0 E247.64178
G1 X57.0 Y83.0 E247.78876
G1 X55.0 Y83.0 E247.98875
G1 X54.0 Y82.0 E248.13017
G1 X56.0 Y78.0 E248.57918
G1 X55.0 Y77.0 E248.72615
G1 X54.0 Y77.0 E248.82616
G1 X54.0 Y77.0
G1 X53.0 Y77.0 E248.94278
G1 X52.0 Y78.0 E249.0842
G1 X54.0 Y82.0 E249.5332
G1 X53.0 Y83.0 E249.68018
G1 X51.0 Y83.0 E249.88017
G1 X50.0 Y82.0 E250.02159
G1 X52.0 Y78.0 E250.4706
G1 X51.0 Y77.0 E250.61757
G1 X50.0 Y77.0 E250.71758
G1 X50.0 Y80.0 E251.01823
G1 X50.0 Y80.0
G1 X51.0 Y80.0 E251.12021
G1 X52.0 Y81.0 E251.26163
G1 X50.0 Y85.0 E251.71063
G1 X51.0 Y86.0 E251.8576
G1 X53.0 Y86.0 E252.0576
G1 X54.0 Y85.0 E252.19902
G1 X52.0 Y81.0 E252.64803
G1 X53.0 Y80.0 E252.795
G1 X54.0 Y80.0 E252.895
G1 X54.0 Y80.0
G1 X55.0 Y80.0 E252.99698
G1 X56.0 Y81.0 E253.1384
G1 X54.0 Y85.0 E253.5874
G1 X55.0 Y86.0 E253.73438
G1 X57.0 Y86.0 E253.93437
G1 X58.0 Y85.0 E254.07579
G1 X56.0 Y81.0 E254.5248
G1 X57.0 Y80.0 E254.67177
G1 X58.0 Y80.0 E254.77177
G1 X58.0 Y80.0
G1 X59.0 Y80.0 E254.8884
G1 X60.0 Y81.0 E255.02982
G1 X58.0 Y85.0 E255.47882
G1 X59.0 Y86.0 E255.6258
G1 X61.0 Y86.0 E255.82579
G1 X62.0 Y85.0 E255.96721
G1 X60.0 Y81.0 E256.4162
G1 X61.0 Y80.0 E256.56317
G1 X62.0 Y80.0 E256.66318
G1 X62.0 Y80.0
G1 X63.0 Y80.0 E256.7798
G1 X64.0 Y81.0 E256.9212
G1 X62.0 Y85.0 E257.3702
G1 X63.0 Y86.0 E257.51718
G1 X65.0 Y86.0 E257.7172
G1 X66.0 Y85.0 E257.8586
G1 X64.0 Y81.0 E258.30762
G1 X65.0 Y80.0 E258.4546
G1 X66.0 Y80.0 E258.5546
G1 X66.0 Y80.0
G1 X67.0 Y80.0 E258.6566
G1 X68.0 Y81.0 E258.798
G1 X66.0 Y85.0 E259.247
G1 X67.0 Y86.0 E259.39398
G1 X69.0 Y86.0 E259.594
G1 X70.0 Y85.0 E259.7354
G1 X68.0 Y81.0 E260.18442
G1 X69.0 Y80.0 E260.3314
G1 X70.0 Y80.0 E260.4314
G1 X70.0 Y80.0
G1 X71.0 Y80.0 E260.5334
G1 X72.0 Y81.0 E260.6748
G1 X70.0 Y85.0 E261.1238
G1 X71.0 Y86.0 E261.27078
G1 X73.0 Y86.0 E261.4708
G1 X74.0 Y85.0 E261.6122
G1 X72.0 Y81.0 E262.06122
G1 X73.0 Y80.0 E262.2082
G1 X74.0 Y80.0 E262.3082
G1 X74.0 Y80.0
G1 X75.0 Y80.0 E262.4248
G1 X76.0 Y81.0 E262.56622
G1 X74.0 Y85.0 E263.01523
G1 X75.0 Y86.0 E263.1622
G1 X77.0 Y86.0 E263.3622
G1 X78.0 Y85.0 E263.50363
G1 X76.0 Y81.0 E263.95264
G1 X77.0 Y80.0 E264.0996
G1 X78.0 Y80.0 E264.19962
G1 X78.0 Y80.0
G1 X79.0 Y80.0 E264.31622
G1 X80.0 Y81.0 E264.45764
G1 X78.0 Y85.0 E264.90665
G1 X79.0 Y86.0 E265.05362
G1 X81.0 Y86.0 E265.25363
G1 X82.0 Y85.0 E265.39505
G1 X80.0 Y81.0 E265.84406
G1 X81.0 Y80.0 E265.99103
G1 X82.0 Y80.0 E266.09103
G1 X82.0 Y80.0
G1 X83.0 Y80.0 E266.19302
G1 X84.0 Y81.0 E266.33444
G1 X82.0 Y85.0 E266.78345
G1 X83.0 Y86.0 E266.93042
G1 X85.0 Y86.0 E267.13043
G1 X86.0 Y85.0 E267.27185
G1 X84.0 Y81.0 E267.72086
G1 X85.0 Y80.0 E267.86783
G1 X86.0 Y80.0 E267.96783
G1 X86.0 Y80.0
G1 X87.0 Y80.0 E268.06982
G1 X88.0 Y81.0 E268.21124
G1 X86.0 Y85.0 E268.66025
G1 X87.0 Y86.0 E268.80722
G1 X89.0 Y86.0 E269.00723
G1 X90.0 Y85.0 E269.14865
G1 X88.0 Y81.0 E269.59766
G1 X89.0 Y80.0 E269.74463
G1 X90.0 Y80.0 E269.84464
G1 X90.0 Y80.0
G1 X91.0 Y80.0 E269.96124
G1 X92.0 Y81.0 E270.10266
G1 X90.0 Y85.0 E270.55167
G1 X91.0 Y86.0 E270.69864
G1 X93.0 Y86.0 E270.89865
G1 X94.0 Y85.0 E271.04007
G1 X92.0 Y81.0 E271.48907
G1 X93.0 Y80.0 E271.63605
G1 X94.0 Y80.0 E271.73605
G1 X94.0 Y83.0 E272.0367
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning