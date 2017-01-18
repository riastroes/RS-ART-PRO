;Project: Generate Knitting
;Ria Stroes
;start code
M140 S50.000000
M109 T0 S210.000000
T0
M190 S50           ;bed temperature on
M109 S210          ;extruder temperature on
G21                ;metric values
G90                ;absolute positioning
M107               ;start with the fan off
G28 X0 Y0          ;move X/Y to min endstops, so the head is out of the way
G28 Z0             ;move Z to min endstops
G1 Z15.0 F3000      ;move the platform up 15mm
G92 E0                  ;zero the extruded
G1 F200 E10              ;extrude 10mm of feed stock
G92 E0                  ;zero the extruded length again
M117 Printing...
G1 F1600.0
G1 Z0.1
G1 X62.266663 Y46.600002
G1 X62.266663 Y97.4 E5.08
G1 X135.06667 Y97.4 E12.360001
G1 X135.06667 Y46.600002 E17.44
G1 X62.466663 Y46.8 E24.700027
G1 X62.466663 Y97.200005 E29.740028
G1 X134.86667 Y97.200005 E36.98003
G1 X134.86667 Y46.8 E42.02003
G1 X62.666664 Y47.0 E49.24006
;start knitting
G1 F600.0
G1 Z1.4
G1 X68.0 Y50.0 E49.547104
G1 X69.333336 Y51.0 E49.897102
G1 X66.666664 Y55.0 E50.283024
G1 X68.0 Y56.0 E50.642963
G1 X70.666664 Y56.0 E51.20296
G1 X72.0 Y55.0 E51.552963
G1 X69.333336 Y51.0 E51.938885
G1 X70.666664 Y50.0 E52.298824
G1 X72.0 Y50.0 E52.578827
G1 X72.0 Y50.0
G1 X73.333336 Y50.0 E52.88587
G1 X74.666664 Y51.0 E53.23587
G1 X72.0 Y55.0 E53.62179
G1 X73.333336 Y56.0 E53.98173
G1 X76.0 Y56.0 E54.541733
G1 X77.333336 Y55.0 E54.89173
G1 X74.666664 Y51.0 E55.277653
G1 X76.0 Y50.0 E55.637592
G1 X77.333336 Y50.0 E55.91759
G1 X77.333336 Y50.0
G1 X78.666664 Y50.0 E56.224636
G1 X80.0 Y51.0 E56.57464
G1 X77.333336 Y55.0 E56.96056
G1 X78.666664 Y56.0 E57.3205
G1 X81.333336 Y56.0 E57.8805
G1 X82.666664 Y55.0 E58.2305
G1 X80.0 Y51.0 E58.61642
G1 X81.333336 Y50.0 E58.97636
G1 X82.666664 Y50.0 E59.25636
G1 X82.666664 Y50.0
G1 X84.0 Y50.0 E59.563404
G1 X85.333336 Y51.0 E59.913403
G1 X82.666664 Y55.0 E60.299324
G1 X84.0 Y56.0 E60.659264
G1 X86.666664 Y56.0 E61.21926
G1 X88.0 Y55.0 E61.569263
G1 X85.333336 Y51.0 E61.955185
G1 X86.666664 Y50.0 E62.315125
G1 X88.0 Y50.0 E62.595127
G1 X88.0 Y50.0
G1 X89.333336 Y50.0 E62.902172
G1 X90.666664 Y51.0 E63.25217
G1 X88.0 Y55.0 E63.638092
G1 X89.333336 Y56.0 E63.99803
G1 X92.0 Y56.0 E64.55803
G1 X93.333336 Y55.0 E64.90803
G1 X90.666664 Y51.0 E65.293945
G1 X92.0 Y50.0 E65.653885
G1 X93.333336 Y50.0 E65.93388
G1 X93.333336 Y50.0
G1 X94.666664 Y50.0 E66.04174
G1 X96.0 Y51.0 E66.17507
G1 X93.333336 Y55.0 E67.18812
G1 X94.666664 Y56.0 E67.32524
G1 X97.333336 Y56.0 E67.538574
G1 X98.666664 Y55.0 E67.671906
G1 X96.0 Y51.0 E68.68495
G1 X97.333336 Y50.0 E68.822075
G1 X98.666664 Y50.0 E68.92874
G1 X98.666664 Y50.0
G1 X100.0 Y50.0 E69.0366
G1 X101.333336 Y51.0 E69.16993
G1 X98.666664 Y55.0 E70.182976
G1 X100.0 Y56.0 E70.3201
G1 X102.666664 Y56.0 E70.53343
G1 X104.0 Y55.0 E70.66676
G1 X101.333336 Y51.0 E71.67981
G1 X102.666664 Y50.0 E71.81693
G1 X104.0 Y50.0 E71.9236
G1 X104.0 Y50.0
G1 X105.33333 Y50.0 E72.031456
G1 X106.666664 Y51.0 E72.16479
G1 X104.0 Y55.0 E73.177826
G1 X105.33333 Y56.0 E73.31494
G1 X108.0 Y56.0 E73.528275
G1 X109.33333 Y55.0 E73.661606
G1 X106.666664 Y51.0 E74.67465
G1 X108.0 Y50.0 E74.811775
G1 X109.33333 Y50.0 E74.91844
G1 X109.33333 Y50.0
G1 X110.666664 Y50.0 E75.0263
G1 X112.0 Y51.0 E75.15963
G1 X109.33333 Y55.0 E76.172676
G1 X110.666664 Y56.0 E76.3098
G1 X113.33333 Y56.0 E76.52313
G1 X114.666664 Y55.0 E76.65646
G1 X112.0 Y51.0 E77.66951
G1 X113.33333 Y50.0 E77.806625
G1 X114.666664 Y50.0 E77.91329
G1 X114.666664 Y50.0
G1 X116.0 Y50.0 E78.02115
G1 X117.33333 Y51.0 E78.15448
G1 X114.666664 Y55.0 E79.16753
G1 X116.0 Y56.0 E79.30465
G1 X118.666664 Y56.0 E79.51798
G1 X120.0 Y55.0 E79.65131
G1 X117.33333 Y51.0 E80.66436
G1 X118.666664 Y50.0 E80.80148
G1 X120.0 Y50.0 E80.90815
G1 X120.0 Y50.0
G1 X121.33333 Y50.0 E81.01601
G1 X122.666664 Y51.0 E81.14934
G1 X120.0 Y55.0 E82.162384
G1 X121.33333 Y56.0 E82.2995
G1 X124.0 Y56.0 E82.51283
G1 X125.33333 Y55.0 E82.646164
G1 X122.666664 Y51.0 E83.65921
G1 X124.0 Y50.0 E83.79633
G1 X125.33333 Y50.0 E83.903
G1 X125.33333 Y53.0 E84.20367
G1 X125.33333 Y53.0
G1 X124.0 Y53.0 E84.31152
G1 X122.666664 Y54.0 E84.444855
G1 X125.33333 Y58.0 E85.4579
G1 X124.0 Y59.0 E85.59502
G1 X121.33333 Y59.0 E85.80835
G1 X120.0 Y58.0 E85.94168
G1 X122.666664 Y54.0 E86.95473
G1 X121.33333 Y53.0 E87.09185
G1 X120.0 Y53.0 E87.19852
G1 X120.0 Y53.0
G1 X118.666664 Y53.0 E87.30637
G1 X117.33333 Y54.0 E87.439705
G1 X120.0 Y58.0 E88.45275
G1 X118.666664 Y59.0 E88.589874
G1 X116.0 Y59.0 E88.80321
G1 X114.666664 Y58.0 E88.93654
G1 X117.33333 Y54.0 E89.949585
G1 X116.0 Y53.0 E90.0867
G1 X114.666664 Y53.0 E90.19337
G1 X114.666664 Y53.0
G1 X113.33333 Y53.0 E90.30122
G1 X112.0 Y54.0 E90.434555
G1 X114.666664 Y58.0 E91.4476
G1 X113.33333 Y59.0 E91.584724
G1 X110.666664 Y59.0 E91.79806
G1 X109.33333 Y58.0 E91.93139
G1 X112.0 Y54.0 E92.944435
G1 X110.666664 Y53.0 E93.08156
G1 X109.33333 Y53.0 E93.188225
G1 X109.33333 Y53.0
G1 X108.0 Y53.0 E93.29608
G1 X106.666664 Y54.0 E93.42941
G1 X109.33333 Y58.0 E94.44246
G1 X108.0 Y59.0 E94.579575
G1 X105.33333 Y59.0 E94.79291
G1 X104.0 Y58.0 E94.92624
G1 X106.666664 Y54.0 E95.939285
G1 X105.33333 Y53.0 E96.07641
G1 X104.0 Y53.0 E96.183075
G1 X104.0 Y53.0
G1 X102.666664 Y53.0 E96.29093
G1 X101.333336 Y54.0 E96.42426
G1 X104.0 Y58.0 E97.43731
G1 X102.666664 Y59.0 E97.57443
G1 X100.0 Y59.0 E97.787766
G1 X98.666664 Y58.0 E97.9211
G1 X101.333336 Y54.0 E98.93414
G1 X100.0 Y53.0 E99.071266
G1 X98.666664 Y53.0 E99.17793
G1 X98.666664 Y53.0
G1 X97.333336 Y53.0 E99.28579
G1 X96.0 Y54.0 E99.41912
G1 X98.666664 Y58.0 E100.43216
G1 X97.333336 Y59.0 E100.56928
G1 X94.666664 Y59.0 E100.782616
G1 X93.333336 Y58.0 E100.91595
G1 X96.0 Y54.0 E101.92899
G1 X94.666664 Y53.0 E102.06612
G1 X93.333336 Y53.0 E102.17278
G1 X93.333336 Y53.0
G1 X92.0 Y53.0 E102.47983
G1 X90.666664 Y54.0 E102.82983
G1 X93.333336 Y58.0 E103.215744
G1 X92.0 Y59.0 E103.57568
G1 X89.333336 Y59.0 E104.13568
G1 X88.0 Y58.0 E104.48568
G1 X90.666664 Y54.0 E104.8716
G1 X89.333336 Y53.0 E105.23154
G1 X88.0 Y53.0 E105.511536
G1 X88.0 Y53.0
G1 X86.666664 Y53.0 E105.81858
G1 X85.333336 Y54.0 E106.16858
G1 X88.0 Y58.0 E106.5545
G1 X86.666664 Y59.0 E106.91444
G1 X84.0 Y59.0 E107.474434
G1 X82.666664 Y58.0 E107.82443
G1 X85.333336 Y54.0 E108.21035
G1 X84.0 Y53.0 E108.57029
G1 X82.666664 Y53.0 E108.85029
G1 X82.666664 Y53.0
G1 X81.333336 Y53.0 E109.15733
G1 X80.0 Y54.0 E109.50733
G1 X82.666664 Y58.0 E109.89325
G1 X81.333336 Y59.0 E110.25319
G1 X78.666664 Y59.0 E110.81319
G1 X77.333336 Y58.0 E111.163185
G1 X80.0 Y54.0 E111.5491
G1 X78.666664 Y53.0 E111.90904
G1 X77.333336 Y53.0 E112.18904
G1 X77.333336 Y53.0
G1 X76.0 Y53.0 E112.496086
G1 X74.666664 Y54.0 E112.846085
G1 X77.333336 Y58.0 E113.232
G1 X76.0 Y59.0 E113.59194
G1 X73.333336 Y59.0 E114.15194
G1 X72.0 Y58.0 E114.50194
G1 X74.666664 Y54.0 E114.887856
G1 X73.333336 Y53.0 E115.247795
G1 X72.0 Y53.0 E115.527794
G1 X72.0 Y53.0
G1 X70.666664 Y53.0 E115.83484
G1 X69.333336 Y54.0 E116.18484
G1 X72.0 Y58.0 E116.570755
G1 X70.666664 Y59.0 E116.930695
G1 X68.0 Y59.0 E117.49069
G1 X66.666664 Y58.0 E117.84069
G1 X69.333336 Y54.0 E118.22661
G1 X68.0 Y53.0 E118.58655
G1 X66.666664 Y53.0 E118.86655
G1 X66.666664 Y56.0 E119.16721
G1 X66.666664 Y56.0
G1 X68.0 Y56.0 E119.47426
G1 X69.333336 Y57.0 E119.82426
G1 X66.666664 Y61.0 E120.210175
G1 X68.0 Y62.0 E120.570114
G1 X70.666664 Y62.0 E121.13011
G1 X72.0 Y61.0 E121.48011
G1 X69.333336 Y57.0 E121.86603
G1 X70.666664 Y56.0 E122.22597
G1 X72.0 Y56.0 E122.50597
G1 X72.0 Y56.0
G1 X73.333336 Y56.0 E122.81301
G1 X74.666664 Y57.0 E123.16301
G1 X72.0 Y61.0 E123.54893
G1 X73.333336 Y62.0 E123.90887
G1 X76.0 Y62.0 E124.468864
G1 X77.333336 Y61.0 E124.81886
G1 X74.666664 Y57.0 E125.20478
G1 X76.0 Y56.0 E125.56472
G1 X77.333336 Y56.0 E125.84472
G1 X77.333336 Y56.0
G1 X78.666664 Y56.0 E126.151764
G1 X80.0 Y57.0 E126.50176
G1 X77.333336 Y61.0 E126.88768
G1 X78.666664 Y62.0 E127.24762
G1 X81.333336 Y62.0 E127.80762
G1 X82.666664 Y61.0 E128.15762
G1 X80.0 Y57.0 E128.54355
G1 X81.333336 Y56.0 E128.90349
G1 X82.666664 Y56.0 E129.18349
G1 X82.666664 Y56.0
G1 X84.0 Y56.0 E129.49052
G1 X85.333336 Y57.0 E129.84053
G1 X82.666664 Y61.0 E130.22646
G1 X84.0 Y62.0 E130.5864
G1 X86.666664 Y62.0 E131.1464
G1 X88.0 Y61.0 E131.4964
G1 X85.333336 Y57.0 E131.88232
G1 X86.666664 Y56.0 E132.24226
G1 X88.0 Y56.0 E132.52226
G1 X88.0 Y56.0
G1 X89.333336 Y56.0 E132.8293
G1 X90.666664 Y57.0 E133.1793
G1 X88.0 Y61.0 E133.56523
G1 X89.333336 Y62.0 E133.92517
G1 X92.0 Y62.0 E134.48517
G1 X93.333336 Y61.0 E134.83517
G1 X90.666664 Y57.0 E135.2211
G1 X92.0 Y56.0 E135.58104
G1 X93.333336 Y56.0 E135.86104
G1 X93.333336 Y56.0
G1 X94.666664 Y56.0 E135.9689
G1 X96.0 Y57.0 E136.10223
G1 X93.333336 Y61.0 E137.11528
G1 X94.666664 Y62.0 E137.2524
G1 X97.333336 Y62.0 E137.46573
G1 X98.666664 Y61.0 E137.59906
G1 X96.0 Y57.0 E138.6121
G1 X97.333336 Y56.0 E138.74922
G1 X98.666664 Y56.0 E138.85588
G1 X98.666664 Y56.0
G1 X100.0 Y56.0 E138.96375
G1 X101.333336 Y57.0 E139.09708
G1 X98.666664 Y61.0 E140.11012
G1 X100.0 Y62.0 E140.24724
G1 X102.666664 Y62.0 E140.46057
G1 X104.0 Y61.0 E140.5939
G1 X101.333336 Y57.0 E141.60695
G1 X102.666664 Y56.0 E141.74406
G1 X104.0 Y56.0 E141.85074
G1 X104.0 Y56.0
G1 X105.33333 Y56.0 E141.9586
G1 X106.666664 Y57.0 E142.09193
G1 X104.0 Y61.0 E143.10498
G1 X105.33333 Y62.0 E143.2421
G1 X108.0 Y62.0 E143.45543
G1 X109.33333 Y61.0 E143.58876
G1 X106.666664 Y57.0 E144.6018
G1 X108.0 Y56.0 E144.73892
G1 X109.33333 Y56.0 E144.84558
G1 X109.33333 Y56.0
G1 X110.666664 Y56.0 E144.95345
G1 X112.0 Y57.0 E145.08678
G1 X109.33333 Y61.0 E146.09982
G1 X110.666664 Y62.0 E146.23694
G1 X113.33333 Y62.0 E146.45027
G1 X114.666664 Y61.0 E146.5836
G1 X112.0 Y57.0 E147.59665
G1 X113.33333 Y56.0 E147.73376
G1 X114.666664 Y56.0 E147.84044
G1 X114.666664 Y56.0
G1 X116.0 Y56.0 E147.9483
G1 X117.33333 Y57.0 E148.08163
G1 X114.666664 Y61.0 E149.09468
G1 X116.0 Y62.0 E149.2318
G1 X118.666664 Y62.0 E149.44513
G1 X120.0 Y61.0 E149.57846
G1 X117.33333 Y57.0 E150.5915
G1 X118.666664 Y56.0 E150.72862
G1 X120.0 Y56.0 E150.8353
G1 X120.0 Y56.0
G1 X121.33333 Y56.0 E150.94316
G1 X122.666664 Y57.0 E151.07649
G1 X120.0 Y61.0 E152.08954
G1 X121.33333 Y62.0 E152.22665
G1 X124.0 Y62.0 E152.43999
G1 X125.33333 Y61.0 E152.57332
G1 X122.666664 Y57.0 E153.58636
G1 X124.0 Y56.0 E153.72348
G1 X125.33333 Y56.0 E153.83014
G1 X125.33333 Y59.0 E154.1308
G1 X125.33333 Y59.0
G1 X124.0 Y59.0 E154.23866
G1 X122.666664 Y60.0 E154.372
G1 X125.33333 Y64.0 E155.38504
G1 X124.0 Y65.0 E155.52216
G1 X121.33333 Y65.0 E155.73549
G1 X120.0 Y64.0 E155.86882
G1 X122.666664 Y60.0 E156.88187
G1 X121.33333 Y59.0 E157.01898
G1 X120.0 Y59.0 E157.12564
G1 X120.0 Y59.0
G1 X118.666664 Y59.0 E157.2335
G1 X117.33333 Y60.0 E157.36684
G1 X120.0 Y64.0 E158.37988
G1 X118.666664 Y65.0 E158.517
G1 X116.0 Y65.0 E158.73033
G1 X114.666664 Y64.0 E158.86366
G1 X117.33333 Y60.0 E159.87671
G1 X116.0 Y59.0 E160.01382
G1 X114.666664 Y59.0 E160.1205
G1 X114.666664 Y59.0
G1 X113.33333 Y59.0 E160.22836
G1 X112.0 Y60.0 E160.3617
G1 X114.666664 Y64.0 E161.37474
G1 X113.33333 Y65.0 E161.51186
G1 X110.666664 Y65.0 E161.72519
G1 X109.33333 Y64.0 E161.85852
G1 X112.0 Y60.0 E162.87157
G1 X110.666664 Y59.0 E163.00868
G1 X109.33333 Y59.0 E163.11536
G1 X109.33333 Y59.0
G1 X108.0 Y59.0 E163.22322
G1 X106.666664 Y60.0 E163.35655
G1 X109.33333 Y64.0 E164.3696
G1 X108.0 Y65.0 E164.50671
G1 X105.33333 Y65.0 E164.72005
G1 X104.0 Y64.0 E164.85338
G1 X106.666664 Y60.0 E165.86642
G1 X105.33333 Y59.0 E166.00354
G1 X104.0 Y59.0 E166.1102
G1 X104.0 Y59.0
G1 X102.666664 Y59.0 E166.21806
G1 X101.333336 Y60.0 E166.3514
G1 X104.0 Y64.0 E167.36444
G1 X102.666664 Y65.0 E167.50156
G1 X100.0 Y65.0 E167.71489
G1 X98.666664 Y64.0 E167.84822
G1 X101.333336 Y60.0 E168.86127
G1 X100.0 Y59.0 E168.99838
G1 X98.666664 Y59.0 E169.10506
G1 X98.666664 Y59.0
G1 X97.333336 Y59.0 E169.21292
G1 X96.0 Y60.0 E169.34625
G1 X98.666664 Y64.0 E170.3593
G1 X97.333336 Y65.0 E170.49641
G1 X94.666664 Y65.0 E170.70975
G1 X93.333336 Y64.0 E170.84308
G1 X96.0 Y60.0 E171.85612
G1 X94.666664 Y59.0 E171.99324
G1 X93.333336 Y59.0 E172.0999
G1 X93.333336 Y59.0
G1 X92.0 Y59.0 E172.40694
G1 X90.666664 Y60.0 E172.75694
G1 X93.333336 Y64.0 E173.14287
G1 X92.0 Y65.0 E173.5028
G1 X89.333336 Y65.0 E174.0628
G1 X88.0 Y64.0 E174.41281
G1 X90.666664 Y60.0 E174.79874
G1 X89.333336 Y59.0 E175.15868
G1 X88.0 Y59.0 E175.43867
G1 X88.0 Y59.0
G1 X86.666664 Y59.0 E175.74571
G1 X85.333336 Y60.0 E176.09572
G1 X88.0 Y64.0 E176.48164
G1 X86.666664 Y65.0 E176.84158
G1 X84.0 Y65.0 E177.40158
G1 X82.666664 Y64.0 E177.75159
G1 X85.333336 Y60.0 E178.13751
G1 X84.0 Y59.0 E178.49745
G1 X82.666664 Y59.0 E178.77745
G1 X82.666664 Y59.0
G1 X81.333336 Y59.0 E179.08449
G1 X80.0 Y60.0 E179.4345
G1 X82.666664 Y64.0 E179.82042
G1 X81.333336 Y65.0 E180.18036
G1 X78.666664 Y65.0 E180.74036
G1 X77.333336 Y64.0 E181.09036
G1 X80.0 Y60.0 E181.47629
G1 X78.666664 Y59.0 E181.83623
G1 X77.333336 Y59.0 E182.11623
G1 X77.333336 Y59.0
G1 X76.0 Y59.0 E182.42326
G1 X74.666664 Y60.0 E182.77327
G1 X77.333336 Y64.0 E183.1592
G1 X76.0 Y65.0 E183.51913
G1 X73.333336 Y65.0 E184.07913
G1 X72.0 Y64.0 E184.42914
G1 X74.666664 Y60.0 E184.81506
G1 X73.333336 Y59.0 E185.175
G1 X72.0 Y59.0 E185.455
G1 X72.0 Y59.0
G1 X70.666664 Y59.0 E185.76204
G1 X69.333336 Y60.0 E186.11205
G1 X72.0 Y64.0 E186.49797
G1 X70.666664 Y65.0 E186.85791
G1 X68.0 Y65.0 E187.41791
G1 X66.666664 Y64.0 E187.76791
G1 X69.333336 Y60.0 E188.15384
G1 X68.0 Y59.0 E188.51378
G1 X66.666664 Y59.0 E188.79378
G1 X66.666664 Y62.0 E189.09444
G1 X66.666664 Y62.0
G1 X68.0 Y62.0 E189.40147
G1 X69.333336 Y63.0 E189.75148
G1 X66.666664 Y67.0 E190.1374
G1 X68.0 Y68.0 E190.49734
G1 X70.666664 Y68.0 E191.05734
G1 X72.0 Y67.0 E191.40735
G1 X69.333336 Y63.0 E191.79327
G1 X70.666664 Y62.0 E192.15321
G1 X72.0 Y62.0 E192.43321
G1 X72.0 Y62.0
G1 X73.333336 Y62.0 E192.74025
G1 X74.666664 Y63.0 E193.09026
G1 X72.0 Y67.0 E193.47618
G1 X73.333336 Y68.0 E193.83612
G1 X76.0 Y68.0 E194.39612
G1 X77.333336 Y67.0 E194.74612
G1 X74.666664 Y63.0 E195.13205
G1 X76.0 Y62.0 E195.49199
G1 X77.333336 Y62.0 E195.77199
G1 X77.333336 Y62.0
G1 X78.666664 Y62.0 E196.07903
G1 X80.0 Y63.0 E196.42903
G1 X77.333336 Y67.0 E196.81496
G1 X78.666664 Y68.0 E197.1749
G1 X81.333336 Y68.0 E197.7349
G1 X82.666664 Y67.0 E198.0849
G1 X80.0 Y63.0 E198.47083
G1 X81.333336 Y62.0 E198.83076
G1 X82.666664 Y62.0 E199.11076
G1 X82.666664 Y62.0
G1 X84.0 Y62.0 E199.4178
G1 X85.333336 Y63.0 E199.7678
G1 X82.666664 Y67.0 E200.15373
G1 X84.0 Y68.0 E200.51367
G1 X86.666664 Y68.0 E201.07367
G1 X88.0 Y67.0 E201.42368
G1 X85.333336 Y63.0 E201.8096
G1 X86.666664 Y62.0 E202.16954
G1 X88.0 Y62.0 E202.44954
G1 X88.0 Y62.0
G1 X89.333336 Y62.0 E202.75658
G1 X90.666664 Y63.0 E203.10658
G1 X88.0 Y67.0 E203.49251
G1 X89.333336 Y68.0 E203.85245
G1 X92.0 Y68.0 E204.41245
G1 X93.333336 Y67.0 E204.76245
G1 X90.666664 Y63.0 E205.14838
G1 X92.0 Y62.0 E205.50832
G1 X93.333336 Y62.0 E205.78831
G1 X93.333336 Y62.0
G1 X94.666664 Y62.0 E205.89618
G1 X96.0 Y63.0 E206.02951
G1 X93.333336 Y67.0 E207.04256
G1 X94.666664 Y68.0 E207.17967
G1 X97.333336 Y68.0 E207.393
G1 X98.666664 Y67.0 E207.52634
G1 X96.0 Y63.0 E208.53938
G1 X97.333336 Y62.0 E208.6765
G1 X98.666664 Y62.0 E208.78316
G1 X98.666664 Y62.0
G1 X100.0 Y62.0 E208.89102
G1 X101.333336 Y63.0 E209.02435
G1 X98.666664 Y67.0 E210.0374
G1 X100.0 Y68.0 E210.17451
G1 X102.666664 Y68.0 E210.38785
G1 X104.0 Y67.0 E210.52118
G1 X101.333336 Y63.0 E211.53423
G1 X102.666664 Y62.0 E211.67134
G1 X104.0 Y62.0 E211.77802
G1 X104.0 Y62.0
G1 X105.33333 Y62.0 E211.88588
G1 X106.666664 Y63.0 E212.01921
G1 X104.0 Y67.0 E213.03226
G1 X105.33333 Y68.0 E213.16937
G1 X108.0 Y68.0 E213.3827
G1 X109.33333 Y67.0 E213.51604
G1 X106.666664 Y63.0 E214.52908
G1 X108.0 Y62.0 E214.6662
G1 X109.33333 Y62.0 E214.77286
G1 X109.33333 Y62.0
G1 X110.666664 Y62.0 E214.88072
G1 X112.0 Y63.0 E215.01405
G1 X109.33333 Y67.0 E216.0271
G1 X110.666664 Y68.0 E216.16422
G1 X113.33333 Y68.0 E216.37755
G1 X114.666664 Y67.0 E216.51088
G1 X112.0 Y63.0 E217.52393
G1 X113.33333 Y62.0 E217.66104
G1 X114.666664 Y62.0 E217.76772
G1 X114.666664 Y62.0
G1 X116.0 Y62.0 E217.87558
G1 X117.33333 Y63.0 E218.00891
G1 X114.666664 Y67.0 E219.02196
G1 X116.0 Y68.0 E219.15907
G1 X118.666664 Y68.0 E219.3724
G1 X120.0 Y67.0 E219.50574
G1 X117.33333 Y63.0 E220.51878
G1 X118.666664 Y62.0 E220.6559
G1 X120.0 Y62.0 E220.76257
G1 X120.0 Y62.0
G1 X121.33333 Y62.0 E220.87044
G1 X122.666664 Y63.0 E221.00377
G1 X120.0 Y67.0 E222.01682
G1 X121.33333 Y68.0 E222.15393
G1 X124.0 Y68.0 E222.36726
G1 X125.33333 Y67.0 E222.5006
G1 X122.666664 Y63.0 E223.51364
G1 X124.0 Y62.0 E223.65076
G1 X125.33333 Y62.0 E223.75742
G1 X125.33333 Y65.0 E224.05807
G1 X125.33333 Y65.0
G1 X124.0 Y65.0 E224.16594
G1 X122.666664 Y66.0 E224.29927
G1 X125.33333 Y70.0 E225.31232
G1 X124.0 Y71.0 E225.44943
G1 X121.33333 Y71.0 E225.66277
G1 X120.0 Y70.0 E225.7961
G1 X122.666664 Y66.0 E226.80914
G1 X121.33333 Y65.0 E226.94626
G1 X120.0 Y65.0 E227.05292
G1 X120.0 Y65.0
G1 X118.666664 Y65.0 E227.16078
G1 X117.33333 Y66.0 E227.29411
G1 X120.0 Y70.0 E228.30716
G1 X118.666664 Y71.0 E228.44427
G1 X116.0 Y71.0 E228.65761
G1 X114.666664 Y70.0 E228.79094
G1 X117.33333 Y66.0 E229.80399
G1 X116.0 Y65.0 E229.9411
G1 X114.666664 Y65.0 E230.04778
G1 X114.666664 Y65.0
G1 X113.33333 Y65.0 E230.15564
G1 X112.0 Y66.0 E230.28897
G1 X114.666664 Y70.0 E231.30202
G1 X113.33333 Y71.0 E231.43913
G1 X110.666664 Y71.0 E231.65247
G1 X109.33333 Y70.0 E231.7858
G1 X112.0 Y66.0 E232.79884
G1 X110.666664 Y65.0 E232.93596
G1 X109.33333 Y65.0 E233.04263
G1 X109.33333 Y65.0
G1 X108.0 Y65.0 E233.1505
G1 X106.666664 Y66.0 E233.28383
G1 X109.33333 Y70.0 E234.29688
G1 X108.0 Y71.0 E234.43399
G1 X105.33333 Y71.0 E234.64732
G1 X104.0 Y70.0 E234.78065
G1 X106.666664 Y66.0 E235.7937
G1 X105.33333 Y65.0 E235.93082
G1 X104.0 Y65.0 E236.03748
G1 X104.0 Y65.0
G1 X102.666664 Y65.0 E236.14534
G1 X101.333336 Y66.0 E236.27867
G1 X104.0 Y70.0 E237.29172
G1 X102.666664 Y71.0 E237.42883
G1 X100.0 Y71.0 E237.64217
G1 X98.666664 Y70.0 E237.7755
G1 X101.333336 Y66.0 E238.78854
G1 X100.0 Y65.0 E238.92566
G1 X98.666664 Y65.0 E239.03233
G1 X98.666664 Y65.0
G1 X97.333336 Y65.0 E239.1402
G1 X96.0 Y66.0 E239.27353
G1 X98.666664 Y70.0 E240.28658
G1 X97.333336 Y71.0 E240.42369
G1 X94.666664 Y71.0 E240.63702
G1 X93.333336 Y70.0 E240.77036
G1 X96.0 Y66.0 E241.7834
G1 X94.666664 Y65.0 E241.92052
G1 X93.333336 Y65.0 E242.02718
G1 X93.333336 Y65.0
G1 X92.0 Y65.0 E242.33421
G1 X90.666664 Y66.0 E242.68422
G1 X93.333336 Y70.0 E243.07014
G1 X92.0 Y71.0 E243.43008
G1 X89.333336 Y71.0 E243.99008
G1 X88.0 Y70.0 E244.34009
G1 X90.666664 Y66.0 E244.72601
G1 X89.333336 Y65.0 E245.08595
G1 X88.0 Y65.0 E245.36595
G1 X88.0 Y65.0
G1 X86.666664 Y65.0 E245.67299
G1 X85.333336 Y66.0 E246.023
G1 X88.0 Y70.0 E246.40892
G1 X86.666664 Y71.0 E246.76886
G1 X84.0 Y71.0 E247.32886
G1 X82.666664 Y70.0 E247.67886
G1 X85.333336 Y66.0 E248.06479
G1 X84.0 Y65.0 E248.42473
G1 X82.666664 Y65.0 E248.70473
G1 X82.666664 Y65.0
G1 X81.333336 Y65.0 E249.01176
G1 X80.0 Y66.0 E249.36177
G1 X82.666664 Y70.0 E249.7477
G1 X81.333336 Y71.0 E250.10764
G1 X78.666664 Y71.0 E250.66763
G1 X77.333336 Y70.0 E251.01764
G1 X80.0 Y66.0 E251.40356
G1 X78.666664 Y65.0 E251.7635
G1 X77.333336 Y65.0 E252.0435
G1 X77.333336 Y65.0
G1 X76.0 Y65.0 E252.35054
G1 X74.666664 Y66.0 E252.70055
G1 X77.333336 Y70.0 E253.08647
G1 X76.0 Y71.0 E253.44641
G1 X73.333336 Y71.0 E254.00641
G1 X72.0 Y70.0 E254.35641
G1 X74.666664 Y66.0 E254.74234
G1 X73.333336 Y65.0 E255.10228
G1 X72.0 Y65.0 E255.38228
G1 X72.0 Y65.0
G1 X70.666664 Y65.0 E255.68932
G1 X69.333336 Y66.0 E256.0393
G1 X72.0 Y70.0 E256.42523
G1 X70.666664 Y71.0 E256.78516
G1 X68.0 Y71.0 E257.34515
G1 X66.666664 Y70.0 E257.69516
G1 X69.333336 Y66.0 E258.0811
G1 X68.0 Y65.0 E258.441
G1 X66.666664 Y65.0 E258.721
G1 X66.666664 Y68.0 E259.02167
G1 X66.666664 Y68.0
G1 X68.0 Y68.0 E259.3287
G1 X69.333336 Y69.0 E259.6787
G1 X66.666664 Y73.0 E260.06464
G1 X68.0 Y74.0 E260.42456
G1 X70.666664 Y74.0 E260.98456
G1 X72.0 Y73.0 E261.33456
G1 X69.333336 Y69.0 E261.7205
G1 X70.666664 Y68.0 E262.0804
G1 X72.0 Y68.0 E262.3604
G1 X72.0 Y68.0
G1 X73.333336 Y68.0 E262.66745
G1 X74.666664 Y69.0 E263.01746
G1 X72.0 Y73.0 E263.40338
G1 X73.333336 Y74.0 E263.7633
G1 X76.0 Y74.0 E264.3233
G1 X77.333336 Y73.0 E264.6733
G1 X74.666664 Y69.0 E265.05923
G1 X76.0 Y68.0 E265.41916
G1 X77.333336 Y68.0 E265.69916
G1 X77.333336 Y68.0
G1 X78.666664 Y68.0 E266.0062
G1 X80.0 Y69.0 E266.3562
G1 X77.333336 Y73.0 E266.74213
G1 X78.666664 Y74.0 E267.10205
G1 X81.333336 Y74.0 E267.66205
G1 X82.666664 Y73.0 E268.01205
G1 X80.0 Y69.0 E268.39798
G1 X81.333336 Y68.0 E268.7579
G1 X82.666664 Y68.0 E269.0379
G1 X82.666664 Y68.0
G1 X84.0 Y68.0 E269.34494
G1 X85.333336 Y69.0 E269.69495
G1 X82.666664 Y73.0 E270.08087
G1 X84.0 Y74.0 E270.4408
G1 X86.666664 Y74.0 E271.0008
G1 X88.0 Y73.0 E271.3508
G1 X85.333336 Y69.0 E271.73672
G1 X86.666664 Y68.0 E272.09665
G1 X88.0 Y68.0 E272.37665
G1 X88.0 Y68.0
G1 X89.333336 Y68.0 E272.6837
G1 X90.666664 Y69.0 E273.0337
G1 X88.0 Y73.0 E273.41962
G1 X89.333336 Y74.0 E273.77954
G1 X92.0 Y74.0 E274.33954
G1 X93.333336 Y73.0 E274.68954
G1 X90.666664 Y69.0 E275.07547
G1 X92.0 Y68.0 E275.4354
G1 X93.333336 Y68.0 E275.7154
G1 X93.333336 Y68.0
G1 X94.666664 Y68.0 E275.82324
G1 X96.0 Y69.0 E275.95657
G1 X93.333336 Y73.0 E276.9696
G1 X94.666664 Y74.0 E277.10672
G1 X97.333336 Y74.0 E277.32007
G1 X98.666664 Y73.0 E277.4534
G1 X96.0 Y69.0 E278.46643
G1 X97.333336 Y68.0 E278.60355
G1 X98.666664 Y68.0 E278.7102
G1 X98.666664 Y68.0
G1 X100.0 Y68.0 E278.81805
G1 X101.333336 Y69.0 E278.9514
G1 X98.666664 Y73.0 E279.96442
G1 X100.0 Y74.0 E280.10153
G1 X102.666664 Y74.0 E280.31485
G1 X104.0 Y73.0 E280.44818
G1 X101.333336 Y69.0 E281.4612
G1 X102.666664 Y68.0 E281.59833
G1 X104.0 Y68.0 E281.705
G1 X104.0 Y68.0
G1 X105.33333 Y68.0 E281.81284
G1 X106.666664 Y69.0 E281.94617
G1 X104.0 Y73.0 E282.9592
G1 X105.33333 Y74.0 E283.0963
G1 X108.0 Y74.0 E283.30966
G1 X109.33333 Y73.0 E283.443
G1 X106.666664 Y69.0 E284.45602
G1 X108.0 Y68.0 E284.59314
G1 X109.33333 Y68.0 E284.6998
G1 X109.33333 Y68.0
G1 X110.666664 Y68.0 E284.80765
G1 X112.0 Y69.0 E284.94098
G1 X109.33333 Y73.0 E285.954
G1 X110.666664 Y74.0 E286.09113
G1 X113.33333 Y74.0 E286.30444
G1 X114.666664 Y73.0 E286.43777
G1 X112.0 Y69.0 E287.4508
G1 X113.33333 Y68.0 E287.58792
G1 X114.666664 Y68.0 E287.69458
G1 X114.666664 Y68.0
G1 X116.0 Y68.0 E287.80243
G1 X117.33333 Y69.0 E287.93576
G1 X114.666664 Y73.0 E288.9488
G1 X116.0 Y74.0 E289.0859
G1 X118.666664 Y74.0 E289.29922
G1 X120.0 Y73.0 E289.43256
G1 X117.33333 Y69.0 E290.4456
G1 X118.666664 Y68.0 E290.5827
G1 X120.0 Y68.0 E290.68936
G1 X120.0 Y68.0
G1 X121.33333 Y68.0 E290.7972
G1 X122.666664 Y69.0 E290.93054
G1 X120.0 Y73.0 E291.94357
G1 X121.33333 Y74.0 E292.0807
G1 X124.0 Y74.0 E292.29404
G1 X125.33333 Y73.0 E292.42737
G1 X122.666664 Y69.0 E293.4404
G1 X124.0 Y68.0 E293.5775
G1 X125.33333 Y68.0 E293.68417
G1 X125.33333 Y71.0 E293.98483
G1 X125.33333 Y71.0
G1 X124.0 Y71.0 E294.09268
G1 X122.666664 Y72.0 E294.226
G1 X125.33333 Y76.0 E295.23904
G1 X124.0 Y77.0 E295.37616
G1 X121.33333 Y77.0 E295.5895
G1 X120.0 Y76.0 E295.72284
G1 X122.666664 Y72.0 E296.73587
G1 X121.33333 Y71.0 E296.873
G1 X120.0 Y71.0 E296.97964
G1 X120.0 Y71.0
G1 X118.666664 Y71.0 E297.0875
G1 X117.33333 Y72.0 E297.22083
G1 X120.0 Y76.0 E298.23386
G1 X118.666664 Y77.0 E298.37097
G1 X116.0 Y77.0 E298.5843
G1 X114.666664 Y76.0 E298.71762
G1 X117.33333 Y72.0 E299.73065
G1 X116.0 Y71.0 E299.86777
G1 X114.666664 Y71.0 E299.97443
G1 X114.666664 Y71.0
G1 X113.33333 Y71.0 E300.08228
G1 X112.0 Y72.0 E300.2156
G1 X114.666664 Y76.0 E301.22864
G1 X113.33333 Y77.0 E301.36575
G1 X110.666664 Y77.0 E301.57907
G1 X109.33333 Y76.0 E301.7124
G1 X112.0 Y72.0 E302.72543
G1 X110.666664 Y71.0 E302.86255
G1 X109.33333 Y71.0 E302.9692
G1 X109.33333 Y71.0
G1 X108.0 Y71.0 E303.07706
G1 X106.666664 Y72.0 E303.2104
G1 X109.33333 Y76.0 E304.22342
G1 X108.0 Y77.0 E304.36053
G1 X105.33333 Y77.0 E304.57388
G1 X104.0 Y76.0 E304.7072
G1 X106.666664 Y72.0 E305.72025
G1 X105.33333 Y71.0 E305.85736
G1 X104.0 Y71.0 E305.96402
G1 X104.0 Y71.0
G1 X102.666664 Y71.0 E306.07187
G1 X101.333336 Y72.0 E306.2052
G1 X104.0 Y76.0 E307.21823
G1 X102.666664 Y77.0 E307.35535
G1 X100.0 Y77.0 E307.56866
G1 X98.666664 Y76.0 E307.702
G1 X101.333336 Y72.0 E308.71503
G1 X100.0 Y71.0 E308.85214
G1 X98.666664 Y71.0 E308.9588
G1 X98.666664 Y71.0
G1 X97.333336 Y71.0 E309.06665
G1 X96.0 Y72.0 E309.19998
G1 X98.666664 Y76.0 E310.213
G1 X97.333336 Y77.0 E310.35013
G1 X94.666664 Y77.0 E310.56348
G1 X93.333336 Y76.0 E310.6968
G1 X96.0 Y72.0 E311.70984
G1 X94.666664 Y71.0 E311.84695
G1 X93.333336 Y71.0 E311.9536
G1 X93.333336 Y71.0
G1 X92.0 Y71.0 E312.26065
G1 X90.666664 Y72.0 E312.61066
G1 X93.333336 Y76.0 E312.99658
G1 X92.0 Y77.0 E313.3565
G1 X89.333336 Y77.0 E313.9165
G1 X88.0 Y76.0 E314.2665
G1 X90.666664 Y72.0 E314.65244
G1 X89.333336 Y71.0 E315.01236
G1 X88.0 Y71.0 E315.29236
G1 X88.0 Y71.0
G1 X86.666664 Y71.0 E315.5994
G1 X85.333336 Y72.0 E315.9494
G1 X88.0 Y76.0 E316.33533
G1 X86.666664 Y77.0 E316.69525
G1 X84.0 Y77.0 E317.25525
G1 X82.666664 Y76.0 E317.60526
G1 X85.333336 Y72.0 E317.99118
G1 X84.0 Y71.0 E318.3511
G1 X82.666664 Y71.0 E318.6311
G1 X82.666664 Y71.0
G1 X81.333336 Y71.0 E318.93814
G1 X80.0 Y72.0 E319.28815
G1 X82.666664 Y76.0 E319.67407
G1 X81.333336 Y77.0 E320.034
G1 X78.666664 Y77.0 E320.594
G1 X77.333336 Y76.0 E320.944
G1 X80.0 Y72.0 E321.32993
G1 X78.666664 Y71.0 E321.68985
G1 X77.333336 Y71.0 E321.96985
G1 X77.333336 Y71.0
G1 X76.0 Y71.0 E322.2769
G1 X74.666664 Y72.0 E322.6269
G1 X77.333336 Y76.0 E323.01282
G1 X76.0 Y77.0 E323.37274
G1 X73.333336 Y77.0 E323.93274
G1 X72.0 Y76.0 E324.28275
G1 X74.666664 Y72.0 E324.66867
G1 X73.333336 Y71.0 E325.0286
G1 X72.0 Y71.0 E325.3086
G1 X72.0 Y71.0
G1 X70.666664 Y71.0 E325.61563
G1 X69.333336 Y72.0 E325.96564
G1 X72.0 Y76.0 E326.35156
G1 X70.666664 Y77.0 E326.7115
G1 X68.0 Y77.0 E327.27148
G1 X66.666664 Y76.0 E327.6215
G1 X69.333336 Y72.0 E328.00742
G1 X68.0 Y71.0 E328.36734
G1 X66.666664 Y71.0 E328.64734
G1 X66.666664 Y74.0 E328.948
G1 X66.666664 Y74.0
G1 X68.0 Y74.0 E329.25504
G1 X69.333336 Y75.0 E329.60504
G1 X66.666664 Y79.0 E329.99097
G1 X68.0 Y80.0 E330.3509
G1 X70.666664 Y80.0 E330.9109
G1 X72.0 Y79.0 E331.2609
G1 X69.333336 Y75.0 E331.64682
G1 X70.666664 Y74.0 E332.00674
G1 X72.0 Y74.0 E332.28674
G1 X72.0 Y74.0
G1 X73.333336 Y74.0 E332.59378
G1 X74.666664 Y75.0 E332.9438
G1 X72.0 Y79.0 E333.3297
G1 X73.333336 Y80.0 E333.68964
G1 X76.0 Y80.0 E334.24963
G1 X77.333336 Y79.0 E334.59964
G1 X74.666664 Y75.0 E334.98557
G1 X76.0 Y74.0 E335.3455
G1 X77.333336 Y74.0 E335.6255
G1 X77.333336 Y74.0
G1 X78.666664 Y74.0 E335.93253
G1 X80.0 Y75.0 E336.28253
G1 X77.333336 Y79.0 E336.66846
G1 X78.666664 Y80.0 E337.02838
G1 X81.333336 Y80.0 E337.58838
G1 X82.666664 Y79.0 E337.9384
G1 X80.0 Y75.0 E338.3243
G1 X81.333336 Y74.0 E338.68423
G1 X82.666664 Y74.0 E338.96423
G1 X82.666664 Y74.0
G1 X84.0 Y74.0 E339.27127
G1 X85.333336 Y75.0 E339.62128
G1 X82.666664 Y79.0 E340.0072
G1 X84.0 Y80.0 E340.36713
G1 X86.666664 Y80.0 E340.92712
G1 X88.0 Y79.0 E341.27713
G1 X85.333336 Y75.0 E341.66306
G1 X86.666664 Y74.0 E342.02298
G1 X88.0 Y74.0 E342.30298
G1 X88.0 Y74.0
G1 X89.333336 Y74.0 E342.61002
G1 X90.666664 Y75.0 E342.96002
G1 X88.0 Y79.0 E343.34595
G1 X89.333336 Y80.0 E343.70587
G1 X92.0 Y80.0 E344.26587
G1 X93.333336 Y79.0 E344.61588
G1 X90.666664 Y75.0 E345.0018
G1 X92.0 Y74.0 E345.36172
G1 X93.333336 Y74.0 E345.64172
G1 X93.333336 Y74.0
G1 X94.666664 Y74.0 E345.74957
G1 X96.0 Y75.0 E345.8829
G1 X93.333336 Y79.0 E346.89594
G1 X94.666664 Y80.0 E347.03305
G1 X97.333336 Y80.0 E347.2464
G1 X98.666664 Y79.0 E347.37973
G1 X96.0 Y75.0 E348.39276
G1 X97.333336 Y74.0 E348.52988
G1 X98.666664 Y74.0 E348.63654
G1 X98.666664 Y74.0
G1 X100.0 Y74.0 E348.7444
G1 X101.333336 Y75.0 E348.87772
G1 X98.666664 Y79.0 E349.89075
G1 X100.0 Y80.0 E350.02786
G1 X102.666664 Y80.0 E350.24118
G1 X104.0 Y79.0 E350.3745
G1 X101.333336 Y75.0 E351.38754
G1 X102.666664 Y74.0 E351.52466
G1 X104.0 Y74.0 E351.63132
G1 X104.0 Y74.0
G1 X105.33333 Y74.0 E351.73917
G1 X106.666664 Y75.0 E351.8725
G1 X104.0 Y79.0 E352.88553
G1 X105.33333 Y80.0 E353.02264
G1 X108.0 Y80.0 E353.236
G1 X109.33333 Y79.0 E353.36932
G1 X106.666664 Y75.0 E354.38235
G1 X108.0 Y74.0 E354.51947
G1 X109.33333 Y74.0 E354.62613
G1 X109.33333 Y74.0
G1 X110.666664 Y74.0 E354.73398
G1 X112.0 Y75.0 E354.8673
G1 X109.33333 Y79.0 E355.88034
G1 X110.666664 Y80.0 E356.01746
G1 X113.33333 Y80.0 E356.23077
G1 X114.666664 Y79.0 E356.3641
G1 X112.0 Y75.0 E357.37714
G1 X113.33333 Y74.0 E357.51425
G1 X114.666664 Y74.0 E357.6209
G1 X114.666664 Y74.0
G1 X116.0 Y74.0 E357.72876
G1 X117.33333 Y75.0 E357.8621
G1 X114.666664 Y79.0 E358.87512
G1 X116.0 Y80.0 E359.01224
G1 X118.666664 Y80.0 E359.22556
G1 X120.0 Y79.0 E359.3589
G1 X117.33333 Y75.0 E360.37192
G1 X118.666664 Y74.0 E360.50903
G1 X120.0 Y74.0 E360.6157
G1 X120.0 Y74.0
G1 X121.33333 Y74.0 E360.72354
G1 X122.666664 Y75.0 E360.85687
G1 X120.0 Y79.0 E361.8699
G1 X121.33333 Y80.0 E362.00702
G1 X124.0 Y80.0 E362.22037
G1 X125.33333 Y79.0 E362.3537
G1 X122.666664 Y75.0 E363.36673
G1 X124.0 Y74.0 E363.50385
G1 X125.33333 Y74.0 E363.6105
G1 X125.33333 Y77.0 E363.91116
G1 X125.33333 Y77.0
G1 X124.0 Y77.0 E364.019
G1 X122.666664 Y78.0 E364.15234
G1 X125.33333 Y82.0 E365.16537
G1 X124.0 Y83.0 E365.3025
G1 X121.33333 Y83.0 E365.51584
G1 X120.0 Y82.0 E365.64917
G1 X122.666664 Y78.0 E366.6622
G1 X121.33333 Y77.0 E366.79932
G1 X120.0 Y77.0 E366.90598
G1 X120.0 Y77.0
G1 X118.666664 Y77.0 E367.01382
G1 X117.33333 Y78.0 E367.14716
G1 X120.0 Y82.0 E368.1602
G1 X118.666664 Y83.0 E368.2973
G1 X116.0 Y83.0 E368.51062
G1 X114.666664 Y82.0 E368.64395
G1 X117.33333 Y78.0 E369.65698
G1 X116.0 Y77.0 E369.7941
G1 X114.666664 Y77.0 E369.90076
G1 X114.666664 Y77.0
G1 X113.33333 Y77.0 E370.0086
G1 X112.0 Y78.0 E370.14194
G1 X114.666664 Y82.0 E371.15497
G1 X113.33333 Y83.0 E371.29208
G1 X110.666664 Y83.0 E371.5054
G1 X109.33333 Y82.0 E371.63873
G1 X112.0 Y78.0 E372.65176
G1 X110.666664 Y77.0 E372.78888
G1 X109.33333 Y77.0 E372.89554
G1 X109.33333 Y77.0
G1 X108.0 Y77.0 E373.0034
G1 X106.666664 Y78.0 E373.13672
G1 X109.33333 Y82.0 E374.14975
G1 X108.0 Y83.0 E374.28687
G1 X105.33333 Y83.0 E374.5002
G1 X104.0 Y82.0 E374.63354
G1 X106.666664 Y78.0 E375.64658
G1 X105.33333 Y77.0 E375.7837
G1 X104.0 Y77.0 E375.89035
G1 X104.0 Y77.0
G1 X102.666664 Y77.0 E375.9982
G1 X101.333336 Y78.0 E376.13153
G1 X104.0 Y82.0 E377.14456
G1 X102.666664 Y83.0 E377.28168
G1 X100.0 Y83.0 E377.495
G1 X98.666664 Y82.0 E377.62833
G1 X101.333336 Y78.0 E378.64136
G1 X100.0 Y77.0 E378.77847
G1 X98.666664 Y77.0 E378.88513
G1 X98.666664 Y77.0
G1 X97.333336 Y77.0 E378.99298
G1 X96.0 Y78.0 E379.1263
G1 X98.666664 Y82.0 E380.13934
G1 X97.333336 Y83.0 E380.27646
G1 X94.666664 Y83.0 E380.4898
G1 X93.333336 Y82.0 E380.62314
G1 X96.0 Y78.0 E381.63617
G1 X94.666664 Y77.0 E381.7733
G1 X93.333336 Y77.0 E381.87994
G1 X93.333336 Y77.0
G1 X92.0 Y77.0 E382.18698
G1 X90.666664 Y78.0 E382.537
G1 X93.333336 Y82.0 E382.9229
G1 X92.0 Y83.0 E383.28284
G1 X89.333336 Y83.0 E383.84283
G1 X88.0 Y82.0 E384.19284
G1 X90.666664 Y78.0 E384.57877
G1 X89.333336 Y77.0 E384.9387
G1 X88.0 Y77.0 E385.2187
G1 X88.0 Y77.0
G1 X86.666664 Y77.0 E385.52573
G1 X85.333336 Y78.0 E385.87573
G1 X88.0 Y82.0 E386.26166
G1 X86.666664 Y83.0 E386.62158
G1 X84.0 Y83.0 E387.18158
G1 X82.666664 Y82.0 E387.5316
G1 X85.333336 Y78.0 E387.9175
G1 X84.0 Y77.0 E388.27744
G1 X82.666664 Y77.0 E388.55743
G1 X82.666664 Y77.0
G1 X81.333336 Y77.0 E388.86447
G1 X80.0 Y78.0 E389.21448
G1 X82.666664 Y82.0 E389.6004
G1 X81.333336 Y83.0 E389.96033
G1 X78.666664 Y83.0 E390.52032
G1 X77.333336 Y82.0 E390.87033
G1 X80.0 Y78.0 E391.25626
G1 X78.666664 Y77.0 E391.61618
G1 X77.333336 Y77.0 E391.89618
G1 X77.333336 Y77.0
G1 X76.0 Y77.0 E392.20322
G1 X74.666664 Y78.0 E392.55322
G1 X77.333336 Y82.0 E392.93915
G1 X76.0 Y83.0 E393.29907
G1 X73.333336 Y83.0 E393.85907
G1 X72.0 Y82.0 E394.20908
G1 X74.666664 Y78.0 E394.595
G1 X73.333336 Y77.0 E394.95493
G1 X72.0 Y77.0 E395.23492
G1 X72.0 Y77.0
G1 X70.666664 Y77.0 E395.54196
G1 X69.333336 Y78.0 E395.89197
G1 X72.0 Y82.0 E396.2779
G1 X70.666664 Y83.0 E396.63782
G1 X68.0 Y83.0 E397.1978
G1 X66.666664 Y82.0 E397.54782
G1 X69.333336 Y78.0 E397.93375
G1 X68.0 Y77.0 E398.29367
G1 X66.666664 Y77.0 E398.57367
G1 X66.666664 Y80.0 E398.87433
G1 X66.666664 Y80.0
G1 X68.0 Y80.0 E399.18137
G1 X69.333336 Y81.0 E399.53137
G1 X66.666664 Y85.0 E399.9173
G1 X68.0 Y86.0 E400.27722
G1 X70.666664 Y86.0 E400.83722
G1 X72.0 Y85.0 E401.18723
G1 X69.333336 Y81.0 E401.57315
G1 X70.666664 Y80.0 E401.93307
G1 X72.0 Y80.0 E402.21307
G1 X72.0 Y80.0
G1 X73.333336 Y80.0 E402.5201
G1 X74.666664 Y81.0 E402.87012
G1 X72.0 Y85.0 E403.25604
G1 X73.333336 Y86.0 E403.61597
G1 X76.0 Y86.0 E404.17596
G1 X77.333336 Y85.0 E404.52597
G1 X74.666664 Y81.0 E404.9119
G1 X76.0 Y80.0 E405.27182
G1 X77.333336 Y80.0 E405.55182
G1 X77.333336 Y80.0
G1 X78.666664 Y80.0 E405.85886
G1 X80.0 Y81.0 E406.20886
G1 X77.333336 Y85.0 E406.5948
G1 X78.666664 Y86.0 E406.9547
G1 X81.333336 Y86.0 E407.5147
G1 X82.666664 Y85.0 E407.86472
G1 X80.0 Y81.0 E408.25064
G1 X81.333336 Y80.0 E408.61057
G1 X82.666664 Y80.0 E408.89056
G1 X82.666664 Y80.0
G1 X84.0 Y80.0 E409.1976
G1 X85.333336 Y81.0 E409.5476
G1 X82.666664 Y85.0 E409.93353
G1 X84.0 Y86.0 E410.29346
G1 X86.666664 Y86.0 E410.85345
G1 X88.0 Y85.0 E411.20346
G1 X85.333336 Y81.0 E411.5894
G1 X86.666664 Y80.0 E411.9493
G1 X88.0 Y80.0 E412.2293
G1 X88.0 Y80.0
G1 X89.333336 Y80.0 E412.53635
G1 X90.666664 Y81.0 E412.88635
G1 X88.0 Y85.0 E413.27228
G1 X89.333336 Y86.0 E413.6322
G1 X92.0 Y86.0 E414.1922
G1 X93.333336 Y85.0 E414.5422
G1 X90.666664 Y81.0 E414.92813
G1 X92.0 Y80.0 E415.28806
G1 X93.333336 Y80.0 E415.56805
G1 X93.333336 Y80.0
G1 X94.666664 Y80.0 E415.6759
G1 X96.0 Y81.0 E415.80923
G1 X93.333336 Y85.0 E416.82227
G1 X94.666664 Y86.0 E416.95938
G1 X97.333336 Y86.0 E417.17273
G1 X98.666664 Y85.0 E417.30606
G1 X96.0 Y81.0 E418.3191
G1 X97.333336 Y80.0 E418.4562
G1 X98.666664 Y80.0 E418.56287
G1 X98.666664 Y80.0
G1 X100.0 Y80.0 E418.67072
G1 X101.333336 Y81.0 E418.80405
G1 X98.666664 Y85.0 E419.81708
G1 X100.0 Y86.0 E419.9542
G1 X102.666664 Y86.0 E420.1675
G1 X104.0 Y85.0 E420.30084
G1 X101.333336 Y81.0 E421.31387
G1 X102.666664 Y80.0 E421.451
G1 X104.0 Y80.0 E421.55765
G1 X104.0 Y80.0
G1 X105.33333 Y80.0 E421.6655
G1 X106.666664 Y81.0 E421.79883
G1 X104.0 Y85.0 E422.81186
G1 X105.33333 Y86.0 E422.94897
G1 X108.0 Y86.0 E423.16232
G1 X109.33333 Y85.0 E423.29565
G1 X106.666664 Y81.0 E424.3087
G1 X108.0 Y80.0 E424.4458
G1 X109.33333 Y80.0 E424.55246
G1 X109.33333 Y80.0
G1 X110.666664 Y80.0 E424.6603
G1 X112.0 Y81.0 E424.79364
G1 X109.33333 Y85.0 E425.80667
G1 X110.666664 Y86.0 E425.9438
G1 X113.33333 Y86.0 E426.1571
G1 X114.666664 Y85.0 E426.29044
G1 X112.0 Y81.0 E427.30347
G1 X113.33333 Y80.0 E427.44058
G1 X114.666664 Y80.0 E427.54724
G1 X114.666664 Y80.0
G1 X116.0 Y80.0 E427.6551
G1 X117.33333 Y81.0 E427.78842
G1 X114.666664 Y85.0 E428.80145
G1 X116.0 Y86.0 E428.93857
G1 X118.666664 Y86.0 E429.1519
G1 X120.0 Y85.0 E429.28522
G1 X117.33333 Y81.0 E430.29825
G1 X118.666664 Y80.0 E430.43536
G1 X120.0 Y80.0 E430.54202
G1 X120.0 Y80.0
G1 X121.33333 Y80.0 E430.64987
G1 X122.666664 Y81.0 E430.7832
G1 X120.0 Y85.0 E431.79623
G1 X121.33333 Y86.0 E431.93335
G1 X124.0 Y86.0 E432.1467
G1 X125.33333 Y85.0 E432.28003
G1 X122.666664 Y81.0 E433.29306
G1 X124.0 Y80.0 E433.43018
G1 X125.33333 Y80.0 E433.53683
G1 X125.33333 Y83.0 E433.8375
G1 X125.33333 Y83.0
G1 X124.0 Y83.0 E433.94534
G1 X122.666664 Y84.0 E434.07867
G1 X125.33333 Y88.0 E435.0917
G1 X124.0 Y89.0 E435.22882
G1 X121.33333 Y89.0 E435.44217
G1 X120.0 Y88.0 E435.5755
G1 X122.666664 Y84.0 E436.58853
G1 X121.33333 Y83.0 E436.72565
G1 X120.0 Y83.0 E436.8323
G1 X120.0 Y83.0
G1 X118.666664 Y83.0 E436.94016
G1 X117.33333 Y84.0 E437.0735
G1 X120.0 Y88.0 E438.08652
G1 X118.666664 Y89.0 E438.22363
G1 X116.0 Y89.0 E438.43695
G1 X114.666664 Y88.0 E438.57028
G1 X117.33333 Y84.0 E439.5833
G1 X116.0 Y83.0 E439.72043
G1 X114.666664 Y83.0 E439.8271
G1 X114.666664 Y83.0
G1 X113.33333 Y83.0 E439.93494
G1 X112.0 Y84.0 E440.06827
G1 X114.666664 Y88.0 E441.0813
G1 X113.33333 Y89.0 E441.2184
G1 X110.666664 Y89.0 E441.43173
G1 X109.33333 Y88.0 E441.56506
G1 X112.0 Y84.0 E442.5781
G1 X110.666664 Y83.0 E442.7152
G1 X109.33333 Y83.0 E442.82187
G1 X109.33333 Y83.0
G1 X108.0 Y83.0 E442.92972
G1 X106.666664 Y84.0 E443.06305
G1 X109.33333 Y88.0 E444.07608
G1 X108.0 Y89.0 E444.2132
G1 X105.33333 Y89.0 E444.42654
G1 X104.0 Y88.0 E444.55988
G1 X106.666664 Y84.0 E445.5729
G1 X105.33333 Y83.0 E445.71002
G1 X104.0 Y83.0 E445.81668
G1 X104.0 Y83.0
G1 X102.666664 Y83.0 E445.92453
G1 X101.333336 Y84.0 E446.05786
G1 X104.0 Y88.0 E447.0709
G1 X102.666664 Y89.0 E447.208
G1 X100.0 Y89.0 E447.42133
G1 X98.666664 Y88.0 E447.55466
G1 X101.333336 Y84.0 E448.5677
G1 X100.0 Y83.0 E448.7048
G1 X98.666664 Y83.0 E448.81146
G1 X98.666664 Y83.0
G1 X97.333336 Y83.0 E448.9193
G1 X96.0 Y84.0 E449.05264
G1 X98.666664 Y88.0 E450.06567
G1 X97.333336 Y89.0 E450.2028
G1 X94.666664 Y89.0 E450.41614
G1 X93.333336 Y88.0 E450.54947
G1 X96.0 Y84.0 E451.5625
G1 X94.666664 Y83.0 E451.69962
G1 X93.333336 Y83.0 E451.80627
G1 X93.333336 Y83.0
G1 X92.0 Y83.0 E452.1133
G1 X90.666664 Y84.0 E452.46332
G1 X93.333336 Y88.0 E452.84924
G1 X92.0 Y89.0 E453.20917
G1 X89.333336 Y89.0 E453.76917
G1 X88.0 Y88.0 E454.11917
G1 X90.666664 Y84.0 E454.5051
G1 X89.333336 Y83.0 E454.86502
G1 X88.0 Y83.0 E455.14502
G1 X88.0 Y83.0
G1 X86.666664 Y83.0 E455.45206
G1 X85.333336 Y84.0 E455.80206
G1 X88.0 Y88.0 E456.188
G1 X86.666664 Y89.0 E456.5479
G1 X84.0 Y89.0 E457.1079
G1 X82.666664 Y88.0 E457.45792
G1 X85.333336 Y84.0 E457.84384
G1 X84.0 Y83.0 E458.20377
G1 X82.666664 Y83.0 E458.48376
G1 X82.666664 Y83.0
G1 X81.333336 Y83.0 E458.7908
G1 X80.0 Y84.0 E459.1408
G1 X82.666664 Y88.0 E459.52673
G1 X81.333336 Y89.0 E459.88666
G1 X78.666664 Y89.0 E460.44666
G1 X77.333336 Y88.0 E460.79666
G1 X80.0 Y84.0 E461.1826
G1 X78.666664 Y83.0 E461.5425
G1 X77.333336 Y83.0 E461.8225
G1 X77.333336 Y83.0
G1 X76.0 Y83.0 E462.12955
G1 X74.666664 Y84.0 E462.47955
G1 X77.333336 Y88.0 E462.86548
G1 X76.0 Y89.0 E463.2254
G1 X73.333336 Y89.0 E463.7854
G1 X72.0 Y88.0 E464.1354
G1 X74.666664 Y84.0 E464.52133
G1 X73.333336 Y83.0 E464.88126
G1 X72.0 Y83.0 E465.16125
G1 X72.0 Y83.0
G1 X70.666664 Y83.0 E465.4683
G1 X69.333336 Y84.0 E465.8183
G1 X72.0 Y88.0 E466.20422
G1 X70.666664 Y89.0 E466.56415
G1 X68.0 Y89.0 E467.12415
G1 X66.666664 Y88.0 E467.47415
G1 X69.333336 Y84.0 E467.86008
G1 X68.0 Y83.0 E468.22
G1 X66.666664 Y83.0 E468.5
G1 X66.666664 Y86.0 E468.80066
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
