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
G1 F200 E3              ;extrude 3mm of feed stock
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
G1 X68.0 Y50.0 E49.342407
G1 X69.333336 Y51.0 E49.459072
G1 X66.666664 Y55.0 E50.134434
G1 X68.0 Y56.0 E50.254414
G1 X70.666664 Y56.0 E50.44108
G1 X72.0 Y55.0 E50.557747
G1 X69.333336 Y51.0 E51.23311
G1 X70.666664 Y50.0 E51.35309
G1 X72.0 Y50.0 E51.446423
G1 X72.0 Y50.0
G1 X73.333336 Y50.0 E51.54877
G1 X74.666664 Y51.0 E51.665436
G1 X72.0 Y55.0 E52.340797
G1 X73.333336 Y56.0 E52.460777
G1 X76.0 Y56.0 E52.647446
G1 X77.333336 Y55.0 E52.76411
G1 X74.666664 Y51.0 E53.439472
G1 X76.0 Y50.0 E53.559452
G1 X77.333336 Y50.0 E53.652786
G1 X77.333336 Y50.0
G1 X78.666664 Y50.0 E53.755135
G1 X80.0 Y51.0 E53.871803
G1 X77.333336 Y55.0 E54.547165
G1 X78.666664 Y56.0 E54.667145
G1 X81.333336 Y56.0 E54.853813
G1 X82.666664 Y55.0 E54.970478
G1 X80.0 Y51.0 E55.64584
G1 X81.333336 Y50.0 E55.76582
G1 X82.666664 Y50.0 E55.859154
G1 X82.666664 Y50.0
G1 X84.0 Y50.0 E55.961502
G1 X85.333336 Y51.0 E56.078167
G1 X82.666664 Y55.0 E56.75353
G1 X84.0 Y56.0 E56.87351
G1 X86.666664 Y56.0 E57.060173
G1 X88.0 Y55.0 E57.17684
G1 X85.333336 Y51.0 E57.852203
G1 X86.666664 Y50.0 E57.972183
G1 X88.0 Y50.0 E58.065517
G1 X88.0 Y50.0
G1 X89.333336 Y50.0 E58.167866
G1 X90.666664 Y51.0 E58.28453
G1 X88.0 Y55.0 E58.959892
G1 X89.333336 Y56.0 E59.079872
G1 X92.0 Y56.0 E59.26654
G1 X93.333336 Y55.0 E59.383205
G1 X90.666664 Y51.0 E60.058567
G1 X92.0 Y50.0 E60.178547
G1 X93.333336 Y50.0 E60.27188
G1 X93.333336 Y50.0
G1 X94.666664 Y50.0 E60.37423
G1 X96.0 Y51.0 E60.4909
G1 X93.333336 Y55.0 E61.16626
G1 X94.666664 Y56.0 E61.28624
G1 X97.333336 Y56.0 E61.472908
G1 X98.666664 Y55.0 E61.589573
G1 X96.0 Y51.0 E62.264935
G1 X97.333336 Y50.0 E62.384914
G1 X98.666664 Y50.0 E62.47825
G1 X98.666664 Y50.0
G1 X100.0 Y50.0 E62.580597
G1 X101.333336 Y51.0 E62.69726
G1 X98.666664 Y55.0 E63.372623
G1 X100.0 Y56.0 E63.492603
G1 X102.666664 Y56.0 E63.679268
G1 X104.0 Y55.0 E63.795937
G1 X101.333336 Y51.0 E64.4713
G1 X102.666664 Y50.0 E64.59128
G1 X104.0 Y50.0 E64.68461
G1 X104.0 Y50.0
G1 X105.33333 Y50.0 E64.78696
G1 X106.666664 Y51.0 E64.903625
G1 X104.0 Y55.0 E65.57899
G1 X105.33333 Y56.0 E65.69897
G1 X108.0 Y56.0 E65.885635
G1 X109.33333 Y55.0 E66.002304
G1 X106.666664 Y51.0 E66.677666
G1 X108.0 Y50.0 E66.797646
G1 X109.33333 Y50.0 E66.890976
G1 X109.33333 Y50.0
G1 X110.666664 Y50.0 E66.993324
G1 X112.0 Y51.0 E67.10999
G1 X109.33333 Y55.0 E67.785355
G1 X110.666664 Y56.0 E67.905334
G1 X113.33333 Y56.0 E68.092
G1 X114.666664 Y55.0 E68.20867
G1 X112.0 Y51.0 E68.88403
G1 X113.33333 Y50.0 E69.00401
G1 X114.666664 Y50.0 E69.09734
G1 X114.666664 Y50.0
G1 X116.0 Y50.0 E69.19969
G1 X117.33333 Y51.0 E69.31636
G1 X114.666664 Y55.0 E69.99172
G1 X116.0 Y56.0 E70.1117
G1 X118.666664 Y56.0 E70.29837
G1 X120.0 Y55.0 E70.41504
G1 X117.33333 Y51.0 E71.0904
G1 X118.666664 Y50.0 E71.21038
G1 X120.0 Y50.0 E71.30371
G1 X120.0 Y50.0
G1 X121.33333 Y50.0 E71.40606
G1 X122.666664 Y51.0 E71.52273
G1 X120.0 Y55.0 E72.19809
G1 X121.33333 Y56.0 E72.31807
G1 X124.0 Y56.0 E72.50474
G1 X125.33333 Y55.0 E72.62141
G1 X122.666664 Y51.0 E73.29677
G1 X124.0 Y50.0 E73.41675
G1 X125.33333 Y50.0 E73.51008
G1 X125.33333 Y53.0 E73.72054
G1 X125.33333 Y53.0
G1 X124.0 Y53.0 E73.82289
G1 X122.666664 Y54.0 E73.93956
G1 X125.33333 Y58.0 E74.61492
G1 X124.0 Y59.0 E74.7349
G1 X121.33333 Y59.0 E74.92157
G1 X120.0 Y58.0 E75.03824
G1 X122.666664 Y54.0 E75.7136
G1 X121.33333 Y53.0 E75.83358
G1 X120.0 Y53.0 E75.92691
G1 X120.0 Y53.0
G1 X118.666664 Y53.0 E76.02926
G1 X117.33333 Y54.0 E76.14593
G1 X120.0 Y58.0 E76.82129
G1 X118.666664 Y59.0 E76.94127
G1 X116.0 Y59.0 E77.12794
G1 X114.666664 Y58.0 E77.244606
G1 X117.33333 Y54.0 E77.91997
G1 X116.0 Y53.0 E78.03995
G1 X114.666664 Y53.0 E78.13328
G1 X114.666664 Y53.0
G1 X113.33333 Y53.0 E78.23563
G1 X112.0 Y54.0 E78.352295
G1 X114.666664 Y58.0 E79.02766
G1 X113.33333 Y59.0 E79.14764
G1 X110.666664 Y59.0 E79.334305
G1 X109.33333 Y58.0 E79.45097
G1 X112.0 Y54.0 E80.126335
G1 X110.666664 Y53.0 E80.246315
G1 X109.33333 Y53.0 E80.339645
G1 X109.33333 Y53.0
G1 X108.0 Y53.0 E80.44199
G1 X106.666664 Y54.0 E80.55866
G1 X109.33333 Y58.0 E81.234024
G1 X108.0 Y59.0 E81.354004
G1 X105.33333 Y59.0 E81.54067
G1 X104.0 Y58.0 E81.65734
G1 X106.666664 Y54.0 E82.3327
G1 X105.33333 Y53.0 E82.45268
G1 X104.0 Y53.0 E82.54601
G1 X104.0 Y53.0
G1 X102.666664 Y53.0 E82.64836
G1 X101.333336 Y54.0 E82.76503
G1 X104.0 Y58.0 E83.44039
G1 X102.666664 Y59.0 E83.56037
G1 X100.0 Y59.0 E83.74704
G1 X98.666664 Y58.0 E83.86371
G1 X101.333336 Y54.0 E84.53907
G1 X100.0 Y53.0 E84.65905
G1 X98.666664 Y53.0 E84.75238
G1 X98.666664 Y53.0
G1 X97.333336 Y53.0 E84.85473
G1 X96.0 Y54.0 E84.9714
G1 X98.666664 Y58.0 E85.64676
G1 X97.333336 Y59.0 E85.76674
G1 X94.666664 Y59.0 E85.95341
G1 X93.333336 Y58.0 E86.070076
G1 X96.0 Y54.0 E86.74544
G1 X94.666664 Y53.0 E86.86542
G1 X93.333336 Y53.0 E86.95875
G1 X93.333336 Y53.0
G1 X92.0 Y53.0 E87.0611
G1 X90.666664 Y54.0 E87.177765
G1 X93.333336 Y58.0 E87.85313
G1 X92.0 Y59.0 E87.97311
G1 X89.333336 Y59.0 E88.159775
G1 X88.0 Y58.0 E88.27644
G1 X90.666664 Y54.0 E88.951805
G1 X89.333336 Y53.0 E89.071785
G1 X88.0 Y53.0 E89.165115
G1 X88.0 Y53.0
G1 X86.666664 Y53.0 E89.26746
G1 X85.333336 Y54.0 E89.38413
G1 X88.0 Y58.0 E90.059494
G1 X86.666664 Y59.0 E90.179474
G1 X84.0 Y59.0 E90.36614
G1 X82.666664 Y58.0 E90.48281
G1 X85.333336 Y54.0 E91.15817
G1 X84.0 Y53.0 E91.27815
G1 X82.666664 Y53.0 E91.37148
G1 X82.666664 Y53.0
G1 X81.333336 Y53.0 E91.47383
G1 X80.0 Y54.0 E91.5905
G1 X82.666664 Y58.0 E92.26586
G1 X81.333336 Y59.0 E92.38584
G1 X78.666664 Y59.0 E92.57251
G1 X77.333336 Y58.0 E92.68918
G1 X80.0 Y54.0 E93.36454
G1 X78.666664 Y53.0 E93.48452
G1 X77.333336 Y53.0 E93.57785
G1 X77.333336 Y53.0
G1 X76.0 Y53.0 E93.6802
G1 X74.666664 Y54.0 E93.79687
G1 X77.333336 Y58.0 E94.47223
G1 X76.0 Y59.0 E94.59221
G1 X73.333336 Y59.0 E94.77888
G1 X72.0 Y58.0 E94.895546
G1 X74.666664 Y54.0 E95.57091
G1 X73.333336 Y53.0 E95.69089
G1 X72.0 Y53.0 E95.78422
G1 X72.0 Y53.0
G1 X70.666664 Y53.0 E95.886566
G1 X69.333336 Y54.0 E96.003235
G1 X72.0 Y58.0 E96.6786
G1 X70.666664 Y59.0 E96.79858
G1 X68.0 Y59.0 E96.985245
G1 X66.666664 Y58.0 E97.10191
G1 X69.333336 Y54.0 E97.777275
G1 X68.0 Y53.0 E97.897255
G1 X66.666664 Y53.0 E97.990585
G1 X66.666664 Y56.0 E98.20105
G1 X66.666664 Y56.0
G1 X68.0 Y56.0 E98.3034
G1 X69.333336 Y57.0 E98.42007
G1 X66.666664 Y61.0 E99.09543
G1 X68.0 Y62.0 E99.21541
G1 X70.666664 Y62.0 E99.40208
G1 X72.0 Y61.0 E99.518745
G1 X69.333336 Y57.0 E100.19411
G1 X70.666664 Y56.0 E100.31409
G1 X72.0 Y56.0 E100.40742
G1 X72.0 Y56.0
G1 X73.333336 Y56.0 E100.509766
G1 X74.666664 Y57.0 E100.626434
G1 X72.0 Y61.0 E101.301796
G1 X73.333336 Y62.0 E101.421776
G1 X76.0 Y62.0 E101.608444
G1 X77.333336 Y61.0 E101.72511
G1 X74.666664 Y57.0 E102.400475
G1 X76.0 Y56.0 E102.520454
G1 X77.333336 Y56.0 E102.613785
G1 X77.333336 Y56.0
G1 X78.666664 Y56.0 E102.71613
G1 X80.0 Y57.0 E102.8328
G1 X77.333336 Y61.0 E103.50816
G1 X78.666664 Y62.0 E103.62814
G1 X81.333336 Y62.0 E103.81481
G1 X82.666664 Y61.0 E103.93148
G1 X80.0 Y57.0 E104.60684
G1 X81.333336 Y56.0 E104.72682
G1 X82.666664 Y56.0 E104.82015
G1 X82.666664 Y56.0
G1 X84.0 Y56.0 E104.9225
G1 X85.333336 Y57.0 E105.03917
G1 X82.666664 Y61.0 E105.71453
G1 X84.0 Y62.0 E105.83451
G1 X86.666664 Y62.0 E106.02118
G1 X88.0 Y61.0 E106.13785
G1 X85.333336 Y57.0 E106.81321
G1 X86.666664 Y56.0 E106.93319
G1 X88.0 Y56.0 E107.02652
G1 X88.0 Y56.0
G1 X89.333336 Y56.0 E107.12887
G1 X90.666664 Y57.0 E107.24554
G1 X88.0 Y61.0 E107.9209
G1 X89.333336 Y62.0 E108.04088
G1 X92.0 Y62.0 E108.22755
G1 X93.333336 Y61.0 E108.344215
G1 X90.666664 Y57.0 E109.01958
G1 X92.0 Y56.0 E109.13956
G1 X93.333336 Y56.0 E109.23289
G1 X93.333336 Y56.0
G1 X94.666664 Y56.0 E109.335236
G1 X96.0 Y57.0 E109.451904
G1 X93.333336 Y61.0 E110.127266
G1 X94.666664 Y62.0 E110.247246
G1 X97.333336 Y62.0 E110.433914
G1 X98.666664 Y61.0 E110.55058
G1 X96.0 Y57.0 E111.225945
G1 X97.333336 Y56.0 E111.345924
G1 X98.666664 Y56.0 E111.439255
G1 X98.666664 Y56.0
G1 X100.0 Y56.0 E111.5416
G1 X101.333336 Y57.0 E111.65827
G1 X98.666664 Y61.0 E112.33363
G1 X100.0 Y62.0 E112.45361
G1 X102.666664 Y62.0 E112.64028
G1 X104.0 Y61.0 E112.75695
G1 X101.333336 Y57.0 E113.43231
G1 X102.666664 Y56.0 E113.55229
G1 X104.0 Y56.0 E113.64562
G1 X104.0 Y56.0
G1 X105.33333 Y56.0 E113.74797
G1 X106.666664 Y57.0 E113.86464
G1 X104.0 Y61.0 E114.54
G1 X105.33333 Y62.0 E114.65998
G1 X108.0 Y62.0 E114.84665
G1 X109.33333 Y61.0 E114.96332
G1 X106.666664 Y57.0 E115.63868
G1 X108.0 Y56.0 E115.75866
G1 X109.33333 Y56.0 E115.85199
G1 X109.33333 Y56.0
G1 X110.666664 Y56.0 E115.95434
G1 X112.0 Y57.0 E116.07101
G1 X109.33333 Y61.0 E116.74637
G1 X110.666664 Y62.0 E116.86635
G1 X113.33333 Y62.0 E117.05302
G1 X114.666664 Y61.0 E117.169685
G1 X112.0 Y57.0 E117.84505
G1 X113.33333 Y56.0 E117.96503
G1 X114.666664 Y56.0 E118.05836
G1 X114.666664 Y56.0
G1 X116.0 Y56.0 E118.160706
G1 X117.33333 Y57.0 E118.277374
G1 X114.666664 Y61.0 E118.952736
G1 X116.0 Y62.0 E119.072716
G1 X118.666664 Y62.0 E119.259384
G1 X120.0 Y61.0 E119.37605
G1 X117.33333 Y57.0 E120.051414
G1 X118.666664 Y56.0 E120.171394
G1 X120.0 Y56.0 E120.264725
G1 X120.0 Y56.0
G1 X121.33333 Y56.0 E120.36707
G1 X122.666664 Y57.0 E120.48374
G1 X120.0 Y61.0 E121.1591
G1 X121.33333 Y62.0 E121.27908
G1 X124.0 Y62.0 E121.46575
G1 X125.33333 Y61.0 E121.58242
G1 X122.666664 Y57.0 E122.25778
G1 X124.0 Y56.0 E122.37776
G1 X125.33333 Y56.0 E122.47109
G1 X125.33333 Y59.0 E122.68156
G1 X125.33333 Y59.0
G1 X124.0 Y59.0 E122.783905
G1 X122.666664 Y60.0 E122.90057
G1 X125.33333 Y64.0 E123.575935
G1 X124.0 Y65.0 E123.695915
G1 X121.33333 Y65.0 E123.88258
G1 X120.0 Y64.0 E123.99925
G1 X122.666664 Y60.0 E124.674614
G1 X121.33333 Y59.0 E124.79459
G1 X120.0 Y59.0 E124.887924
G1 X120.0 Y59.0
G1 X118.666664 Y59.0 E124.99027
G1 X117.33333 Y60.0 E125.10694
G1 X120.0 Y64.0 E125.7823
G1 X118.666664 Y65.0 E125.90228
G1 X116.0 Y65.0 E126.08895
G1 X114.666664 Y64.0 E126.20562
G1 X117.33333 Y60.0 E126.88098
G1 X116.0 Y59.0 E127.00096
G1 X114.666664 Y59.0 E127.09429
G1 X114.666664 Y59.0
G1 X113.33333 Y59.0 E127.19664
G1 X112.0 Y60.0 E127.31331
G1 X114.666664 Y64.0 E127.98867
G1 X113.33333 Y65.0 E128.10864
G1 X110.666664 Y65.0 E128.2953
G1 X109.33333 Y64.0 E128.41197
G1 X112.0 Y60.0 E129.08734
G1 X110.666664 Y59.0 E129.20732
G1 X109.33333 Y59.0 E129.30066
G1 X109.33333 Y59.0
G1 X108.0 Y59.0 E129.403
G1 X106.666664 Y60.0 E129.51967
G1 X109.33333 Y64.0 E130.19504
G1 X108.0 Y65.0 E130.31502
G1 X105.33333 Y65.0 E130.50168
G1 X104.0 Y64.0 E130.61835
G1 X106.666664 Y60.0 E131.2937
G1 X105.33333 Y59.0 E131.41368
G1 X104.0 Y59.0 E131.50702
G1 X104.0 Y59.0
G1 X102.666664 Y59.0 E131.60936
G1 X101.333336 Y60.0 E131.72603
G1 X104.0 Y64.0 E132.4014
G1 X102.666664 Y65.0 E132.52138
G1 X100.0 Y65.0 E132.70804
G1 X98.666664 Y64.0 E132.8247
G1 X101.333336 Y60.0 E133.50008
G1 X100.0 Y59.0 E133.62006
G1 X98.666664 Y59.0 E133.7134
G1 X98.666664 Y59.0
G1 X97.333336 Y59.0 E133.81573
G1 X96.0 Y60.0 E133.9324
G1 X98.666664 Y64.0 E134.60776
G1 X97.333336 Y65.0 E134.72774
G1 X94.666664 Y65.0 E134.9144
G1 X93.333336 Y64.0 E135.03107
G1 X96.0 Y60.0 E135.70644
G1 X94.666664 Y59.0 E135.82642
G1 X93.333336 Y59.0 E135.91975
G1 X93.333336 Y59.0
G1 X92.0 Y59.0 E136.0221
G1 X90.666664 Y60.0 E136.13876
G1 X93.333336 Y64.0 E136.81413
G1 X92.0 Y65.0 E136.93411
G1 X89.333336 Y65.0 E137.12077
G1 X88.0 Y64.0 E137.23744
G1 X90.666664 Y60.0 E137.91281
G1 X89.333336 Y59.0 E138.03279
G1 X88.0 Y59.0 E138.12613
G1 X88.0 Y59.0
G1 X86.666664 Y59.0 E138.22847
G1 X85.333336 Y60.0 E138.34514
G1 X88.0 Y64.0 E139.02051
G1 X86.666664 Y65.0 E139.14049
G1 X84.0 Y65.0 E139.32715
G1 X82.666664 Y64.0 E139.44382
G1 X85.333336 Y60.0 E140.11919
G1 X84.0 Y59.0 E140.23917
G1 X82.666664 Y59.0 E140.3325
G1 X82.666664 Y59.0
G1 X81.333336 Y59.0 E140.43484
G1 X80.0 Y60.0 E140.55151
G1 X82.666664 Y64.0 E141.22687
G1 X81.333336 Y65.0 E141.34685
G1 X78.666664 Y65.0 E141.53351
G1 X77.333336 Y64.0 E141.65018
G1 X80.0 Y60.0 E142.32555
G1 X78.666664 Y59.0 E142.44553
G1 X77.333336 Y59.0 E142.53886
G1 X77.333336 Y59.0
G1 X76.0 Y59.0 E142.6412
G1 X74.666664 Y60.0 E142.75787
G1 X77.333336 Y64.0 E143.43324
G1 X76.0 Y65.0 E143.55322
G1 X73.333336 Y65.0 E143.73988
G1 X72.0 Y64.0 E143.85655
G1 X74.666664 Y60.0 E144.53192
G1 X73.333336 Y59.0 E144.6519
G1 X72.0 Y59.0 E144.74524
G1 X72.0 Y59.0
G1 X70.666664 Y59.0 E144.84758
G1 X69.333336 Y60.0 E144.96425
G1 X72.0 Y64.0 E145.63962
G1 X70.666664 Y65.0 E145.7596
G1 X68.0 Y65.0 E145.94626
G1 X66.666664 Y64.0 E146.06293
G1 X69.333336 Y60.0 E146.7383
G1 X68.0 Y59.0 E146.85828
G1 X66.666664 Y59.0 E146.95161
G1 X66.666664 Y62.0 E147.16208
G1 X66.666664 Y62.0
G1 X68.0 Y62.0 E147.26442
G1 X69.333336 Y63.0 E147.38109
G1 X66.666664 Y67.0 E148.05646
G1 X68.0 Y68.0 E148.17644
G1 X70.666664 Y68.0 E148.3631
G1 X72.0 Y67.0 E148.47977
G1 X69.333336 Y63.0 E149.15514
G1 X70.666664 Y62.0 E149.27512
G1 X72.0 Y62.0 E149.36845
G1 X72.0 Y62.0
G1 X73.333336 Y62.0 E149.4708
G1 X74.666664 Y63.0 E149.58746
G1 X72.0 Y67.0 E150.26282
G1 X73.333336 Y68.0 E150.3828
G1 X76.0 Y68.0 E150.56946
G1 X77.333336 Y67.0 E150.68613
G1 X74.666664 Y63.0 E151.3615
G1 X76.0 Y62.0 E151.48148
G1 X77.333336 Y62.0 E151.57481
G1 X77.333336 Y62.0
G1 X78.666664 Y62.0 E151.67715
G1 X80.0 Y63.0 E151.79382
G1 X77.333336 Y67.0 E152.4692
G1 X78.666664 Y68.0 E152.58917
G1 X81.333336 Y68.0 E152.77583
G1 X82.666664 Y67.0 E152.8925
G1 X80.0 Y63.0 E153.56787
G1 X81.333336 Y62.0 E153.68785
G1 X82.666664 Y62.0 E153.78119
G1 X82.666664 Y62.0
G1 X84.0 Y62.0 E153.88353
G1 X85.333336 Y63.0 E154.0002
G1 X82.666664 Y67.0 E154.67557
G1 X84.0 Y68.0 E154.79555
G1 X86.666664 Y68.0 E154.98221
G1 X88.0 Y67.0 E155.09888
G1 X85.333336 Y63.0 E155.77425
G1 X86.666664 Y62.0 E155.89423
G1 X88.0 Y62.0 E155.98756
G1 X88.0 Y62.0
G1 X89.333336 Y62.0 E156.0899
G1 X90.666664 Y63.0 E156.20657
G1 X88.0 Y67.0 E156.88193
G1 X89.333336 Y68.0 E157.0019
G1 X92.0 Y68.0 E157.18857
G1 X93.333336 Y67.0 E157.30524
G1 X90.666664 Y63.0 E157.9806
G1 X92.0 Y62.0 E158.10059
G1 X93.333336 Y62.0 E158.19392
G1 X93.333336 Y62.0
G1 X94.666664 Y62.0 E158.29626
G1 X96.0 Y63.0 E158.41293
G1 X93.333336 Y67.0 E159.0883
G1 X94.666664 Y68.0 E159.20828
G1 X97.333336 Y68.0 E159.39494
G1 X98.666664 Y67.0 E159.51161
G1 X96.0 Y63.0 E160.18698
G1 X97.333336 Y62.0 E160.30696
G1 X98.666664 Y62.0 E160.4003
G1 X98.666664 Y62.0
G1 X100.0 Y62.0 E160.50264
G1 X101.333336 Y63.0 E160.61931
G1 X98.666664 Y67.0 E161.29468
G1 X100.0 Y68.0 E161.41466
G1 X102.666664 Y68.0 E161.60132
G1 X104.0 Y67.0 E161.71799
G1 X101.333336 Y63.0 E162.39336
G1 X102.666664 Y62.0 E162.51334
G1 X104.0 Y62.0 E162.60667
G1 X104.0 Y62.0
G1 X105.33333 Y62.0 E162.70901
G1 X106.666664 Y63.0 E162.82568
G1 X104.0 Y67.0 E163.50104
G1 X105.33333 Y68.0 E163.62102
G1 X108.0 Y68.0 E163.80768
G1 X109.33333 Y67.0 E163.92435
G1 X106.666664 Y63.0 E164.5997
G1 X108.0 Y62.0 E164.71968
G1 X109.33333 Y62.0 E164.81302
G1 X109.33333 Y62.0
G1 X110.666664 Y62.0 E164.91536
G1 X112.0 Y63.0 E165.03203
G1 X109.33333 Y67.0 E165.7074
G1 X110.666664 Y68.0 E165.82738
G1 X113.33333 Y68.0 E166.01404
G1 X114.666664 Y67.0 E166.1307
G1 X112.0 Y63.0 E166.80606
G1 X113.33333 Y62.0 E166.92604
G1 X114.666664 Y62.0 E167.01938
G1 X114.666664 Y62.0
G1 X116.0 Y62.0 E167.12172
G1 X117.33333 Y63.0 E167.23839
G1 X114.666664 Y67.0 E167.91376
G1 X116.0 Y68.0 E168.03374
G1 X118.666664 Y68.0 E168.2204
G1 X120.0 Y67.0 E168.33707
G1 X117.33333 Y63.0 E169.01244
G1 X118.666664 Y62.0 E169.13242
G1 X120.0 Y62.0 E169.22575
G1 X120.0 Y62.0
G1 X121.33333 Y62.0 E169.3281
G1 X122.666664 Y63.0 E169.44476
G1 X120.0 Y67.0 E170.12012
G1 X121.33333 Y68.0 E170.2401
G1 X124.0 Y68.0 E170.42676
G1 X125.33333 Y67.0 E170.54343
G1 X122.666664 Y63.0 E171.21878
G1 X124.0 Y62.0 E171.33876
G1 X125.33333 Y62.0 E171.4321
G1 X125.33333 Y65.0 E171.64256
G1 X125.33333 Y65.0
G1 X124.0 Y65.0 E171.7449
G1 X122.666664 Y66.0 E171.86157
G1 X125.33333 Y70.0 E172.53693
G1 X124.0 Y71.0 E172.6569
G1 X121.33333 Y71.0 E172.84357
G1 X120.0 Y70.0 E172.96024
G1 X122.666664 Y66.0 E173.63559
G1 X121.33333 Y65.0 E173.75557
G1 X120.0 Y65.0 E173.8489
G1 X120.0 Y65.0
G1 X118.666664 Y65.0 E173.95125
G1 X117.33333 Y66.0 E174.06792
G1 X120.0 Y70.0 E174.74329
G1 X118.666664 Y71.0 E174.86327
G1 X116.0 Y71.0 E175.04993
G1 X114.666664 Y70.0 E175.1666
G1 X117.33333 Y66.0 E175.84195
G1 X116.0 Y65.0 E175.96193
G1 X114.666664 Y65.0 E176.05527
G1 X114.666664 Y65.0
G1 X113.33333 Y65.0 E176.15761
G1 X112.0 Y66.0 E176.27428
G1 X114.666664 Y70.0 E176.94965
G1 X113.33333 Y71.0 E177.06963
G1 X110.666664 Y71.0 E177.25629
G1 X109.33333 Y70.0 E177.37296
G1 X112.0 Y66.0 E178.04832
G1 X110.666664 Y65.0 E178.1683
G1 X109.33333 Y65.0 E178.26164
G1 X109.33333 Y65.0
G1 X108.0 Y65.0 E178.36398
G1 X106.666664 Y66.0 E178.48065
G1 X109.33333 Y70.0 E179.156
G1 X108.0 Y71.0 E179.27599
G1 X105.33333 Y71.0 E179.46265
G1 X104.0 Y70.0 E179.57932
G1 X106.666664 Y66.0 E180.25467
G1 X105.33333 Y65.0 E180.37465
G1 X104.0 Y65.0 E180.46799
G1 X104.0 Y65.0
G1 X102.666664 Y65.0 E180.57033
G1 X101.333336 Y66.0 E180.687
G1 X104.0 Y70.0 E181.36237
G1 X102.666664 Y71.0 E181.48235
G1 X100.0 Y71.0 E181.669
G1 X98.666664 Y70.0 E181.78568
G1 X101.333336 Y66.0 E182.46104
G1 X100.0 Y65.0 E182.58102
G1 X98.666664 Y65.0 E182.67436
G1 X98.666664 Y65.0
G1 X97.333336 Y65.0 E182.7767
G1 X96.0 Y66.0 E182.89337
G1 X98.666664 Y70.0 E183.56873
G1 X97.333336 Y71.0 E183.6887
G1 X94.666664 Y71.0 E183.87537
G1 X93.333336 Y70.0 E183.99203
G1 X96.0 Y66.0 E184.6674
G1 X94.666664 Y65.0 E184.78738
G1 X93.333336 Y65.0 E184.88072
G1 X93.333336 Y65.0
G1 X92.0 Y65.0 E184.98306
G1 X90.666664 Y66.0 E185.09973
G1 X93.333336 Y70.0 E185.7751
G1 X92.0 Y71.0 E185.89508
G1 X89.333336 Y71.0 E186.08174
G1 X88.0 Y70.0 E186.19841
G1 X90.666664 Y66.0 E186.87378
G1 X89.333336 Y65.0 E186.99376
G1 X88.0 Y65.0 E187.0871
G1 X88.0 Y65.0
G1 X86.666664 Y65.0 E187.18944
G1 X85.333336 Y66.0 E187.3061
G1 X88.0 Y70.0 E187.98148
G1 X86.666664 Y71.0 E188.10146
G1 X84.0 Y71.0 E188.28812
G1 X82.666664 Y70.0 E188.40479
G1 X85.333336 Y66.0 E189.08015
G1 X84.0 Y65.0 E189.20013
G1 X82.666664 Y65.0 E189.29347
G1 X82.666664 Y65.0
G1 X81.333336 Y65.0 E189.39581
G1 X80.0 Y66.0 E189.51248
G1 X82.666664 Y70.0 E190.18784
G1 X81.333336 Y71.0 E190.30782
G1 X78.666664 Y71.0 E190.49448
G1 X77.333336 Y70.0 E190.61115
G1 X80.0 Y66.0 E191.28651
G1 X78.666664 Y65.0 E191.4065
G1 X77.333336 Y65.0 E191.49983
G1 X77.333336 Y65.0
G1 X76.0 Y65.0 E191.60217
G1 X74.666664 Y66.0 E191.71884
G1 X77.333336 Y70.0 E192.39421
G1 X76.0 Y71.0 E192.51419
G1 X73.333336 Y71.0 E192.70085
G1 X72.0 Y70.0 E192.81752
G1 X74.666664 Y66.0 E193.49289
G1 X73.333336 Y65.0 E193.61287
G1 X72.0 Y65.0 E193.7062
G1 X72.0 Y65.0
G1 X70.666664 Y65.0 E193.80855
G1 X69.333336 Y66.0 E193.92522
G1 X72.0 Y70.0 E194.60059
G1 X70.666664 Y71.0 E194.72057
G1 X68.0 Y71.0 E194.90723
G1 X66.666664 Y70.0 E195.0239
G1 X69.333336 Y66.0 E195.69926
G1 X68.0 Y65.0 E195.81924
G1 X66.666664 Y65.0 E195.91258
G1 X66.666664 Y68.0 E196.12305
G1 X66.666664 Y68.0
G1 X68.0 Y68.0 E196.22539
G1 X69.333336 Y69.0 E196.34206
G1 X66.666664 Y73.0 E197.01743
G1 X68.0 Y74.0 E197.1374
G1 X70.666664 Y74.0 E197.32407
G1 X72.0 Y73.0 E197.44073
G1 X69.333336 Y69.0 E198.1161
G1 X70.666664 Y68.0 E198.23608
G1 X72.0 Y68.0 E198.32942
G1 X72.0 Y68.0
G1 X73.333336 Y68.0 E198.43176
G1 X74.666664 Y69.0 E198.54843
G1 X72.0 Y73.0 E199.22379
G1 X73.333336 Y74.0 E199.34377
G1 X76.0 Y74.0 E199.53043
G1 X77.333336 Y73.0 E199.6471
G1 X74.666664 Y69.0 E200.32246
G1 X76.0 Y68.0 E200.44244
G1 X77.333336 Y68.0 E200.53578
G1 X77.333336 Y68.0
G1 X78.666664 Y68.0 E200.63812
G1 X80.0 Y69.0 E200.75479
G1 X77.333336 Y73.0 E201.43016
G1 X78.666664 Y74.0 E201.55014
G1 X81.333336 Y74.0 E201.7368
G1 X82.666664 Y73.0 E201.85347
G1 X80.0 Y69.0 E202.52884
G1 X81.333336 Y68.0 E202.64882
G1 X82.666664 Y68.0 E202.74216
G1 X82.666664 Y68.0
G1 X84.0 Y68.0 E202.8445
G1 X85.333336 Y69.0 E202.96117
G1 X82.666664 Y73.0 E203.63654
G1 X84.0 Y74.0 E203.75652
G1 X86.666664 Y74.0 E203.94318
G1 X88.0 Y73.0 E204.05984
G1 X85.333336 Y69.0 E204.73521
G1 X86.666664 Y68.0 E204.8552
G1 X88.0 Y68.0 E204.94853
G1 X88.0 Y68.0
G1 X89.333336 Y68.0 E205.05087
G1 X90.666664 Y69.0 E205.16754
G1 X88.0 Y73.0 E205.8429
G1 X89.333336 Y74.0 E205.96288
G1 X92.0 Y74.0 E206.14954
G1 X93.333336 Y73.0 E206.2662
G1 X90.666664 Y69.0 E206.94157
G1 X92.0 Y68.0 E207.06155
G1 X93.333336 Y68.0 E207.15489
G1 X93.333336 Y68.0
G1 X94.666664 Y68.0 E207.25723
G1 X96.0 Y69.0 E207.3739
G1 X93.333336 Y73.0 E208.04927
G1 X94.666664 Y74.0 E208.16925
G1 X97.333336 Y74.0 E208.35591
G1 X98.666664 Y73.0 E208.47258
G1 X96.0 Y69.0 E209.14795
G1 X97.333336 Y68.0 E209.26793
G1 X98.666664 Y68.0 E209.36127
G1 X98.666664 Y68.0
G1 X100.0 Y68.0 E209.46361
G1 X101.333336 Y69.0 E209.58028
G1 X98.666664 Y73.0 E210.25565
G1 X100.0 Y74.0 E210.37563
G1 X102.666664 Y74.0 E210.56229
G1 X104.0 Y73.0 E210.67896
G1 X101.333336 Y69.0 E211.35432
G1 X102.666664 Y68.0 E211.4743
G1 X104.0 Y68.0 E211.56764
G1 X104.0 Y68.0
G1 X105.33333 Y68.0 E211.66998
G1 X106.666664 Y69.0 E211.78665
G1 X104.0 Y73.0 E212.462
G1 X105.33333 Y74.0 E212.58199
G1 X108.0 Y74.0 E212.76865
G1 X109.33333 Y73.0 E212.88531
G1 X106.666664 Y69.0 E213.56067
G1 X108.0 Y68.0 E213.68065
G1 X109.33333 Y68.0 E213.77399
G1 X109.33333 Y68.0
G1 X110.666664 Y68.0 E213.87633
G1 X112.0 Y69.0 E213.993
G1 X109.33333 Y73.0 E214.66837
G1 X110.666664 Y74.0 E214.78835
G1 X113.33333 Y74.0 E214.975
G1 X114.666664 Y73.0 E215.09167
G1 X112.0 Y69.0 E215.76703
G1 X113.33333 Y68.0 E215.88701
G1 X114.666664 Y68.0 E215.98035
G1 X114.666664 Y68.0
G1 X116.0 Y68.0 E216.08269
G1 X117.33333 Y69.0 E216.19936
G1 X114.666664 Y73.0 E216.87473
G1 X116.0 Y74.0 E216.9947
G1 X118.666664 Y74.0 E217.18137
G1 X120.0 Y73.0 E217.29803
G1 X117.33333 Y69.0 E217.9734
G1 X118.666664 Y68.0 E218.09338
G1 X120.0 Y68.0 E218.18672
G1 X120.0 Y68.0
G1 X121.33333 Y68.0 E218.28906
G1 X122.666664 Y69.0 E218.40573
G1 X120.0 Y73.0 E219.08109
G1 X121.33333 Y74.0 E219.20107
G1 X124.0 Y74.0 E219.38773
G1 X125.33333 Y73.0 E219.5044
G1 X122.666664 Y69.0 E220.17975
G1 X124.0 Y68.0 E220.29973
G1 X125.33333 Y68.0 E220.39307
G1 X125.33333 Y71.0 E220.60353
G1 X125.33333 Y71.0
G1 X124.0 Y71.0 E220.70587
G1 X122.666664 Y72.0 E220.82254
G1 X125.33333 Y76.0 E221.4979
G1 X124.0 Y77.0 E221.61787
G1 X121.33333 Y77.0 E221.80453
G1 X120.0 Y76.0 E221.9212
G1 X122.666664 Y72.0 E222.59656
G1 X121.33333 Y71.0 E222.71654
G1 X120.0 Y71.0 E222.80988
G1 X120.0 Y71.0
G1 X118.666664 Y71.0 E222.91222
G1 X117.33333 Y72.0 E223.02888
G1 X120.0 Y76.0 E223.70425
G1 X118.666664 Y77.0 E223.82423
G1 X116.0 Y77.0 E224.0109
G1 X114.666664 Y76.0 E224.12756
G1 X117.33333 Y72.0 E224.80292
G1 X116.0 Y71.0 E224.9229
G1 X114.666664 Y71.0 E225.01624
G1 X114.666664 Y71.0
G1 X113.33333 Y71.0 E225.11858
G1 X112.0 Y72.0 E225.23524
G1 X114.666664 Y76.0 E225.91061
G1 X113.33333 Y77.0 E226.0306
G1 X110.666664 Y77.0 E226.21725
G1 X109.33333 Y76.0 E226.33392
G1 X112.0 Y72.0 E227.0093
G1 X110.666664 Y71.0 E227.12927
G1 X109.33333 Y71.0 E227.22261
G1 X109.33333 Y71.0
G1 X108.0 Y71.0 E227.32495
G1 X106.666664 Y72.0 E227.44162
G1 X109.33333 Y76.0 E228.11697
G1 X108.0 Y77.0 E228.23695
G1 X105.33333 Y77.0 E228.42361
G1 X104.0 Y76.0 E228.54028
G1 X106.666664 Y72.0 E229.21564
G1 X105.33333 Y71.0 E229.33562
G1 X104.0 Y71.0 E229.42896
G1 X104.0 Y71.0
G1 X102.666664 Y71.0 E229.5313
G1 X101.333336 Y72.0 E229.64796
G1 X104.0 Y76.0 E230.32333
G1 X102.666664 Y77.0 E230.44331
G1 X100.0 Y77.0 E230.62997
G1 X98.666664 Y76.0 E230.74664
G1 X101.333336 Y72.0 E231.42201
G1 X100.0 Y71.0 E231.54199
G1 X98.666664 Y71.0 E231.63533
G1 X98.666664 Y71.0
G1 X97.333336 Y71.0 E231.73767
G1 X96.0 Y72.0 E231.85434
G1 X98.666664 Y76.0 E232.5297
G1 X97.333336 Y77.0 E232.64967
G1 X94.666664 Y77.0 E232.83633
G1 X93.333336 Y76.0 E232.953
G1 X96.0 Y72.0 E233.62837
G1 X94.666664 Y71.0 E233.74835
G1 X93.333336 Y71.0 E233.84169
G1 X93.333336 Y71.0
G1 X92.0 Y71.0 E233.94403
G1 X90.666664 Y72.0 E234.0607
G1 X93.333336 Y76.0 E234.73607
G1 X92.0 Y77.0 E234.85605
G1 X89.333336 Y77.0 E235.04271
G1 X88.0 Y76.0 E235.15938
G1 X90.666664 Y72.0 E235.83475
G1 X89.333336 Y71.0 E235.95473
G1 X88.0 Y71.0 E236.04807
G1 X88.0 Y71.0
G1 X86.666664 Y71.0 E236.1504
G1 X85.333336 Y72.0 E236.26707
G1 X88.0 Y76.0 E236.94244
G1 X86.666664 Y77.0 E237.06242
G1 X84.0 Y77.0 E237.24908
G1 X82.666664 Y76.0 E237.36575
G1 X85.333336 Y72.0 E238.04112
G1 X84.0 Y71.0 E238.1611
G1 X82.666664 Y71.0 E238.25444
G1 X82.666664 Y71.0
G1 X81.333336 Y71.0 E238.35678
G1 X80.0 Y72.0 E238.47345
G1 X82.666664 Y76.0 E239.1488
G1 X81.333336 Y77.0 E239.26878
G1 X78.666664 Y77.0 E239.45544
G1 X77.333336 Y76.0 E239.57211
G1 X80.0 Y72.0 E240.24748
G1 X78.666664 Y71.0 E240.36746
G1 X77.333336 Y71.0 E240.4608
G1 X77.333336 Y71.0
G1 X76.0 Y71.0 E240.56314
G1 X74.666664 Y72.0 E240.67981
G1 X77.333336 Y76.0 E241.35518
G1 X76.0 Y77.0 E241.47516
G1 X73.333336 Y77.0 E241.66182
G1 X72.0 Y76.0 E241.77849
G1 X74.666664 Y72.0 E242.45386
G1 X73.333336 Y71.0 E242.57384
G1 X72.0 Y71.0 E242.66718
G1 X72.0 Y71.0
G1 X70.666664 Y71.0 E242.76952
G1 X69.333336 Y72.0 E242.88618
G1 X72.0 Y76.0 E243.56155
G1 X70.666664 Y77.0 E243.68153
G1 X68.0 Y77.0 E243.8682
G1 X66.666664 Y76.0 E243.98486
G1 X69.333336 Y72.0 E244.66023
G1 X68.0 Y71.0 E244.78021
G1 X66.666664 Y71.0 E244.87355
G1 X66.666664 Y74.0 E245.08401
G1 X66.666664 Y74.0
G1 X68.0 Y74.0 E245.18636
G1 X69.333336 Y75.0 E245.30302
G1 X66.666664 Y79.0 E245.9784
G1 X68.0 Y80.0 E246.09837
G1 X70.666664 Y80.0 E246.28503
G1 X72.0 Y79.0 E246.4017
G1 X69.333336 Y75.0 E247.07707
G1 X70.666664 Y74.0 E247.19705
G1 X72.0 Y74.0 E247.29039
G1 X72.0 Y74.0
G1 X73.333336 Y74.0 E247.39273
G1 X74.666664 Y75.0 E247.5094
G1 X72.0 Y79.0 E248.18475
G1 X73.333336 Y80.0 E248.30473
G1 X76.0 Y80.0 E248.4914
G1 X77.333336 Y79.0 E248.60806
G1 X74.666664 Y75.0 E249.28343
G1 X76.0 Y74.0 E249.40341
G1 X77.333336 Y74.0 E249.49675
G1 X77.333336 Y74.0
G1 X78.666664 Y74.0 E249.59909
G1 X80.0 Y75.0 E249.71576
G1 X77.333336 Y79.0 E250.39113
G1 X78.666664 Y80.0 E250.51111
G1 X81.333336 Y80.0 E250.69777
G1 X82.666664 Y79.0 E250.81444
G1 X80.0 Y75.0 E251.4898
G1 X81.333336 Y74.0 E251.60979
G1 X82.666664 Y74.0 E251.70312
G1 X82.666664 Y74.0
G1 X84.0 Y74.0 E251.80547
G1 X85.333336 Y75.0 E251.92213
G1 X82.666664 Y79.0 E252.5975
G1 X84.0 Y80.0 E252.71748
G1 X86.666664 Y80.0 E252.90414
G1 X88.0 Y79.0 E253.02081
G1 X85.333336 Y75.0 E253.69618
G1 X86.666664 Y74.0 E253.81616
G1 X88.0 Y74.0 E253.9095
G1 X88.0 Y74.0
G1 X89.333336 Y74.0 E254.01184
G1 X90.666664 Y75.0 E254.12851
G1 X88.0 Y79.0 E254.80386
G1 X89.333336 Y80.0 E254.92384
G1 X92.0 Y80.0 E255.1105
G1 X93.333336 Y79.0 E255.22717
G1 X90.666664 Y75.0 E255.90254
G1 X92.0 Y74.0 E256.02252
G1 X93.333336 Y74.0 E256.11584
G1 X93.333336 Y74.0
G1 X94.666664 Y74.0 E256.2182
G1 X96.0 Y75.0 E256.33487
G1 X93.333336 Y79.0 E257.01022
G1 X94.666664 Y80.0 E257.1302
G1 X97.333336 Y80.0 E257.31686
G1 X98.666664 Y79.0 E257.43353
G1 X96.0 Y75.0 E258.1089
G1 X97.333336 Y74.0 E258.22885
G1 X98.666664 Y74.0 E258.32217
G1 X98.666664 Y74.0
G1 X100.0 Y74.0 E258.42453
G1 X101.333336 Y75.0 E258.5412
G1 X98.666664 Y79.0 E259.21655
G1 X100.0 Y80.0 E259.33652
G1 X102.666664 Y80.0 E259.5232
G1 X104.0 Y79.0 E259.63986
G1 X101.333336 Y75.0 E260.31522
G1 X102.666664 Y74.0 E260.43518
G1 X104.0 Y74.0 E260.5285
G1 X104.0 Y74.0
G1 X105.33333 Y74.0 E260.63086
G1 X106.666664 Y75.0 E260.74753
G1 X104.0 Y79.0 E261.42288
G1 X105.33333 Y80.0 E261.54285
G1 X108.0 Y80.0 E261.72952
G1 X109.33333 Y79.0 E261.8462
G1 X106.666664 Y75.0 E262.52155
G1 X108.0 Y74.0 E262.6415
G1 X109.33333 Y74.0 E262.73483
G1 X109.33333 Y74.0
G1 X110.666664 Y74.0 E262.8372
G1 X112.0 Y75.0 E262.95386
G1 X109.33333 Y79.0 E263.6292
G1 X110.666664 Y80.0 E263.74918
G1 X113.33333 Y80.0 E263.93585
G1 X114.666664 Y79.0 E264.05252
G1 X112.0 Y75.0 E264.72787
G1 X113.33333 Y74.0 E264.84784
G1 X114.666664 Y74.0 E264.94116
G1 X114.666664 Y74.0
G1 X116.0 Y74.0 E265.04352
G1 X117.33333 Y75.0 E265.1602
G1 X114.666664 Y79.0 E265.83554
G1 X116.0 Y80.0 E265.9555
G1 X118.666664 Y80.0 E266.14218
G1 X120.0 Y79.0 E266.25885
G1 X117.33333 Y75.0 E266.9342
G1 X118.666664 Y74.0 E267.05417
G1 X120.0 Y74.0 E267.1475
G1 X120.0 Y74.0
G1 X121.33333 Y74.0 E267.24985
G1 X122.666664 Y75.0 E267.36652
G1 X120.0 Y79.0 E268.04187
G1 X121.33333 Y80.0 E268.16183
G1 X124.0 Y80.0 E268.3485
G1 X125.33333 Y79.0 E268.46518
G1 X122.666664 Y75.0 E269.14053
G1 X124.0 Y74.0 E269.2605
G1 X125.33333 Y74.0 E269.35382
G1 X125.33333 Y77.0 E269.5643
G1 X125.33333 Y77.0
G1 X124.0 Y77.0 E269.66666
G1 X122.666664 Y78.0 E269.78333
G1 X125.33333 Y82.0 E270.45868
G1 X124.0 Y83.0 E270.57864
G1 X121.33333 Y83.0 E270.76532
G1 X120.0 Y82.0 E270.882
G1 X122.666664 Y78.0 E271.55734
G1 X121.33333 Y77.0 E271.6773
G1 X120.0 Y77.0 E271.77063
G1 X120.0 Y77.0
G1 X118.666664 Y77.0 E271.873
G1 X117.33333 Y78.0 E271.98965
G1 X120.0 Y82.0 E272.665
G1 X118.666664 Y83.0 E272.78497
G1 X116.0 Y83.0 E272.97165
G1 X114.666664 Y82.0 E273.08832
G1 X117.33333 Y78.0 E273.76367
G1 X116.0 Y77.0 E273.88364
G1 X114.666664 Y77.0 E273.97696
G1 X114.666664 Y77.0
G1 X113.33333 Y77.0 E274.0793
G1 X112.0 Y78.0 E274.19598
G1 X114.666664 Y82.0 E274.87134
G1 X113.33333 Y83.0 E274.9913
G1 X110.666664 Y83.0 E275.17798
G1 X109.33333 Y82.0 E275.29465
G1 X112.0 Y78.0 E275.97
G1 X110.666664 Y77.0 E276.08997
G1 X109.33333 Y77.0 E276.1833
G1 X109.33333 Y77.0
G1 X108.0 Y77.0 E276.28564
G1 X106.666664 Y78.0 E276.4023
G1 X109.33333 Y82.0 E277.07767
G1 X108.0 Y83.0 E277.19763
G1 X105.33333 Y83.0 E277.3843
G1 X104.0 Y82.0 E277.50098
G1 X106.666664 Y78.0 E278.17633
G1 X105.33333 Y77.0 E278.2963
G1 X104.0 Y77.0 E278.38962
G1 X104.0 Y77.0
G1 X102.666664 Y77.0 E278.49197
G1 X101.333336 Y78.0 E278.60864
G1 X104.0 Y82.0 E279.284
G1 X102.666664 Y83.0 E279.40396
G1 X100.0 Y83.0 E279.59064
G1 X98.666664 Y82.0 E279.7073
G1 X101.333336 Y78.0 E280.38266
G1 X100.0 Y77.0 E280.50262
G1 X98.666664 Y77.0 E280.59595
G1 X98.666664 Y77.0
G1 X97.333336 Y77.0 E280.6983
G1 X96.0 Y78.0 E280.81497
G1 X98.666664 Y82.0 E281.49033
G1 X97.333336 Y83.0 E281.6103
G1 X94.666664 Y83.0 E281.79697
G1 X93.333336 Y82.0 E281.91364
G1 X96.0 Y78.0 E282.589
G1 X94.666664 Y77.0 E282.70895
G1 X93.333336 Y77.0 E282.80228
G1 X93.333336 Y77.0
G1 X92.0 Y77.0 E282.90463
G1 X90.666664 Y78.0 E283.0213
G1 X93.333336 Y82.0 E283.69666
G1 X92.0 Y83.0 E283.81662
G1 X89.333336 Y83.0 E284.0033
G1 X88.0 Y82.0 E284.11996
G1 X90.666664 Y78.0 E284.79532
G1 X89.333336 Y77.0 E284.91528
G1 X88.0 Y77.0 E285.0086
G1 X88.0 Y77.0
G1 X86.666664 Y77.0 E285.11096
G1 X85.333336 Y78.0 E285.22763
G1 X88.0 Y82.0 E285.90298
G1 X86.666664 Y83.0 E286.02295
G1 X84.0 Y83.0 E286.20963
G1 X82.666664 Y82.0 E286.3263
G1 X85.333336 Y78.0 E287.00165
G1 X84.0 Y77.0 E287.1216
G1 X82.666664 Y77.0 E287.21494
G1 X82.666664 Y77.0
G1 X81.333336 Y77.0 E287.3173
G1 X80.0 Y78.0 E287.43396
G1 X82.666664 Y82.0 E288.1093
G1 X81.333336 Y83.0 E288.22928
G1 X78.666664 Y83.0 E288.41595
G1 X77.333336 Y82.0 E288.53262
G1 X80.0 Y78.0 E289.20798
G1 X78.666664 Y77.0 E289.32794
G1 X77.333336 Y77.0 E289.42126
G1 X77.333336 Y77.0
G1 X76.0 Y77.0 E289.52362
G1 X74.666664 Y78.0 E289.6403
G1 X77.333336 Y82.0 E290.31564
G1 X76.0 Y83.0 E290.4356
G1 X73.333336 Y83.0 E290.62228
G1 X72.0 Y82.0 E290.73895
G1 X74.666664 Y78.0 E291.4143
G1 X73.333336 Y77.0 E291.53427
G1 X72.0 Y77.0 E291.6276
G1 X72.0 Y77.0
G1 X70.666664 Y77.0 E291.72995
G1 X69.333336 Y78.0 E291.84662
G1 X72.0 Y82.0 E292.52197
G1 X70.666664 Y83.0 E292.64194
G1 X68.0 Y83.0 E292.8286
G1 X66.666664 Y82.0 E292.94528
G1 X69.333336 Y78.0 E293.62064
G1 X68.0 Y77.0 E293.7406
G1 X66.666664 Y77.0 E293.83392
G1 X66.666664 Y80.0 E294.0444
G1 X66.666664 Y80.0
G1 X68.0 Y80.0 E294.14676
G1 X69.333336 Y81.0 E294.26343
G1 X66.666664 Y85.0 E294.93878
G1 X68.0 Y86.0 E295.05875
G1 X70.666664 Y86.0 E295.24542
G1 X72.0 Y85.0 E295.3621
G1 X69.333336 Y81.0 E296.03745
G1 X70.666664 Y80.0 E296.1574
G1 X72.0 Y80.0 E296.25073
G1 X72.0 Y80.0
G1 X73.333336 Y80.0 E296.3531
G1 X74.666664 Y81.0 E296.46976
G1 X72.0 Y85.0 E297.1451
G1 X73.333336 Y86.0 E297.26508
G1 X76.0 Y86.0 E297.45175
G1 X77.333336 Y85.0 E297.56842
G1 X74.666664 Y81.0 E298.24377
G1 X76.0 Y80.0 E298.36374
G1 X77.333336 Y80.0 E298.45706
G1 X77.333336 Y80.0
G1 X78.666664 Y80.0 E298.55942
G1 X80.0 Y81.0 E298.6761
G1 X77.333336 Y85.0 E299.35144
G1 X78.666664 Y86.0 E299.4714
G1 X81.333336 Y86.0 E299.65808
G1 X82.666664 Y85.0 E299.77475
G1 X80.0 Y81.0 E300.4501
G1 X81.333336 Y80.0 E300.57007
G1 X82.666664 Y80.0 E300.6634
G1 X82.666664 Y80.0
G1 X84.0 Y80.0 E300.76575
G1 X85.333336 Y81.0 E300.88242
G1 X82.666664 Y85.0 E301.55777
G1 X84.0 Y86.0 E301.67773
G1 X86.666664 Y86.0 E301.8644
G1 X88.0 Y85.0 E301.98108
G1 X85.333336 Y81.0 E302.65643
G1 X86.666664 Y80.0 E302.7764
G1 X88.0 Y80.0 E302.86972
G1 X88.0 Y80.0
G1 X89.333336 Y80.0 E302.97208
G1 X90.666664 Y81.0 E303.08875
G1 X88.0 Y85.0 E303.7641
G1 X89.333336 Y86.0 E303.88406
G1 X92.0 Y86.0 E304.07074
G1 X93.333336 Y85.0 E304.1874
G1 X90.666664 Y81.0 E304.86276
G1 X92.0 Y80.0 E304.98273
G1 X93.333336 Y80.0 E305.07605
G1 X93.333336 Y80.0
G1 X94.666664 Y80.0 E305.1784
G1 X96.0 Y81.0 E305.29507
G1 X93.333336 Y85.0 E305.97043
G1 X94.666664 Y86.0 E306.0904
G1 X97.333336 Y86.0 E306.27707
G1 X98.666664 Y85.0 E306.39374
G1 X96.0 Y81.0 E307.0691
G1 X97.333336 Y80.0 E307.18906
G1 X98.666664 Y80.0 E307.28238
G1 X98.666664 Y80.0
G1 X100.0 Y80.0 E307.38474
G1 X101.333336 Y81.0 E307.5014
G1 X98.666664 Y85.0 E308.17676
G1 X100.0 Y86.0 E308.29672
G1 X102.666664 Y86.0 E308.4834
G1 X104.0 Y85.0 E308.60007
G1 X101.333336 Y81.0 E309.27542
G1 X102.666664 Y80.0 E309.3954
G1 X104.0 Y80.0 E309.4887
G1 X104.0 Y80.0
G1 X105.33333 Y80.0 E309.59106
G1 X106.666664 Y81.0 E309.70773
G1 X104.0 Y85.0 E310.3831
G1 X105.33333 Y86.0 E310.50305
G1 X108.0 Y86.0 E310.68973
G1 X109.33333 Y85.0 E310.8064
G1 X106.666664 Y81.0 E311.48175
G1 X108.0 Y80.0 E311.6017
G1 X109.33333 Y80.0 E311.69504
G1 X109.33333 Y80.0
G1 X110.666664 Y80.0 E311.7974
G1 X112.0 Y81.0 E311.91406
G1 X109.33333 Y85.0 E312.58942
G1 X110.666664 Y86.0 E312.70938
G1 X113.33333 Y86.0 E312.89606
G1 X114.666664 Y85.0 E313.01273
G1 X112.0 Y81.0 E313.68808
G1 X113.33333 Y80.0 E313.80804
G1 X114.666664 Y80.0 E313.90137
G1 X114.666664 Y80.0
G1 X116.0 Y80.0 E314.00372
G1 X117.33333 Y81.0 E314.1204
G1 X114.666664 Y85.0 E314.79575
G1 X116.0 Y86.0 E314.9157
G1 X118.666664 Y86.0 E315.1024
G1 X120.0 Y85.0 E315.21906
G1 X117.33333 Y81.0 E315.8944
G1 X118.666664 Y80.0 E316.01437
G1 X120.0 Y80.0 E316.1077
G1 X120.0 Y80.0
G1 X121.33333 Y80.0 E316.21005
G1 X122.666664 Y81.0 E316.32672
G1 X120.0 Y85.0 E317.00208
G1 X121.33333 Y86.0 E317.12204
G1 X124.0 Y86.0 E317.30872
G1 X125.33333 Y85.0 E317.42538
G1 X122.666664 Y81.0 E318.10074
G1 X124.0 Y80.0 E318.2207
G1 X125.33333 Y80.0 E318.31403
G1 X125.33333 Y83.0 E318.5245
G1 X125.33333 Y83.0
G1 X124.0 Y83.0 E318.62686
G1 X122.666664 Y84.0 E318.74353
G1 X125.33333 Y88.0 E319.41888
G1 X124.0 Y89.0 E319.53885
G1 X121.33333 Y89.0 E319.72552
G1 X120.0 Y88.0 E319.8422
G1 X122.666664 Y84.0 E320.51755
G1 X121.33333 Y83.0 E320.6375
G1 X120.0 Y83.0 E320.73083
G1 X120.0 Y83.0
G1 X118.666664 Y83.0 E320.8332
G1 X117.33333 Y84.0 E320.94986
G1 X120.0 Y88.0 E321.6252
G1 X118.666664 Y89.0 E321.74518
G1 X116.0 Y89.0 E321.93185
G1 X114.666664 Y88.0 E322.04852
G1 X117.33333 Y84.0 E322.72388
G1 X116.0 Y83.0 E322.84384
G1 X114.666664 Y83.0 E322.93716
G1 X114.666664 Y83.0
G1 X113.33333 Y83.0 E323.03952
G1 X112.0 Y84.0 E323.1562
G1 X114.666664 Y88.0 E323.83154
G1 X113.33333 Y89.0 E323.9515
G1 X110.666664 Y89.0 E324.13818
G1 X109.33333 Y88.0 E324.25485
G1 X112.0 Y84.0 E324.9302
G1 X110.666664 Y83.0 E325.05017
G1 X109.33333 Y83.0 E325.1435
G1 X109.33333 Y83.0
G1 X108.0 Y83.0 E325.24585
G1 X106.666664 Y84.0 E325.36252
G1 X109.33333 Y88.0 E326.03787
G1 X108.0 Y89.0 E326.15784
G1 X105.33333 Y89.0 E326.3445
G1 X104.0 Y88.0 E326.46118
G1 X106.666664 Y84.0 E327.13654
G1 X105.33333 Y83.0 E327.2565
G1 X104.0 Y83.0 E327.34982
G1 X104.0 Y83.0
G1 X102.666664 Y83.0 E327.45218
G1 X101.333336 Y84.0 E327.56885
G1 X104.0 Y88.0 E328.2442
G1 X102.666664 Y89.0 E328.36417
G1 X100.0 Y89.0 E328.55084
G1 X98.666664 Y88.0 E328.6675
G1 X101.333336 Y84.0 E329.34286
G1 X100.0 Y83.0 E329.46283
G1 X98.666664 Y83.0 E329.55615
G1 X98.666664 Y83.0
G1 X97.333336 Y83.0 E329.6585
G1 X96.0 Y84.0 E329.77518
G1 X98.666664 Y88.0 E330.45053
G1 X97.333336 Y89.0 E330.5705
G1 X94.666664 Y89.0 E330.75717
G1 X93.333336 Y88.0 E330.87384
G1 X96.0 Y84.0 E331.5492
G1 X94.666664 Y83.0 E331.66916
G1 X93.333336 Y83.0 E331.76248
G1 X93.333336 Y83.0
G1 X92.0 Y83.0 E331.86484
G1 X90.666664 Y84.0 E331.9815
G1 X93.333336 Y88.0 E332.65686
G1 X92.0 Y89.0 E332.77682
G1 X89.333336 Y89.0 E332.9635
G1 X88.0 Y88.0 E333.08017
G1 X90.666664 Y84.0 E333.75552
G1 X89.333336 Y83.0 E333.8755
G1 X88.0 Y83.0 E333.9688
G1 X88.0 Y83.0
G1 X86.666664 Y83.0 E334.07117
G1 X85.333336 Y84.0 E334.18784
G1 X88.0 Y88.0 E334.8632
G1 X86.666664 Y89.0 E334.98315
G1 X84.0 Y89.0 E335.16983
G1 X82.666664 Y88.0 E335.2865
G1 X85.333336 Y84.0 E335.96185
G1 X84.0 Y83.0 E336.08182
G1 X82.666664 Y83.0 E336.17514
G1 X82.666664 Y83.0
G1 X81.333336 Y83.0 E336.2775
G1 X80.0 Y84.0 E336.39417
G1 X82.666664 Y88.0 E337.06952
G1 X81.333336 Y89.0 E337.18948
G1 X78.666664 Y89.0 E337.37616
G1 X77.333336 Y88.0 E337.49283
G1 X80.0 Y84.0 E338.16818
G1 X78.666664 Y83.0 E338.28815
G1 X77.333336 Y83.0 E338.38147
G1 X77.333336 Y83.0
G1 X76.0 Y83.0 E338.48383
G1 X74.666664 Y84.0 E338.6005
G1 X77.333336 Y88.0 E339.27585
G1 X76.0 Y89.0 E339.3958
G1 X73.333336 Y89.0 E339.5825
G1 X72.0 Y88.0 E339.69916
G1 X74.666664 Y84.0 E340.3745
G1 X73.333336 Y83.0 E340.49448
G1 X72.0 Y83.0 E340.5878
G1 X72.0 Y83.0
G1 X70.666664 Y83.0 E340.69016
G1 X69.333336 Y84.0 E340.80682
G1 X72.0 Y88.0 E341.48218
G1 X70.666664 Y89.0 E341.60214
G1 X68.0 Y89.0 E341.78882
G1 X66.666664 Y88.0 E341.9055
G1 X69.333336 Y84.0 E342.58084
G1 X68.0 Y83.0 E342.7008
G1 X66.666664 Y83.0 E342.79413
G1 X66.666664 Y86.0 E343.0046
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning