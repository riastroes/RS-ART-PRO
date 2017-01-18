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
G1 X68.0 Y50.0 E49.327785
G1 X69.333336 Y51.0 E49.427784
G1 X66.666664 Y55.0 E50.006664
G1 X68.0 Y56.0 E50.109505
G1 X70.666664 Y56.0 E50.269505
G1 X72.0 Y55.0 E50.369503
G1 X69.333336 Y51.0 E50.948383
G1 X70.666664 Y50.0 E51.051224
G1 X72.0 Y50.0 E51.131226
G1 X72.0 Y50.0
G1 X73.333336 Y50.0 E51.218952
G1 X74.666664 Y51.0 E51.31895
G1 X72.0 Y55.0 E51.89783
G1 X73.333336 Y56.0 E52.00067
G1 X76.0 Y56.0 E52.16067
G1 X77.333336 Y55.0 E52.26067
G1 X74.666664 Y51.0 E52.83955
G1 X76.0 Y50.0 E52.94239
G1 X77.333336 Y50.0 E53.02239
G1 X77.333336 Y50.0
G1 X78.666664 Y50.0 E53.110115
G1 X80.0 Y51.0 E53.210114
G1 X77.333336 Y55.0 E53.788994
G1 X78.666664 Y56.0 E53.891834
G1 X81.333336 Y56.0 E54.051834
G1 X82.666664 Y55.0 E54.151833
G1 X80.0 Y51.0 E54.730713
G1 X81.333336 Y50.0 E54.833553
G1 X82.666664 Y50.0 E54.91355
G1 X82.666664 Y50.0
G1 X84.0 Y50.0 E55.001278
G1 X85.333336 Y51.0 E55.101276
G1 X82.666664 Y55.0 E55.680157
G1 X84.0 Y56.0 E55.782997
G1 X86.666664 Y56.0 E55.942997
G1 X88.0 Y55.0 E56.042995
G1 X85.333336 Y51.0 E56.621876
G1 X86.666664 Y50.0 E56.724716
G1 X88.0 Y50.0 E56.804718
G1 X88.0 Y50.0
G1 X89.333336 Y50.0 E56.892445
G1 X90.666664 Y51.0 E56.992443
G1 X88.0 Y55.0 E57.571323
G1 X89.333336 Y56.0 E57.674164
G1 X92.0 Y56.0 E57.834164
G1 X93.333336 Y55.0 E57.934162
G1 X90.666664 Y51.0 E58.513042
G1 X92.0 Y50.0 E58.615883
G1 X93.333336 Y50.0 E58.69588
G1 X93.333336 Y50.0
G1 X94.666664 Y50.0 E58.783607
G1 X96.0 Y51.0 E58.883606
G1 X93.333336 Y55.0 E59.462486
G1 X94.666664 Y56.0 E59.565327
G1 X97.333336 Y56.0 E59.725327
G1 X98.666664 Y55.0 E59.825325
G1 X96.0 Y51.0 E60.404205
G1 X97.333336 Y50.0 E60.507046
G1 X98.666664 Y50.0 E60.587044
G1 X98.666664 Y50.0
G1 X100.0 Y50.0 E60.67477
G1 X101.333336 Y51.0 E60.77477
G1 X98.666664 Y55.0 E61.35365
G1 X100.0 Y56.0 E61.45649
G1 X102.666664 Y56.0 E61.61649
G1 X104.0 Y55.0 E61.716488
G1 X101.333336 Y51.0 E62.29537
G1 X102.666664 Y50.0 E62.39821
G1 X104.0 Y50.0 E62.47821
G1 X104.0 Y50.0
G1 X105.33333 Y50.0 E62.565937
G1 X106.666664 Y51.0 E62.665936
G1 X104.0 Y55.0 E63.244816
G1 X105.33333 Y56.0 E63.347656
G1 X108.0 Y56.0 E63.507656
G1 X109.33333 Y55.0 E63.607655
G1 X106.666664 Y51.0 E64.18654
G1 X108.0 Y50.0 E64.289375
G1 X109.33333 Y50.0 E64.36938
G1 X109.33333 Y50.0
G1 X110.666664 Y50.0 E64.45711
G1 X112.0 Y51.0 E64.557106
G1 X109.33333 Y55.0 E65.13599
G1 X110.666664 Y56.0 E65.23882
G1 X113.33333 Y56.0 E65.39882
G1 X114.666664 Y55.0 E65.49882
G1 X112.0 Y51.0 E66.0777
G1 X113.33333 Y50.0 E66.180534
G1 X114.666664 Y50.0 E66.26054
G1 X114.666664 Y50.0
G1 X116.0 Y50.0 E66.34827
G1 X117.33333 Y51.0 E66.448265
G1 X114.666664 Y55.0 E67.027145
G1 X116.0 Y56.0 E67.12998
G1 X118.666664 Y56.0 E67.28998
G1 X120.0 Y55.0 E67.38998
G1 X117.33333 Y51.0 E67.96886
G1 X118.666664 Y50.0 E68.07169
G1 X120.0 Y50.0 E68.151695
G1 X120.0 Y50.0
G1 X121.33333 Y50.0 E68.23942
G1 X122.666664 Y51.0 E68.33942
G1 X120.0 Y55.0 E68.9183
G1 X121.33333 Y56.0 E69.02113
G1 X124.0 Y56.0 E69.18114
G1 X125.33333 Y55.0 E69.281136
G1 X122.666664 Y51.0 E69.860016
G1 X124.0 Y50.0 E69.96285
G1 X125.33333 Y50.0 E70.042854
G1 X125.33333 Y53.0 E70.22325
G1 X125.33333 Y53.0
G1 X124.0 Y53.0 E70.310974
G1 X122.666664 Y54.0 E70.41097
G1 X125.33333 Y58.0 E70.98985
G1 X124.0 Y59.0 E71.09269
G1 X121.33333 Y59.0 E71.25269
G1 X120.0 Y58.0 E71.35269
G1 X122.666664 Y54.0 E71.93157
G1 X121.33333 Y53.0 E72.03441
G1 X120.0 Y53.0 E72.11441
G1 X120.0 Y53.0
G1 X118.666664 Y53.0 E72.20214
G1 X117.33333 Y54.0 E72.30214
G1 X120.0 Y58.0 E72.88102
G1 X118.666664 Y59.0 E72.98386
G1 X116.0 Y59.0 E73.14385
G1 X114.666664 Y58.0 E73.24385
G1 X117.33333 Y54.0 E73.82273
G1 X116.0 Y53.0 E73.92557
G1 X114.666664 Y53.0 E74.00557
G1 X114.666664 Y53.0
G1 X113.33333 Y53.0 E74.0933
G1 X112.0 Y54.0 E74.1933
G1 X114.666664 Y58.0 E74.77218
G1 X113.33333 Y59.0 E74.875015
G1 X110.666664 Y59.0 E75.03501
G1 X109.33333 Y58.0 E75.13501
G1 X112.0 Y54.0 E75.71389
G1 X110.666664 Y53.0 E75.81673
G1 X109.33333 Y53.0 E75.89673
G1 X109.33333 Y53.0
G1 X108.0 Y53.0 E75.98445
G1 X106.666664 Y54.0 E76.08445
G1 X109.33333 Y58.0 E76.66333
G1 X108.0 Y59.0 E76.76617
G1 X105.33333 Y59.0 E76.92617
G1 X104.0 Y58.0 E77.02617
G1 X106.666664 Y54.0 E77.60505
G1 X105.33333 Y53.0 E77.707886
G1 X104.0 Y53.0 E77.78789
G1 X104.0 Y53.0
G1 X102.666664 Y53.0 E77.87562
G1 X101.333336 Y54.0 E77.97562
G1 X104.0 Y58.0 E78.5545
G1 X102.666664 Y59.0 E78.65733
G1 X100.0 Y59.0 E78.81733
G1 X98.666664 Y58.0 E78.91733
G1 X101.333336 Y54.0 E79.49621
G1 X100.0 Y53.0 E79.599045
G1 X98.666664 Y53.0 E79.67905
G1 X98.666664 Y53.0
G1 X97.333336 Y53.0 E79.76678
G1 X96.0 Y54.0 E79.866776
G1 X98.666664 Y58.0 E80.445656
G1 X97.333336 Y59.0 E80.54849
G1 X94.666664 Y59.0 E80.708496
G1 X93.333336 Y58.0 E80.808495
G1 X96.0 Y54.0 E81.387375
G1 X94.666664 Y53.0 E81.49021
G1 X93.333336 Y53.0 E81.57021
G1 X93.333336 Y53.0
G1 X92.0 Y53.0 E81.65794
G1 X90.666664 Y54.0 E81.75794
G1 X93.333336 Y58.0 E82.33682
G1 X92.0 Y59.0 E82.43966
G1 X89.333336 Y59.0 E82.59966
G1 X88.0 Y58.0 E82.69966
G1 X90.666664 Y54.0 E83.27854
G1 X89.333336 Y53.0 E83.38138
G1 X88.0 Y53.0 E83.46138
G1 X88.0 Y53.0
G1 X86.666664 Y53.0 E83.54911
G1 X85.333336 Y54.0 E83.64911
G1 X88.0 Y58.0 E84.22799
G1 X86.666664 Y59.0 E84.330826
G1 X84.0 Y59.0 E84.49082
G1 X82.666664 Y58.0 E84.59082
G1 X85.333336 Y54.0 E85.1697
G1 X84.0 Y53.0 E85.27254
G1 X82.666664 Y53.0 E85.35254
G1 X82.666664 Y53.0
G1 X81.333336 Y53.0 E85.44027
G1 X80.0 Y54.0 E85.54027
G1 X82.666664 Y58.0 E86.11915
G1 X81.333336 Y59.0 E86.221985
G1 X78.666664 Y59.0 E86.38199
G1 X77.333336 Y58.0 E86.48199
G1 X80.0 Y54.0 E87.06087
G1 X78.666664 Y53.0 E87.163704
G1 X77.333336 Y53.0 E87.243706
G1 X77.333336 Y53.0
G1 X76.0 Y53.0 E87.331436
G1 X74.666664 Y54.0 E87.431435
G1 X77.333336 Y58.0 E88.010315
G1 X76.0 Y59.0 E88.11315
G1 X73.333336 Y59.0 E88.273155
G1 X72.0 Y58.0 E88.37315
G1 X74.666664 Y54.0 E88.952034
G1 X73.333336 Y53.0 E89.05487
G1 X72.0 Y53.0 E89.13487
G1 X72.0 Y53.0
G1 X70.666664 Y53.0 E89.2226
G1 X69.333336 Y54.0 E89.3226
G1 X72.0 Y58.0 E89.90148
G1 X70.666664 Y59.0 E90.00432
G1 X68.0 Y59.0 E90.164314
G1 X66.666664 Y58.0 E90.26431
G1 X69.333336 Y54.0 E90.84319
G1 X68.0 Y53.0 E90.94603
G1 X66.666664 Y53.0 E91.02603
G1 X66.666664 Y56.0 E91.20643
G1 X66.666664 Y56.0
G1 X68.0 Y56.0 E91.29416
G1 X69.333336 Y57.0 E91.39416
G1 X66.666664 Y61.0 E91.97304
G1 X68.0 Y62.0 E92.075874
G1 X70.666664 Y62.0 E92.23587
G1 X72.0 Y61.0 E92.33587
G1 X69.333336 Y57.0 E92.91475
G1 X70.666664 Y56.0 E93.017586
G1 X72.0 Y56.0 E93.09759
G1 X72.0 Y56.0
G1 X73.333336 Y56.0 E93.18532
G1 X74.666664 Y57.0 E93.28532
G1 X72.0 Y61.0 E93.8642
G1 X73.333336 Y62.0 E93.96703
G1 X76.0 Y62.0 E94.12704
G1 X77.333336 Y61.0 E94.227036
G1 X74.666664 Y57.0 E94.805916
G1 X76.0 Y56.0 E94.90875
G1 X77.333336 Y56.0 E94.988754
G1 X77.333336 Y56.0
G1 X78.666664 Y56.0 E95.076485
G1 X80.0 Y57.0 E95.17648
G1 X77.333336 Y61.0 E95.75536
G1 X78.666664 Y62.0 E95.8582
G1 X81.333336 Y62.0 E96.0182
G1 X82.666664 Y61.0 E96.1182
G1 X80.0 Y57.0 E96.69708
G1 X81.333336 Y56.0 E96.79992
G1 X82.666664 Y56.0 E96.87992
G1 X82.666664 Y56.0
G1 X84.0 Y56.0 E96.96765
G1 X85.333336 Y57.0 E97.06765
G1 X82.666664 Y61.0 E97.64653
G1 X84.0 Y62.0 E97.74937
G1 X86.666664 Y62.0 E97.90936
G1 X88.0 Y61.0 E98.00936
G1 X85.333336 Y57.0 E98.58824
G1 X86.666664 Y56.0 E98.69108
G1 X88.0 Y56.0 E98.77108
G1 X88.0 Y56.0
G1 X89.333336 Y56.0 E98.85881
G1 X90.666664 Y57.0 E98.95881
G1 X88.0 Y61.0 E99.53769
G1 X89.333336 Y62.0 E99.640526
G1 X92.0 Y62.0 E99.80053
G1 X93.333336 Y61.0 E99.90053
G1 X90.666664 Y57.0 E100.47941
G1 X92.0 Y56.0 E100.582245
G1 X93.333336 Y56.0 E100.66225
G1 X93.333336 Y56.0
G1 X94.666664 Y56.0 E100.74998
G1 X96.0 Y57.0 E100.849976
G1 X93.333336 Y61.0 E101.428856
G1 X94.666664 Y62.0 E101.53169
G1 X97.333336 Y62.0 E101.691696
G1 X98.666664 Y61.0 E101.791695
G1 X96.0 Y57.0 E102.370575
G1 X97.333336 Y56.0 E102.47341
G1 X98.666664 Y56.0 E102.55341
G1 X98.666664 Y56.0
G1 X100.0 Y56.0 E102.64114
G1 X101.333336 Y57.0 E102.74114
G1 X98.666664 Y61.0 E103.32002
G1 X100.0 Y62.0 E103.42286
G1 X102.666664 Y62.0 E103.582855
G1 X104.0 Y61.0 E103.68285
G1 X101.333336 Y57.0 E104.261734
G1 X102.666664 Y56.0 E104.36457
G1 X104.0 Y56.0 E104.44457
G1 X104.0 Y56.0
G1 X105.33333 Y56.0 E104.532295
G1 X106.666664 Y57.0 E104.63229
G1 X104.0 Y61.0 E105.211174
G1 X105.33333 Y62.0 E105.31401
G1 X108.0 Y62.0 E105.474014
G1 X109.33333 Y61.0 E105.57401
G1 X106.666664 Y57.0 E106.15289
G1 X108.0 Y56.0 E106.25573
G1 X109.33333 Y56.0 E106.33573
G1 X109.33333 Y56.0
G1 X110.666664 Y56.0 E106.42346
G1 X112.0 Y57.0 E106.52346
G1 X109.33333 Y61.0 E107.10234
G1 X110.666664 Y62.0 E107.20518
G1 X113.33333 Y62.0 E107.36517
G1 X114.666664 Y61.0 E107.46517
G1 X112.0 Y57.0 E108.04405
G1 X113.33333 Y56.0 E108.14689
G1 X114.666664 Y56.0 E108.22689
G1 X114.666664 Y56.0
G1 X116.0 Y56.0 E108.31462
G1 X117.33333 Y57.0 E108.41462
G1 X114.666664 Y61.0 E108.9935
G1 X116.0 Y62.0 E109.09634
G1 X118.666664 Y62.0 E109.25633
G1 X120.0 Y61.0 E109.35633
G1 X117.33333 Y57.0 E109.93521
G1 X118.666664 Y56.0 E110.03805
G1 X120.0 Y56.0 E110.11805
G1 X120.0 Y56.0
G1 X121.33333 Y56.0 E110.20577
G1 X122.666664 Y57.0 E110.30577
G1 X120.0 Y61.0 E110.88465
G1 X121.33333 Y62.0 E110.98749
G1 X124.0 Y62.0 E111.14749
G1 X125.33333 Y61.0 E111.24749
G1 X122.666664 Y57.0 E111.82637
G1 X124.0 Y56.0 E111.92921
G1 X125.33333 Y56.0 E112.00921
G1 X125.33333 Y59.0 E112.189606
G1 X125.33333 Y59.0
G1 X124.0 Y59.0 E112.27733
G1 X122.666664 Y60.0 E112.37733
G1 X125.33333 Y64.0 E112.95621
G1 X124.0 Y65.0 E113.059044
G1 X121.33333 Y65.0 E113.21905
G1 X120.0 Y64.0 E113.319046
G1 X122.666664 Y60.0 E113.89793
G1 X121.33333 Y59.0 E114.00076
G1 X120.0 Y59.0 E114.080765
G1 X120.0 Y59.0
G1 X118.666664 Y59.0 E114.168495
G1 X117.33333 Y60.0 E114.26849
G1 X120.0 Y64.0 E114.847374
G1 X118.666664 Y65.0 E114.95021
G1 X116.0 Y65.0 E115.11021
G1 X114.666664 Y64.0 E115.210205
G1 X117.33333 Y60.0 E115.789085
G1 X116.0 Y59.0 E115.89192
G1 X114.666664 Y59.0 E115.971924
G1 X114.666664 Y59.0
G1 X113.33333 Y59.0 E116.059654
G1 X112.0 Y60.0 E116.15965
G1 X114.666664 Y64.0 E116.73853
G1 X113.33333 Y65.0 E116.84137
G1 X110.666664 Y65.0 E117.001366
G1 X109.33333 Y64.0 E117.101364
G1 X112.0 Y60.0 E117.680244
G1 X110.666664 Y59.0 E117.78308
G1 X109.33333 Y59.0 E117.86308
G1 X109.33333 Y59.0
G1 X108.0 Y59.0 E117.950806
G1 X106.666664 Y60.0 E118.050804
G1 X109.33333 Y64.0 E118.629684
G1 X108.0 Y65.0 E118.73252
G1 X105.33333 Y65.0 E118.892525
G1 X104.0 Y64.0 E118.99252
G1 X106.666664 Y60.0 E119.5714
G1 X105.33333 Y59.0 E119.67424
G1 X104.0 Y59.0 E119.75424
G1 X104.0 Y59.0
G1 X102.666664 Y59.0 E119.84197
G1 X101.333336 Y60.0 E119.94197
G1 X104.0 Y64.0 E120.52085
G1 X102.666664 Y65.0 E120.62369
G1 X100.0 Y65.0 E120.78368
G1 X98.666664 Y64.0 E120.88368
G1 X101.333336 Y60.0 E121.46256
G1 X100.0 Y59.0 E121.5654
G1 X98.666664 Y59.0 E121.6454
G1 X98.666664 Y59.0
G1 X97.333336 Y59.0 E121.73313
G1 X96.0 Y60.0 E121.83313
G1 X98.666664 Y64.0 E122.41201
G1 X97.333336 Y65.0 E122.51485
G1 X94.666664 Y65.0 E122.67485
G1 X93.333336 Y64.0 E122.77485
G1 X96.0 Y60.0 E123.35373
G1 X94.666664 Y59.0 E123.456566
G1 X93.333336 Y59.0 E123.53657
G1 X93.333336 Y59.0
G1 X92.0 Y59.0 E123.6243
G1 X90.666664 Y60.0 E123.7243
G1 X93.333336 Y64.0 E124.30318
G1 X92.0 Y65.0 E124.40601
G1 X89.333336 Y65.0 E124.56602
G1 X88.0 Y64.0 E124.666016
G1 X90.666664 Y60.0 E125.244896
G1 X89.333336 Y59.0 E125.34773
G1 X88.0 Y59.0 E125.427734
G1 X88.0 Y59.0
G1 X86.666664 Y59.0 E125.515465
G1 X85.333336 Y60.0 E125.61546
G1 X88.0 Y64.0 E126.19434
G1 X86.666664 Y65.0 E126.29718
G1 X84.0 Y65.0 E126.45718
G1 X82.666664 Y64.0 E126.557175
G1 X85.333336 Y60.0 E127.136055
G1 X84.0 Y59.0 E127.23889
G1 X82.666664 Y59.0 E127.31889
G1 X82.666664 Y59.0
G1 X81.333336 Y59.0 E127.406624
G1 X80.0 Y60.0 E127.50662
G1 X82.666664 Y64.0 E128.08551
G1 X81.333336 Y65.0 E128.18835
G1 X78.666664 Y65.0 E128.34836
G1 X77.333336 Y64.0 E128.44836
G1 X80.0 Y60.0 E129.02725
G1 X78.666664 Y59.0 E129.1301
G1 X77.333336 Y59.0 E129.2101
G1 X77.333336 Y59.0
G1 X76.0 Y59.0 E129.29782
G1 X74.666664 Y60.0 E129.39783
G1 X77.333336 Y64.0 E129.97672
G1 X76.0 Y65.0 E130.07956
G1 X73.333336 Y65.0 E130.23956
G1 X72.0 Y64.0 E130.33957
G1 X74.666664 Y60.0 E130.91846
G1 X73.333336 Y59.0 E131.0213
G1 X72.0 Y59.0 E131.1013
G1 X72.0 Y59.0
G1 X70.666664 Y59.0 E131.18903
G1 X69.333336 Y60.0 E131.28903
G1 X72.0 Y64.0 E131.86792
G1 X70.666664 Y65.0 E131.97076
G1 X68.0 Y65.0 E132.13077
G1 X66.666664 Y64.0 E132.23077
G1 X69.333336 Y60.0 E132.80966
G1 X68.0 Y59.0 E132.9125
G1 X66.666664 Y59.0 E132.99251
G1 X66.666664 Y62.0 E133.17291
G1 X66.666664 Y62.0
G1 X68.0 Y62.0 E133.26064
G1 X69.333336 Y63.0 E133.36064
G1 X66.666664 Y67.0 E133.93953
G1 X68.0 Y68.0 E134.04237
G1 X70.666664 Y68.0 E134.20238
G1 X72.0 Y67.0 E134.30238
G1 X69.333336 Y63.0 E134.88127
G1 X70.666664 Y62.0 E134.98412
G1 X72.0 Y62.0 E135.06412
G1 X72.0 Y62.0
G1 X73.333336 Y62.0 E135.15184
G1 X74.666664 Y63.0 E135.25185
G1 X72.0 Y67.0 E135.83073
G1 X73.333336 Y68.0 E135.93358
G1 X76.0 Y68.0 E136.09358
G1 X77.333336 Y67.0 E136.19359
G1 X74.666664 Y63.0 E136.77248
G1 X76.0 Y62.0 E136.87532
G1 X77.333336 Y62.0 E136.95532
G1 X77.333336 Y62.0
G1 X78.666664 Y62.0 E137.04305
G1 X80.0 Y63.0 E137.14305
G1 X77.333336 Y67.0 E137.72194
G1 X78.666664 Y68.0 E137.82478
G1 X81.333336 Y68.0 E137.98479
G1 X82.666664 Y67.0 E138.0848
G1 X80.0 Y63.0 E138.66368
G1 X81.333336 Y62.0 E138.76653
G1 X82.666664 Y62.0 E138.84653
G1 X82.666664 Y62.0
G1 X84.0 Y62.0 E138.93425
G1 X85.333336 Y63.0 E139.03426
G1 X82.666664 Y67.0 E139.61314
G1 X84.0 Y68.0 E139.71599
G1 X86.666664 Y68.0 E139.87599
G1 X88.0 Y67.0 E139.976
G1 X85.333336 Y63.0 E140.55489
G1 X86.666664 Y62.0 E140.65773
G1 X88.0 Y62.0 E140.73773
G1 X88.0 Y62.0
G1 X89.333336 Y62.0 E140.82545
G1 X90.666664 Y63.0 E140.92546
G1 X88.0 Y67.0 E141.50435
G1 X89.333336 Y68.0 E141.6072
G1 X92.0 Y68.0 E141.7672
G1 X93.333336 Y67.0 E141.8672
G1 X90.666664 Y63.0 E142.44609
G1 X92.0 Y62.0 E142.54893
G1 X93.333336 Y62.0 E142.62894
G1 X93.333336 Y62.0
G1 X94.666664 Y62.0 E142.71666
G1 X96.0 Y63.0 E142.81667
G1 X93.333336 Y67.0 E143.39555
G1 X94.666664 Y68.0 E143.4984
G1 X97.333336 Y68.0 E143.6584
G1 X98.666664 Y67.0 E143.7584
G1 X96.0 Y63.0 E144.3373
G1 X97.333336 Y62.0 E144.44014
G1 X98.666664 Y62.0 E144.52014
G1 X98.666664 Y62.0
G1 X100.0 Y62.0 E144.60786
G1 X101.333336 Y63.0 E144.70787
G1 X98.666664 Y67.0 E145.28676
G1 X100.0 Y68.0 E145.3896
G1 X102.666664 Y68.0 E145.5496
G1 X104.0 Y67.0 E145.64961
G1 X101.333336 Y63.0 E146.2285
G1 X102.666664 Y62.0 E146.33134
G1 X104.0 Y62.0 E146.41135
G1 X104.0 Y62.0
G1 X105.33333 Y62.0 E146.49907
G1 X106.666664 Y63.0 E146.59908
G1 X104.0 Y67.0 E147.17796
G1 X105.33333 Y68.0 E147.2808
G1 X108.0 Y68.0 E147.44081
G1 X109.33333 Y67.0 E147.54082
G1 X106.666664 Y63.0 E148.1197
G1 X108.0 Y62.0 E148.22255
G1 X109.33333 Y62.0 E148.30255
G1 X109.33333 Y62.0
G1 X110.666664 Y62.0 E148.39027
G1 X112.0 Y63.0 E148.49028
G1 X109.33333 Y67.0 E149.06917
G1 X110.666664 Y68.0 E149.17201
G1 X113.33333 Y68.0 E149.33202
G1 X114.666664 Y67.0 E149.43202
G1 X112.0 Y63.0 E150.01091
G1 X113.33333 Y62.0 E150.11375
G1 X114.666664 Y62.0 E150.19376
G1 X114.666664 Y62.0
G1 X116.0 Y62.0 E150.28148
G1 X117.33333 Y63.0 E150.38148
G1 X114.666664 Y67.0 E150.96037
G1 X116.0 Y68.0 E151.06322
G1 X118.666664 Y68.0 E151.22322
G1 X120.0 Y67.0 E151.32323
G1 X117.33333 Y63.0 E151.90211
G1 X118.666664 Y62.0 E152.00496
G1 X120.0 Y62.0 E152.08496
G1 X120.0 Y62.0
G1 X121.33333 Y62.0 E152.17268
G1 X122.666664 Y63.0 E152.27269
G1 X120.0 Y67.0 E152.85158
G1 X121.33333 Y68.0 E152.95442
G1 X124.0 Y68.0 E153.11443
G1 X125.33333 Y67.0 E153.21443
G1 X122.666664 Y63.0 E153.79332
G1 X124.0 Y62.0 E153.89616
G1 X125.33333 Y62.0 E153.97617
G1 X125.33333 Y65.0 E154.15657
G1 X125.33333 Y65.0
G1 X124.0 Y65.0 E154.2443
G1 X122.666664 Y66.0 E154.3443
G1 X125.33333 Y70.0 E154.92319
G1 X124.0 Y71.0 E155.02603
G1 X121.33333 Y71.0 E155.18604
G1 X120.0 Y70.0 E155.28604
G1 X122.666664 Y66.0 E155.86493
G1 X121.33333 Y65.0 E155.96777
G1 X120.0 Y65.0 E156.04778
G1 X120.0 Y65.0
G1 X118.666664 Y65.0 E156.1355
G1 X117.33333 Y66.0 E156.2355
G1 X120.0 Y70.0 E156.81439
G1 X118.666664 Y71.0 E156.91724
G1 X116.0 Y71.0 E157.07724
G1 X114.666664 Y70.0 E157.17725
G1 X117.33333 Y66.0 E157.75613
G1 X116.0 Y65.0 E157.85898
G1 X114.666664 Y65.0 E157.93898
G1 X114.666664 Y65.0
G1 X113.33333 Y65.0 E158.0267
G1 X112.0 Y66.0 E158.12671
G1 X114.666664 Y70.0 E158.7056
G1 X113.33333 Y71.0 E158.80844
G1 X110.666664 Y71.0 E158.96844
G1 X109.33333 Y70.0 E159.06845
G1 X112.0 Y66.0 E159.64734
G1 X110.666664 Y65.0 E159.75018
G1 X109.33333 Y65.0 E159.83018
G1 X109.33333 Y65.0
G1 X108.0 Y65.0 E159.91791
G1 X106.666664 Y66.0 E160.01791
G1 X109.33333 Y70.0 E160.5968
G1 X108.0 Y71.0 E160.69965
G1 X105.33333 Y71.0 E160.85965
G1 X104.0 Y70.0 E160.95966
G1 X106.666664 Y66.0 E161.53854
G1 X105.33333 Y65.0 E161.64139
G1 X104.0 Y65.0 E161.72139
G1 X104.0 Y65.0
G1 X102.666664 Y65.0 E161.80911
G1 X101.333336 Y66.0 E161.90912
G1 X104.0 Y70.0 E162.488
G1 X102.666664 Y71.0 E162.59085
G1 X100.0 Y71.0 E162.75085
G1 X98.666664 Y70.0 E162.85086
G1 X101.333336 Y66.0 E163.42975
G1 X100.0 Y65.0 E163.5326
G1 X98.666664 Y65.0 E163.6126
G1 X98.666664 Y65.0
G1 X97.333336 Y65.0 E163.70032
G1 X96.0 Y66.0 E163.80032
G1 X98.666664 Y70.0 E164.37921
G1 X97.333336 Y71.0 E164.48206
G1 X94.666664 Y71.0 E164.64206
G1 X93.333336 Y70.0 E164.74207
G1 X96.0 Y66.0 E165.32095
G1 X94.666664 Y65.0 E165.4238
G1 X93.333336 Y65.0 E165.5038
G1 X93.333336 Y65.0
G1 X92.0 Y65.0 E165.59152
G1 X90.666664 Y66.0 E165.69153
G1 X93.333336 Y70.0 E166.27042
G1 X92.0 Y71.0 E166.37326
G1 X89.333336 Y71.0 E166.53326
G1 X88.0 Y70.0 E166.63327
G1 X90.666664 Y66.0 E167.21216
G1 X89.333336 Y65.0 E167.315
G1 X88.0 Y65.0 E167.395
G1 X88.0 Y65.0
G1 X86.666664 Y65.0 E167.48273
G1 X85.333336 Y66.0 E167.58273
G1 X88.0 Y70.0 E168.16162
G1 X86.666664 Y71.0 E168.26447
G1 X84.0 Y71.0 E168.42447
G1 X82.666664 Y70.0 E168.52448
G1 X85.333336 Y66.0 E169.10336
G1 X84.0 Y65.0 E169.2062
G1 X82.666664 Y65.0 E169.28621
G1 X82.666664 Y65.0
G1 X81.333336 Y65.0 E169.37393
G1 X80.0 Y66.0 E169.47394
G1 X82.666664 Y70.0 E170.05283
G1 X81.333336 Y71.0 E170.15567
G1 X78.666664 Y71.0 E170.31567
G1 X77.333336 Y70.0 E170.41568
G1 X80.0 Y66.0 E170.99457
G1 X78.666664 Y65.0 E171.09741
G1 X77.333336 Y65.0 E171.17741
G1 X77.333336 Y65.0
G1 X76.0 Y65.0 E171.26514
G1 X74.666664 Y66.0 E171.36514
G1 X77.333336 Y70.0 E171.94403
G1 X76.0 Y71.0 E172.04688
G1 X73.333336 Y71.0 E172.20688
G1 X72.0 Y70.0 E172.30688
G1 X74.666664 Y66.0 E172.88577
G1 X73.333336 Y65.0 E172.98862
G1 X72.0 Y65.0 E173.06862
G1 X72.0 Y65.0
G1 X70.666664 Y65.0 E173.15634
G1 X69.333336 Y66.0 E173.25635
G1 X72.0 Y70.0 E173.83524
G1 X70.666664 Y71.0 E173.93808
G1 X68.0 Y71.0 E174.09808
G1 X66.666664 Y70.0 E174.19809
G1 X69.333336 Y66.0 E174.77698
G1 X68.0 Y65.0 E174.87982
G1 X66.666664 Y65.0 E174.95982
G1 X66.666664 Y68.0 E175.14023
G1 X66.666664 Y68.0
G1 X68.0 Y68.0 E175.22795
G1 X69.333336 Y69.0 E175.32796
G1 X66.666664 Y73.0 E175.90685
G1 X68.0 Y74.0 E176.00969
G1 X70.666664 Y74.0 E176.1697
G1 X72.0 Y73.0 E176.2697
G1 X69.333336 Y69.0 E176.84859
G1 X70.666664 Y68.0 E176.95143
G1 X72.0 Y68.0 E177.03143
G1 X72.0 Y68.0
G1 X73.333336 Y68.0 E177.11916
G1 X74.666664 Y69.0 E177.21916
G1 X72.0 Y73.0 E177.79805
G1 X73.333336 Y74.0 E177.9009
G1 X76.0 Y74.0 E178.0609
G1 X77.333336 Y73.0 E178.1609
G1 X74.666664 Y69.0 E178.73979
G1 X76.0 Y68.0 E178.84264
G1 X77.333336 Y68.0 E178.92264
G1 X77.333336 Y68.0
G1 X78.666664 Y68.0 E179.01036
G1 X80.0 Y69.0 E179.11037
G1 X77.333336 Y73.0 E179.68925
G1 X78.666664 Y74.0 E179.7921
G1 X81.333336 Y74.0 E179.9521
G1 X82.666664 Y73.0 E180.05211
G1 X80.0 Y69.0 E180.631
G1 X81.333336 Y68.0 E180.73384
G1 X82.666664 Y68.0 E180.81384
G1 X82.666664 Y68.0
G1 X84.0 Y68.0 E180.90157
G1 X85.333336 Y69.0 E181.00157
G1 X82.666664 Y73.0 E181.58046
G1 X84.0 Y74.0 E181.6833
G1 X86.666664 Y74.0 E181.8433
G1 X88.0 Y73.0 E181.94331
G1 X85.333336 Y69.0 E182.5222
G1 X86.666664 Y68.0 E182.62505
G1 X88.0 Y68.0 E182.70505
G1 X88.0 Y68.0
G1 X89.333336 Y68.0 E182.79277
G1 X90.666664 Y69.0 E182.89278
G1 X88.0 Y73.0 E183.47166
G1 X89.333336 Y74.0 E183.57451
G1 X92.0 Y74.0 E183.73451
G1 X93.333336 Y73.0 E183.83452
G1 X90.666664 Y69.0 E184.4134
G1 X92.0 Y68.0 E184.51625
G1 X93.333336 Y68.0 E184.59625
G1 X93.333336 Y68.0
G1 X94.666664 Y68.0 E184.68398
G1 X96.0 Y69.0 E184.78398
G1 X93.333336 Y73.0 E185.36287
G1 X94.666664 Y74.0 E185.46571
G1 X97.333336 Y74.0 E185.62572
G1 X98.666664 Y73.0 E185.72572
G1 X96.0 Y69.0 E186.30461
G1 X97.333336 Y68.0 E186.40746
G1 X98.666664 Y68.0 E186.48746
G1 X98.666664 Y68.0
G1 X100.0 Y68.0 E186.57518
G1 X101.333336 Y69.0 E186.67519
G1 X98.666664 Y73.0 E187.25407
G1 X100.0 Y74.0 E187.35692
G1 X102.666664 Y74.0 E187.51692
G1 X104.0 Y73.0 E187.61693
G1 X101.333336 Y69.0 E188.19582
G1 X102.666664 Y68.0 E188.29866
G1 X104.0 Y68.0 E188.37866
G1 X104.0 Y68.0
G1 X105.33333 Y68.0 E188.46638
G1 X106.666664 Y69.0 E188.56639
G1 X104.0 Y73.0 E189.14528
G1 X105.33333 Y74.0 E189.24812
G1 X108.0 Y74.0 E189.40813
G1 X109.33333 Y73.0 E189.50813
G1 X106.666664 Y69.0 E190.08702
G1 X108.0 Y68.0 E190.18987
G1 X109.33333 Y68.0 E190.26987
G1 X109.33333 Y68.0
G1 X110.666664 Y68.0 E190.35759
G1 X112.0 Y69.0 E190.4576
G1 X109.33333 Y73.0 E191.03648
G1 X110.666664 Y74.0 E191.13933
G1 X113.33333 Y74.0 E191.29933
G1 X114.666664 Y73.0 E191.39934
G1 X112.0 Y69.0 E191.97823
G1 X113.33333 Y68.0 E192.08107
G1 X114.666664 Y68.0 E192.16107
G1 X114.666664 Y68.0
G1 X116.0 Y68.0 E192.2488
G1 X117.33333 Y69.0 E192.3488
G1 X114.666664 Y73.0 E192.92769
G1 X116.0 Y74.0 E193.03053
G1 X118.666664 Y74.0 E193.19054
G1 X120.0 Y73.0 E193.29054
G1 X117.33333 Y69.0 E193.86943
G1 X118.666664 Y68.0 E193.97227
G1 X120.0 Y68.0 E194.05228
G1 X120.0 Y68.0
G1 X121.33333 Y68.0 E194.14
G1 X122.666664 Y69.0 E194.24
G1 X120.0 Y73.0 E194.8189
G1 X121.33333 Y74.0 E194.92174
G1 X124.0 Y74.0 E195.08174
G1 X125.33333 Y73.0 E195.18175
G1 X122.666664 Y69.0 E195.76064
G1 X124.0 Y68.0 E195.86348
G1 X125.33333 Y68.0 E195.94348
G1 X125.33333 Y71.0 E196.12389
G1 X125.33333 Y71.0
G1 X124.0 Y71.0 E196.21161
G1 X122.666664 Y72.0 E196.31161
G1 X125.33333 Y76.0 E196.8905
G1 X124.0 Y77.0 E196.99335
G1 X121.33333 Y77.0 E197.15335
G1 X120.0 Y76.0 E197.25336
G1 X122.666664 Y72.0 E197.83224
G1 X121.33333 Y71.0 E197.93509
G1 X120.0 Y71.0 E198.01509
G1 X120.0 Y71.0
G1 X118.666664 Y71.0 E198.10281
G1 X117.33333 Y72.0 E198.20282
G1 X120.0 Y76.0 E198.78171
G1 X118.666664 Y77.0 E198.88455
G1 X116.0 Y77.0 E199.04456
G1 X114.666664 Y76.0 E199.14456
G1 X117.33333 Y72.0 E199.72345
G1 X116.0 Y71.0 E199.8263
G1 X114.666664 Y71.0 E199.9063
G1 X114.666664 Y71.0
G1 X113.33333 Y71.0 E199.99402
G1 X112.0 Y72.0 E200.09402
G1 X114.666664 Y76.0 E200.67291
G1 X113.33333 Y77.0 E200.77576
G1 X110.666664 Y77.0 E200.93576
G1 X109.33333 Y76.0 E201.03577
G1 X112.0 Y72.0 E201.61465
G1 X110.666664 Y71.0 E201.7175
G1 X109.33333 Y71.0 E201.7975
G1 X109.33333 Y71.0
G1 X108.0 Y71.0 E201.88522
G1 X106.666664 Y72.0 E201.98523
G1 X109.33333 Y76.0 E202.56412
G1 X108.0 Y77.0 E202.66696
G1 X105.33333 Y77.0 E202.82697
G1 X104.0 Y76.0 E202.92697
G1 X106.666664 Y72.0 E203.50586
G1 X105.33333 Y71.0 E203.6087
G1 X104.0 Y71.0 E203.6887
G1 X104.0 Y71.0
G1 X102.666664 Y71.0 E203.77643
G1 X101.333336 Y72.0 E203.87643
G1 X104.0 Y76.0 E204.45532
G1 X102.666664 Y77.0 E204.55817
G1 X100.0 Y77.0 E204.71817
G1 X98.666664 Y76.0 E204.81818
G1 X101.333336 Y72.0 E205.39706
G1 X100.0 Y71.0 E205.49991
G1 X98.666664 Y71.0 E205.57991
G1 X98.666664 Y71.0
G1 X97.333336 Y71.0 E205.66763
G1 X96.0 Y72.0 E205.76764
G1 X98.666664 Y76.0 E206.34653
G1 X97.333336 Y77.0 E206.44937
G1 X94.666664 Y77.0 E206.60938
G1 X93.333336 Y76.0 E206.70938
G1 X96.0 Y72.0 E207.28827
G1 X94.666664 Y71.0 E207.39111
G1 X93.333336 Y71.0 E207.47112
G1 X93.333336 Y71.0
G1 X92.0 Y71.0 E207.55884
G1 X90.666664 Y72.0 E207.65884
G1 X93.333336 Y76.0 E208.23773
G1 X92.0 Y77.0 E208.34058
G1 X89.333336 Y77.0 E208.50058
G1 X88.0 Y76.0 E208.60059
G1 X90.666664 Y72.0 E209.17947
G1 X89.333336 Y71.0 E209.28232
G1 X88.0 Y71.0 E209.36232
G1 X88.0 Y71.0
G1 X86.666664 Y71.0 E209.45004
G1 X85.333336 Y72.0 E209.55005
G1 X88.0 Y76.0 E210.12894
G1 X86.666664 Y77.0 E210.23178
G1 X84.0 Y77.0 E210.39178
G1 X82.666664 Y76.0 E210.49179
G1 X85.333336 Y72.0 E211.07068
G1 X84.0 Y71.0 E211.17352
G1 X82.666664 Y71.0 E211.25352
G1 X82.666664 Y71.0
G1 X81.333336 Y71.0 E211.34125
G1 X80.0 Y72.0 E211.44125
G1 X82.666664 Y76.0 E212.02014
G1 X81.333336 Y77.0 E212.12299
G1 X78.666664 Y77.0 E212.28299
G1 X77.333336 Y76.0 E212.383
G1 X80.0 Y72.0 E212.96188
G1 X78.666664 Y71.0 E213.06473
G1 X77.333336 Y71.0 E213.14473
G1 X77.333336 Y71.0
G1 X76.0 Y71.0 E213.23245
G1 X74.666664 Y72.0 E213.33246
G1 X77.333336 Y76.0 E213.91135
G1 X76.0 Y77.0 E214.01419
G1 X73.333336 Y77.0 E214.1742
G1 X72.0 Y76.0 E214.2742
G1 X74.666664 Y72.0 E214.85309
G1 X73.333336 Y71.0 E214.95593
G1 X72.0 Y71.0 E215.03593
G1 X72.0 Y71.0
G1 X70.666664 Y71.0 E215.12366
G1 X69.333336 Y72.0 E215.22366
G1 X72.0 Y76.0 E215.80255
G1 X70.666664 Y77.0 E215.9054
G1 X68.0 Y77.0 E216.0654
G1 X66.666664 Y76.0 E216.1654
G1 X69.333336 Y72.0 E216.7443
G1 X68.0 Y71.0 E216.84714
G1 X66.666664 Y71.0 E216.92714
G1 X66.666664 Y74.0 E217.10754
G1 X66.666664 Y74.0
G1 X68.0 Y74.0 E217.19527
G1 X69.333336 Y75.0 E217.29527
G1 X66.666664 Y79.0 E217.87416
G1 X68.0 Y80.0 E217.977
G1 X70.666664 Y80.0 E218.13701
G1 X72.0 Y79.0 E218.23701
G1 X69.333336 Y75.0 E218.8159
G1 X70.666664 Y74.0 E218.91875
G1 X72.0 Y74.0 E218.99875
G1 X72.0 Y74.0
G1 X73.333336 Y74.0 E219.08647
G1 X74.666664 Y75.0 E219.18648
G1 X72.0 Y79.0 E219.76537
G1 X73.333336 Y80.0 E219.86821
G1 X76.0 Y80.0 E220.02821
G1 X77.333336 Y79.0 E220.12822
G1 X74.666664 Y75.0 E220.7071
G1 X76.0 Y74.0 E220.80995
G1 X77.333336 Y74.0 E220.88995
G1 X77.333336 Y74.0
G1 X78.666664 Y74.0 E220.97768
G1 X80.0 Y75.0 E221.07768
G1 X77.333336 Y79.0 E221.65657
G1 X78.666664 Y80.0 E221.75941
G1 X81.333336 Y80.0 E221.91942
G1 X82.666664 Y79.0 E222.01942
G1 X80.0 Y75.0 E222.59831
G1 X81.333336 Y74.0 E222.70116
G1 X82.666664 Y74.0 E222.78116
G1 X82.666664 Y74.0
G1 X84.0 Y74.0 E222.86888
G1 X85.333336 Y75.0 E222.96889
G1 X82.666664 Y79.0 E223.54778
G1 X84.0 Y80.0 E223.65062
G1 X86.666664 Y80.0 E223.81062
G1 X88.0 Y79.0 E223.91063
G1 X85.333336 Y75.0 E224.48952
G1 X86.666664 Y74.0 E224.59236
G1 X88.0 Y74.0 E224.67236
G1 X88.0 Y74.0
G1 X89.333336 Y74.0 E224.76009
G1 X90.666664 Y75.0 E224.86009
G1 X88.0 Y79.0 E225.43898
G1 X89.333336 Y80.0 E225.54182
G1 X92.0 Y80.0 E225.70183
G1 X93.333336 Y79.0 E225.80183
G1 X90.666664 Y75.0 E226.38072
G1 X92.0 Y74.0 E226.48357
G1 X93.333336 Y74.0 E226.56357
G1 X93.333336 Y74.0
G1 X94.666664 Y74.0 E226.65129
G1 X96.0 Y75.0 E226.7513
G1 X93.333336 Y79.0 E227.33018
G1 X94.666664 Y80.0 E227.43303
G1 X97.333336 Y80.0 E227.59303
G1 X98.666664 Y79.0 E227.69304
G1 X96.0 Y75.0 E228.27193
G1 X97.333336 Y74.0 E228.37477
G1 X98.666664 Y74.0 E228.45477
G1 X98.666664 Y74.0
G1 X100.0 Y74.0 E228.5425
G1 X101.333336 Y75.0 E228.6425
G1 X98.666664 Y79.0 E229.22139
G1 X100.0 Y80.0 E229.32423
G1 X102.666664 Y80.0 E229.48424
G1 X104.0 Y79.0 E229.58424
G1 X101.333336 Y75.0 E230.16313
G1 X102.666664 Y74.0 E230.26598
G1 X104.0 Y74.0 E230.34598
G1 X104.0 Y74.0
G1 X105.33333 Y74.0 E230.4337
G1 X106.666664 Y75.0 E230.5337
G1 X104.0 Y79.0 E231.1126
G1 X105.33333 Y80.0 E231.21544
G1 X108.0 Y80.0 E231.37544
G1 X109.33333 Y79.0 E231.47545
G1 X106.666664 Y75.0 E232.05434
G1 X108.0 Y74.0 E232.15718
G1 X109.33333 Y74.0 E232.23718
G1 X109.33333 Y74.0
G1 X110.666664 Y74.0 E232.3249
G1 X112.0 Y75.0 E232.42491
G1 X109.33333 Y79.0 E233.0038
G1 X110.666664 Y80.0 E233.10664
G1 X113.33333 Y80.0 E233.26665
G1 X114.666664 Y79.0 E233.36665
G1 X112.0 Y75.0 E233.94554
G1 X113.33333 Y74.0 E234.04839
G1 X114.666664 Y74.0 E234.12839
G1 X114.666664 Y74.0
G1 X116.0 Y74.0 E234.21611
G1 X117.33333 Y75.0 E234.31612
G1 X114.666664 Y79.0 E234.895
G1 X116.0 Y80.0 E234.99785
G1 X118.666664 Y80.0 E235.15785
G1 X120.0 Y79.0 E235.25786
G1 X117.33333 Y75.0 E235.83675
G1 X118.666664 Y74.0 E235.93959
G1 X120.0 Y74.0 E236.01959
G1 X120.0 Y74.0
G1 X121.33333 Y74.0 E236.10732
G1 X122.666664 Y75.0 E236.20732
G1 X120.0 Y79.0 E236.78621
G1 X121.33333 Y80.0 E236.88905
G1 X124.0 Y80.0 E237.04906
G1 X125.33333 Y79.0 E237.14906
G1 X122.666664 Y75.0 E237.72795
G1 X124.0 Y74.0 E237.8308
G1 X125.33333 Y74.0 E237.9108
G1 X125.33333 Y77.0 E238.0912
G1 X125.33333 Y77.0
G1 X124.0 Y77.0 E238.17892
G1 X122.666664 Y78.0 E238.27893
G1 X125.33333 Y82.0 E238.85782
G1 X124.0 Y83.0 E238.96066
G1 X121.33333 Y83.0 E239.12067
G1 X120.0 Y82.0 E239.22067
G1 X122.666664 Y78.0 E239.79956
G1 X121.33333 Y77.0 E239.9024
G1 X120.0 Y77.0 E239.9824
G1 X120.0 Y77.0
G1 X118.666664 Y77.0 E240.07013
G1 X117.33333 Y78.0 E240.17014
G1 X120.0 Y82.0 E240.74902
G1 X118.666664 Y83.0 E240.85187
G1 X116.0 Y83.0 E241.01187
G1 X114.666664 Y82.0 E241.11188
G1 X117.33333 Y78.0 E241.69077
G1 X116.0 Y77.0 E241.79361
G1 X114.666664 Y77.0 E241.87361
G1 X114.666664 Y77.0
G1 X113.33333 Y77.0 E241.96133
G1 X112.0 Y78.0 E242.06134
G1 X114.666664 Y82.0 E242.64023
G1 X113.33333 Y83.0 E242.74307
G1 X110.666664 Y83.0 E242.90308
G1 X109.33333 Y82.0 E243.00308
G1 X112.0 Y78.0 E243.58197
G1 X110.666664 Y77.0 E243.68481
G1 X109.33333 Y77.0 E243.76482
G1 X109.33333 Y77.0
G1 X108.0 Y77.0 E243.85254
G1 X106.666664 Y78.0 E243.95255
G1 X109.33333 Y82.0 E244.53143
G1 X108.0 Y83.0 E244.63428
G1 X105.33333 Y83.0 E244.79428
G1 X104.0 Y82.0 E244.89429
G1 X106.666664 Y78.0 E245.47318
G1 X105.33333 Y77.0 E245.57602
G1 X104.0 Y77.0 E245.65602
G1 X104.0 Y77.0
G1 X102.666664 Y77.0 E245.74374
G1 X101.333336 Y78.0 E245.84375
G1 X104.0 Y82.0 E246.42264
G1 X102.666664 Y83.0 E246.52548
G1 X100.0 Y83.0 E246.68549
G1 X98.666664 Y82.0 E246.78549
G1 X101.333336 Y78.0 E247.36438
G1 X100.0 Y77.0 E247.46722
G1 X98.666664 Y77.0 E247.54723
G1 X98.666664 Y77.0
G1 X97.333336 Y77.0 E247.63495
G1 X96.0 Y78.0 E247.73495
G1 X98.666664 Y82.0 E248.31384
G1 X97.333336 Y83.0 E248.41669
G1 X94.666664 Y83.0 E248.57669
G1 X93.333336 Y82.0 E248.6767
G1 X96.0 Y78.0 E249.25558
G1 X94.666664 Y77.0 E249.35843
G1 X93.333336 Y77.0 E249.43843
G1 X93.333336 Y77.0
G1 X92.0 Y77.0 E249.52615
G1 X90.666664 Y78.0 E249.62616
G1 X93.333336 Y82.0 E250.20505
G1 X92.0 Y83.0 E250.30789
G1 X89.333336 Y83.0 E250.4679
G1 X88.0 Y82.0 E250.5679
G1 X90.666664 Y78.0 E251.14679
G1 X89.333336 Y77.0 E251.24963
G1 X88.0 Y77.0 E251.32964
G1 X88.0 Y77.0
G1 X86.666664 Y77.0 E251.41736
G1 X85.333336 Y78.0 E251.51736
G1 X88.0 Y82.0 E252.09625
G1 X86.666664 Y83.0 E252.1991
G1 X84.0 Y83.0 E252.3591
G1 X82.666664 Y82.0 E252.4591
G1 X85.333336 Y78.0 E253.038
G1 X84.0 Y77.0 E253.14084
G1 X82.666664 Y77.0 E253.22084
G1 X82.666664 Y77.0
G1 X81.333336 Y77.0 E253.30856
G1 X80.0 Y78.0 E253.40857
G1 X82.666664 Y82.0 E253.98746
G1 X81.333336 Y83.0 E254.0903
G1 X78.666664 Y83.0 E254.2503
G1 X77.333336 Y82.0 E254.35031
G1 X80.0 Y78.0 E254.9292
G1 X78.666664 Y77.0 E255.03204
G1 X77.333336 Y77.0 E255.11205
G1 X77.333336 Y77.0
G1 X76.0 Y77.0 E255.19977
G1 X74.666664 Y78.0 E255.29977
G1 X77.333336 Y82.0 E255.87866
G1 X76.0 Y83.0 E255.9815
G1 X73.333336 Y83.0 E256.1415
G1 X72.0 Y82.0 E256.24152
G1 X74.666664 Y78.0 E256.8204
G1 X73.333336 Y77.0 E256.92325
G1 X72.0 Y77.0 E257.00323
G1 X72.0 Y77.0
G1 X70.666664 Y77.0 E257.09097
G1 X69.333336 Y78.0 E257.19098
G1 X72.0 Y82.0 E257.76987
G1 X70.666664 Y83.0 E257.8727
G1 X68.0 Y83.0 E258.0327
G1 X66.666664 Y82.0 E258.13272
G1 X69.333336 Y78.0 E258.7116
G1 X68.0 Y77.0 E258.81445
G1 X66.666664 Y77.0 E258.89444
G1 X66.666664 Y80.0 E259.07483
G1 X66.666664 Y80.0
G1 X68.0 Y80.0 E259.16257
G1 X69.333336 Y81.0 E259.26257
G1 X66.666664 Y85.0 E259.84146
G1 X68.0 Y86.0 E259.9443
G1 X70.666664 Y86.0 E260.1043
G1 X72.0 Y85.0 E260.2043
G1 X69.333336 Y81.0 E260.7832
G1 X70.666664 Y80.0 E260.88605
G1 X72.0 Y80.0 E260.96603
G1 X72.0 Y80.0
G1 X73.333336 Y80.0 E261.05377
G1 X74.666664 Y81.0 E261.15378
G1 X72.0 Y85.0 E261.73267
G1 X73.333336 Y86.0 E261.8355
G1 X76.0 Y86.0 E261.9955
G1 X77.333336 Y85.0 E262.09552
G1 X74.666664 Y81.0 E262.6744
G1 X76.0 Y80.0 E262.77725
G1 X77.333336 Y80.0 E262.85724
G1 X77.333336 Y80.0
G1 X78.666664 Y80.0 E262.94498
G1 X80.0 Y81.0 E263.04498
G1 X77.333336 Y85.0 E263.62387
G1 X78.666664 Y86.0 E263.7267
G1 X81.333336 Y86.0 E263.88672
G1 X82.666664 Y85.0 E263.98672
G1 X80.0 Y81.0 E264.5656
G1 X81.333336 Y80.0 E264.66846
G1 X82.666664 Y80.0 E264.74844
G1 X82.666664 Y80.0
G1 X84.0 Y80.0 E264.83618
G1 X85.333336 Y81.0 E264.9362
G1 X82.666664 Y85.0 E265.51508
G1 X84.0 Y86.0 E265.61792
G1 X86.666664 Y86.0 E265.77792
G1 X88.0 Y85.0 E265.87793
G1 X85.333336 Y81.0 E266.45682
G1 X86.666664 Y80.0 E266.55966
G1 X88.0 Y80.0 E266.63965
G1 X88.0 Y80.0
G1 X89.333336 Y80.0 E266.7274
G1 X90.666664 Y81.0 E266.8274
G1 X88.0 Y85.0 E267.40628
G1 X89.333336 Y86.0 E267.50912
G1 X92.0 Y86.0 E267.66913
G1 X93.333336 Y85.0 E267.76913
G1 X90.666664 Y81.0 E268.34802
G1 X92.0 Y80.0 E268.45087
G1 X93.333336 Y80.0 E268.53085
G1 X93.333336 Y80.0
G1 X94.666664 Y80.0 E268.6186
G1 X96.0 Y81.0 E268.7186
G1 X93.333336 Y85.0 E269.2975
G1 X94.666664 Y86.0 E269.40033
G1 X97.333336 Y86.0 E269.56033
G1 X98.666664 Y85.0 E269.66034
G1 X96.0 Y81.0 E270.23923
G1 X97.333336 Y80.0 E270.34207
G1 X98.666664 Y80.0 E270.42206
G1 X98.666664 Y80.0
G1 X100.0 Y80.0 E270.5098
G1 X101.333336 Y81.0 E270.6098
G1 X98.666664 Y85.0 E271.1887
G1 X100.0 Y86.0 E271.29153
G1 X102.666664 Y86.0 E271.45154
G1 X104.0 Y85.0 E271.55154
G1 X101.333336 Y81.0 E272.13043
G1 X102.666664 Y80.0 E272.23328
G1 X104.0 Y80.0 E272.31326
G1 X104.0 Y80.0
G1 X105.33333 Y80.0 E272.401
G1 X106.666664 Y81.0 E272.501
G1 X104.0 Y85.0 E273.0799
G1 X105.33333 Y86.0 E273.18274
G1 X108.0 Y86.0 E273.34274
G1 X109.33333 Y85.0 E273.44275
G1 X106.666664 Y81.0 E274.02164
G1 X108.0 Y80.0 E274.12448
G1 X109.33333 Y80.0 E274.20447
G1 X109.33333 Y80.0
G1 X110.666664 Y80.0 E274.2922
G1 X112.0 Y81.0 E274.3922
G1 X109.33333 Y85.0 E274.9711
G1 X110.666664 Y86.0 E275.07394
G1 X113.33333 Y86.0 E275.23395
G1 X114.666664 Y85.0 E275.33395
G1 X112.0 Y81.0 E275.91284
G1 X113.33333 Y80.0 E276.0157
G1 X114.666664 Y80.0 E276.09567
G1 X114.666664 Y80.0
G1 X116.0 Y80.0 E276.1834
G1 X117.33333 Y81.0 E276.28342
G1 X114.666664 Y85.0 E276.8623
G1 X116.0 Y86.0 E276.96515
G1 X118.666664 Y86.0 E277.12515
G1 X120.0 Y85.0 E277.22516
G1 X117.33333 Y81.0 E277.80405
G1 X118.666664 Y80.0 E277.9069
G1 X120.0 Y80.0 E277.98688
G1 X120.0 Y80.0
G1 X121.33333 Y80.0 E278.07462
G1 X122.666664 Y81.0 E278.17462
G1 X120.0 Y85.0 E278.7535
G1 X121.33333 Y86.0 E278.85635
G1 X124.0 Y86.0 E279.01636
G1 X125.33333 Y85.0 E279.11636
G1 X122.666664 Y81.0 E279.69525
G1 X124.0 Y80.0 E279.7981
G1 X125.33333 Y80.0 E279.87808
G1 X125.33333 Y83.0 E280.05847
G1 X125.33333 Y83.0
G1 X124.0 Y83.0 E280.1462
G1 X122.666664 Y84.0 E280.24622
G1 X125.33333 Y88.0 E280.8251
G1 X124.0 Y89.0 E280.92795
G1 X121.33333 Y89.0 E281.08795
G1 X120.0 Y88.0 E281.18796
G1 X122.666664 Y84.0 E281.76685
G1 X121.33333 Y83.0 E281.8697
G1 X120.0 Y83.0 E281.94968
G1 X120.0 Y83.0
G1 X118.666664 Y83.0 E282.0374
G1 X117.33333 Y84.0 E282.13742
G1 X120.0 Y88.0 E282.7163
G1 X118.666664 Y89.0 E282.81915
G1 X116.0 Y89.0 E282.97916
G1 X114.666664 Y88.0 E283.07916
G1 X117.33333 Y84.0 E283.65805
G1 X116.0 Y83.0 E283.7609
G1 X114.666664 Y83.0 E283.84088
G1 X114.666664 Y83.0
G1 X113.33333 Y83.0 E283.92862
G1 X112.0 Y84.0 E284.02863
G1 X114.666664 Y88.0 E284.6075
G1 X113.33333 Y89.0 E284.71036
G1 X110.666664 Y89.0 E284.87036
G1 X109.33333 Y88.0 E284.97037
G1 X112.0 Y84.0 E285.54926
G1 X110.666664 Y83.0 E285.6521
G1 X109.33333 Y83.0 E285.7321
G1 X109.33333 Y83.0
G1 X108.0 Y83.0 E285.81982
G1 X106.666664 Y84.0 E285.91983
G1 X109.33333 Y88.0 E286.49872
G1 X108.0 Y89.0 E286.60156
G1 X105.33333 Y89.0 E286.76157
G1 X104.0 Y88.0 E286.86157
G1 X106.666664 Y84.0 E287.44046
G1 X105.33333 Y83.0 E287.5433
G1 X104.0 Y83.0 E287.6233
G1 X104.0 Y83.0
G1 X102.666664 Y83.0 E287.71103
G1 X101.333336 Y84.0 E287.81104
G1 X104.0 Y88.0 E288.38992
G1 X102.666664 Y89.0 E288.49277
G1 X100.0 Y89.0 E288.65277
G1 X98.666664 Y88.0 E288.75278
G1 X101.333336 Y84.0 E289.33167
G1 X100.0 Y83.0 E289.4345
G1 X98.666664 Y83.0 E289.5145
G1 X98.666664 Y83.0
G1 X97.333336 Y83.0 E289.60223
G1 X96.0 Y84.0 E289.70224
G1 X98.666664 Y88.0 E290.28113
G1 X97.333336 Y89.0 E290.38397
G1 X94.666664 Y89.0 E290.54398
G1 X93.333336 Y88.0 E290.64398
G1 X96.0 Y84.0 E291.22287
G1 X94.666664 Y83.0 E291.3257
G1 X93.333336 Y83.0 E291.4057
G1 X93.333336 Y83.0
G1 X92.0 Y83.0 E291.49344
G1 X90.666664 Y84.0 E291.59344
G1 X93.333336 Y88.0 E292.17233
G1 X92.0 Y89.0 E292.27518
G1 X89.333336 Y89.0 E292.43518
G1 X88.0 Y88.0 E292.5352
G1 X90.666664 Y84.0 E293.11407
G1 X89.333336 Y83.0 E293.21692
G1 X88.0 Y83.0 E293.2969
G1 X88.0 Y83.0
G1 X86.666664 Y83.0 E293.38464
G1 X85.333336 Y84.0 E293.48465
G1 X88.0 Y88.0 E294.06354
G1 X86.666664 Y89.0 E294.16638
G1 X84.0 Y89.0 E294.3264
G1 X82.666664 Y88.0 E294.4264
G1 X85.333336 Y84.0 E295.00528
G1 X84.0 Y83.0 E295.10812
G1 X82.666664 Y83.0 E295.1881
G1 X82.666664 Y83.0
G1 X81.333336 Y83.0 E295.27585
G1 X80.0 Y84.0 E295.37585
G1 X82.666664 Y88.0 E295.95474
G1 X81.333336 Y89.0 E296.0576
G1 X78.666664 Y89.0 E296.2176
G1 X77.333336 Y88.0 E296.3176
G1 X80.0 Y84.0 E296.89648
G1 X78.666664 Y83.0 E296.99933
G1 X77.333336 Y83.0 E297.0793
G1 X77.333336 Y83.0
G1 X76.0 Y83.0 E297.16705
G1 X74.666664 Y84.0 E297.26706
G1 X77.333336 Y88.0 E297.84595
G1 X76.0 Y89.0 E297.9488
G1 X73.333336 Y89.0 E298.1088
G1 X72.0 Y88.0 E298.2088
G1 X74.666664 Y84.0 E298.7877
G1 X73.333336 Y83.0 E298.89053
G1 X72.0 Y83.0 E298.97052
G1 X72.0 Y83.0
G1 X70.666664 Y83.0 E299.05826
G1 X69.333336 Y84.0 E299.15826
G1 X72.0 Y88.0 E299.73715
G1 X70.666664 Y89.0 E299.84
G1 X68.0 Y89.0 E300.0
G1 X66.666664 Y88.0 E300.1
G1 X69.333336 Y84.0 E300.6789
G1 X68.0 Y83.0 E300.78174
G1 X66.666664 Y83.0 E300.86172
G1 X66.666664 Y86.0 E301.0421
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
