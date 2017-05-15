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
G1 F1200.0
G1 Z1.4
G1 X68.0 Y50.0 E49.34792
G1 X69.333336 Y51.0 E49.481255
G1 X66.666664 Y55.0 E50.494297
G1 X68.0 Y56.0 E50.631416
G1 X70.666664 Y56.0 E50.84475
G1 X72.0 Y55.0 E50.978085
G1 X69.333336 Y51.0 E51.991127
G1 X70.666664 Y50.0 E52.128246
G1 X72.0 Y50.0 E52.234913
G1 X72.0 Y50.0
G1 X73.333336 Y50.0 E52.342773
G1 X74.666664 Y51.0 E52.476105
G1 X72.0 Y55.0 E53.489147
G1 X73.333336 Y56.0 E53.626266
G1 X76.0 Y56.0 E53.8396
G1 X77.333336 Y55.0 E53.97293
G1 X74.666664 Y51.0 E54.985973
G1 X76.0 Y50.0 E55.123093
G1 X77.333336 Y50.0 E55.22976
G1 X77.333336 Y50.0
G1 X78.666664 Y50.0 E55.33762
G1 X80.0 Y51.0 E55.470955
G1 X77.333336 Y55.0 E56.483997
G1 X78.666664 Y56.0 E56.621117
G1 X81.333336 Y56.0 E56.83445
G1 X82.666664 Y55.0 E56.96778
G1 X80.0 Y51.0 E57.980824
G1 X81.333336 Y50.0 E58.117943
G1 X82.666664 Y50.0 E58.22461
G1 X82.666664 Y50.0
G1 X84.0 Y50.0 E58.33247
G1 X85.333336 Y51.0 E58.465805
G1 X82.666664 Y55.0 E59.478848
G1 X84.0 Y56.0 E59.615967
G1 X86.666664 Y56.0 E59.8293
G1 X88.0 Y55.0 E59.962635
G1 X85.333336 Y51.0 E60.975677
G1 X86.666664 Y50.0 E61.112797
G1 X88.0 Y50.0 E61.219463
G1 X88.0 Y50.0
G1 X89.333336 Y50.0 E61.327324
G1 X90.666664 Y51.0 E61.460655
G1 X88.0 Y55.0 E62.473698
G1 X89.333336 Y56.0 E62.610817
G1 X92.0 Y56.0 E62.82415
G1 X93.333336 Y55.0 E62.95748
G1 X90.666664 Y51.0 E63.970524
G1 X92.0 Y50.0 E64.10764
G1 X93.333336 Y50.0 E64.21431
G1 X93.333336 Y50.0
G1 X94.666664 Y50.0 E64.32217
G1 X96.0 Y51.0 E64.4555
G1 X93.333336 Y55.0 E65.468544
G1 X94.666664 Y56.0 E65.60567
G1 X97.333336 Y56.0 E65.819
G1 X98.666664 Y55.0 E65.95233
G1 X96.0 Y51.0 E66.96538
G1 X97.333336 Y50.0 E67.1025
G1 X98.666664 Y50.0 E67.20917
G1 X98.666664 Y50.0
G1 X100.0 Y50.0 E67.317024
G1 X101.333336 Y51.0 E67.450356
G1 X98.666664 Y55.0 E68.4634
G1 X100.0 Y56.0 E68.600525
G1 X102.666664 Y56.0 E68.81386
G1 X104.0 Y55.0 E68.94719
G1 X101.333336 Y51.0 E69.960236
G1 X102.666664 Y50.0 E70.09736
G1 X104.0 Y50.0 E70.204025
G1 X104.0 Y50.0
G1 X105.33333 Y50.0 E70.31188
G1 X106.666664 Y51.0 E70.44521
G1 X104.0 Y55.0 E71.45825
G1 X105.33333 Y56.0 E71.59537
G1 X108.0 Y56.0 E71.8087
G1 X109.33333 Y55.0 E71.94203
G1 X106.666664 Y51.0 E72.95508
G1 X108.0 Y50.0 E73.0922
G1 X109.33333 Y50.0 E73.19887
G1 X109.33333 Y50.0
G1 X110.666664 Y50.0 E73.306725
G1 X112.0 Y51.0 E73.440056
G1 X109.33333 Y55.0 E74.4531
G1 X110.666664 Y56.0 E74.590225
G1 X113.33333 Y56.0 E74.80356
G1 X114.666664 Y55.0 E74.93689
G1 X112.0 Y51.0 E75.949936
G1 X113.33333 Y50.0 E76.08705
G1 X114.666664 Y50.0 E76.19372
G1 X114.666664 Y50.0
G1 X116.0 Y50.0 E76.301575
G1 X117.33333 Y51.0 E76.434906
G1 X114.666664 Y55.0 E77.44795
G1 X116.0 Y56.0 E77.585075
G1 X118.666664 Y56.0 E77.79841
G1 X120.0 Y55.0 E77.93174
G1 X117.33333 Y51.0 E78.944786
G1 X118.666664 Y50.0 E79.08191
G1 X120.0 Y50.0 E79.188576
G1 X120.0 Y50.0
G1 X121.33333 Y50.0 E79.29643
G1 X122.666664 Y51.0 E79.42976
G1 X120.0 Y55.0 E80.44281
G1 X121.33333 Y56.0 E80.579926
G1 X124.0 Y56.0 E80.79326
G1 X125.33333 Y55.0 E80.92659
G1 X122.666664 Y51.0 E81.93964
G1 X124.0 Y50.0 E82.07676
G1 X125.33333 Y50.0 E82.183426
G1 X125.33333 Y53.0 E82.48409
G1 X125.33333 Y53.0
G1 X124.0 Y53.0 E82.59195
G1 X122.666664 Y54.0 E82.72528
G1 X125.33333 Y58.0 E83.73833
G1 X124.0 Y59.0 E83.87544
G1 X121.33333 Y59.0 E84.088776
G1 X120.0 Y58.0 E84.22211
G1 X122.666664 Y54.0 E85.23515
G1 X121.33333 Y53.0 E85.37228
G1 X120.0 Y53.0 E85.47894
G1 X120.0 Y53.0
G1 X118.666664 Y53.0 E85.5868
G1 X117.33333 Y54.0 E85.72013
G1 X120.0 Y58.0 E86.73318
G1 X118.666664 Y59.0 E86.8703
G1 X116.0 Y59.0 E87.08363
G1 X114.666664 Y58.0 E87.216965
G1 X117.33333 Y54.0 E88.23001
G1 X116.0 Y53.0 E88.36713
G1 X114.666664 Y53.0 E88.47379
G1 X114.666664 Y53.0
G1 X113.33333 Y53.0 E88.58165
G1 X112.0 Y54.0 E88.71498
G1 X114.666664 Y58.0 E89.72803
G1 X113.33333 Y59.0 E89.86515
G1 X110.666664 Y59.0 E90.07848
G1 X109.33333 Y58.0 E90.211815
G1 X112.0 Y54.0 E91.22486
G1 X110.666664 Y53.0 E91.361984
G1 X109.33333 Y53.0 E91.46865
G1 X109.33333 Y53.0
G1 X108.0 Y53.0 E91.57651
G1 X106.666664 Y54.0 E91.70984
G1 X109.33333 Y58.0 E92.722885
G1 X108.0 Y59.0 E92.86
G1 X105.33333 Y59.0 E93.07333
G1 X104.0 Y58.0 E93.206665
G1 X106.666664 Y54.0 E94.21971
G1 X105.33333 Y53.0 E94.356834
G1 X104.0 Y53.0 E94.4635
G1 X104.0 Y53.0
G1 X102.666664 Y53.0 E94.57136
G1 X101.333336 Y54.0 E94.70469
G1 X104.0 Y58.0 E95.717735
G1 X102.666664 Y59.0 E95.85486
G1 X100.0 Y59.0 E96.06819
G1 X98.666664 Y58.0 E96.20152
G1 X101.333336 Y54.0 E97.21457
G1 X100.0 Y53.0 E97.35169
G1 X98.666664 Y53.0 E97.45836
G1 X98.666664 Y53.0
G1 X97.333336 Y53.0 E97.566216
G1 X96.0 Y54.0 E97.69955
G1 X98.666664 Y58.0 E98.712585
G1 X97.333336 Y59.0 E98.84971
G1 X94.666664 Y59.0 E99.06304
G1 X93.333336 Y58.0 E99.19637
G1 X96.0 Y54.0 E100.20942
G1 X94.666664 Y53.0 E100.34654
G1 X93.333336 Y53.0 E100.45321
G1 X93.333336 Y53.0
G1 X92.0 Y53.0 E100.561066
G1 X90.666664 Y54.0 E100.6944
G1 X93.333336 Y58.0 E101.70744
G1 X92.0 Y59.0 E101.84457
G1 X89.333336 Y59.0 E102.0579
G1 X88.0 Y58.0 E102.19123
G1 X90.666664 Y54.0 E103.20427
G1 X89.333336 Y53.0 E103.34139
G1 X88.0 Y53.0 E103.44806
G1 X88.0 Y53.0
G1 X86.666664 Y53.0 E103.555916
G1 X85.333336 Y54.0 E103.68925
G1 X88.0 Y58.0 E104.70229
G1 X86.666664 Y59.0 E104.83942
G1 X84.0 Y59.0 E105.05275
G1 X82.666664 Y58.0 E105.18608
G1 X85.333336 Y54.0 E106.19913
G1 X84.0 Y53.0 E106.33625
G1 X82.666664 Y53.0 E106.44292
G1 X82.666664 Y53.0
G1 X81.333336 Y53.0 E106.55077
G1 X80.0 Y54.0 E106.684105
G1 X82.666664 Y58.0 E107.69714
G1 X81.333336 Y59.0 E107.83427
G1 X78.666664 Y59.0 E108.0476
G1 X77.333336 Y58.0 E108.18093
G1 X80.0 Y54.0 E109.19398
G1 X78.666664 Y53.0 E109.3311
G1 X77.333336 Y53.0 E109.43777
G1 X77.333336 Y53.0
G1 X76.0 Y53.0 E109.54562
G1 X74.666664 Y54.0 E109.678955
G1 X77.333336 Y58.0 E110.692
G1 X76.0 Y59.0 E110.829124
G1 X73.333336 Y59.0 E111.04246
G1 X72.0 Y58.0 E111.17579
G1 X74.666664 Y54.0 E112.18883
G1 X73.333336 Y53.0 E112.32595
G1 X72.0 Y53.0 E112.43262
G1 X72.0 Y53.0
G1 X70.666664 Y53.0 E112.540474
G1 X69.333336 Y54.0 E112.673805
G1 X72.0 Y58.0 E113.68685
G1 X70.666664 Y59.0 E113.823975
G1 X68.0 Y59.0 E114.03731
G1 X66.666664 Y58.0 E114.17064
G1 X69.333336 Y54.0 E115.183685
G1 X68.0 Y53.0 E115.32081
G1 X66.666664 Y53.0 E115.427475
G1 X66.666664 Y56.0 E115.72814
G1 X66.666664 Y56.0
G1 X68.0 Y56.0 E116.03519
G1 X69.333336 Y57.0 E116.385185
G1 X66.666664 Y61.0 E116.7711
G1 X68.0 Y62.0 E117.13104
G1 X70.666664 Y62.0 E117.69104
G1 X72.0 Y61.0 E118.04104
G1 X69.333336 Y57.0 E118.426956
G1 X70.666664 Y56.0 E118.786896
G1 X72.0 Y56.0 E119.066895
G1 X72.0 Y56.0
G1 X73.333336 Y56.0 E119.37394
G1 X74.666664 Y57.0 E119.72394
G1 X72.0 Y61.0 E120.109856
G1 X73.333336 Y62.0 E120.469795
G1 X76.0 Y62.0 E121.02979
G1 X77.333336 Y61.0 E121.37979
G1 X74.666664 Y57.0 E121.76571
G1 X76.0 Y56.0 E122.12565
G1 X77.333336 Y56.0 E122.40565
G1 X77.333336 Y56.0
G1 X78.666664 Y56.0 E122.71269
G1 X80.0 Y57.0 E123.06269
G1 X77.333336 Y61.0 E123.44861
G1 X78.666664 Y62.0 E123.80855
G1 X81.333336 Y62.0 E124.368546
G1 X82.666664 Y61.0 E124.718544
G1 X80.0 Y57.0 E125.10446
G1 X81.333336 Y56.0 E125.4644
G1 X82.666664 Y56.0 E125.7444
G1 X82.666664 Y56.0
G1 X84.0 Y56.0 E126.051445
G1 X85.333336 Y57.0 E126.40144
G1 X82.666664 Y61.0 E126.78736
G1 X84.0 Y62.0 E127.1473
G1 X86.666664 Y62.0 E127.7073
G1 X88.0 Y61.0 E128.0573
G1 X85.333336 Y57.0 E128.44322
G1 X86.666664 Y56.0 E128.80316
G1 X88.0 Y56.0 E129.08316
G1 X88.0 Y56.0
G1 X89.333336 Y56.0 E129.3902
G1 X90.666664 Y57.0 E129.7402
G1 X88.0 Y61.0 E130.12613
G1 X89.333336 Y62.0 E130.48607
G1 X92.0 Y62.0 E131.04607
G1 X93.333336 Y61.0 E131.39607
G1 X90.666664 Y57.0 E131.782
G1 X92.0 Y56.0 E132.14194
G1 X93.333336 Y56.0 E132.42194
G1 X93.333336 Y56.0
G1 X94.666664 Y56.0 E132.72897
G1 X96.0 Y57.0 E133.07898
G1 X93.333336 Y61.0 E133.4649
G1 X94.666664 Y62.0 E133.82484
G1 X97.333336 Y62.0 E134.38484
G1 X98.666664 Y61.0 E134.73485
G1 X96.0 Y57.0 E135.12077
G1 X97.333336 Y56.0 E135.48071
G1 X98.666664 Y56.0 E135.76071
G1 X98.666664 Y56.0
G1 X100.0 Y56.0 E136.06775
G1 X101.333336 Y57.0 E136.41776
G1 X98.666664 Y61.0 E136.80368
G1 X100.0 Y62.0 E137.16362
G1 X102.666664 Y62.0 E137.72362
G1 X104.0 Y61.0 E138.07362
G1 X101.333336 Y57.0 E138.45955
G1 X102.666664 Y56.0 E138.81949
G1 X104.0 Y56.0 E139.09949
G1 X104.0 Y56.0
G1 X105.33333 Y56.0 E139.40652
G1 X106.666664 Y57.0 E139.75653
G1 X104.0 Y61.0 E140.14246
G1 X105.33333 Y62.0 E140.5024
G1 X108.0 Y62.0 E141.0624
G1 X109.33333 Y61.0 E141.4124
G1 X106.666664 Y57.0 E141.79832
G1 X108.0 Y56.0 E142.15826
G1 X109.33333 Y56.0 E142.43826
G1 X109.33333 Y56.0
G1 X110.666664 Y56.0 E142.7453
G1 X112.0 Y57.0 E143.0953
G1 X109.33333 Y61.0 E143.48123
G1 X110.666664 Y62.0 E143.84117
G1 X113.33333 Y62.0 E144.40117
G1 X114.666664 Y61.0 E144.75117
G1 X112.0 Y57.0 E145.1371
G1 X113.33333 Y56.0 E145.49704
G1 X114.666664 Y56.0 E145.77704
G1 X114.666664 Y56.0
G1 X116.0 Y56.0 E146.08408
G1 X117.33333 Y57.0 E146.43408
G1 X114.666664 Y61.0 E146.82
G1 X116.0 Y62.0 E147.17995
G1 X118.666664 Y62.0 E147.73994
G1 X120.0 Y61.0 E148.08995
G1 X117.33333 Y57.0 E148.47588
G1 X118.666664 Y56.0 E148.83582
G1 X120.0 Y56.0 E149.11581
G1 X120.0 Y56.0
G1 X121.33333 Y56.0 E149.42285
G1 X122.666664 Y57.0 E149.77286
G1 X120.0 Y61.0 E150.15878
G1 X121.33333 Y62.0 E150.51872
G1 X124.0 Y62.0 E151.07872
G1 X125.33333 Y61.0 E151.42873
G1 X122.666664 Y57.0 E151.81465
G1 X124.0 Y56.0 E152.17459
G1 X125.33333 Y56.0 E152.45459
G1 X125.33333 Y59.0 E152.75525
G1 X125.33333 Y59.0
G1 X124.0 Y59.0 E153.06229
G1 X122.666664 Y60.0 E153.4123
G1 X125.33333 Y64.0 E153.79822
G1 X124.0 Y65.0 E154.15816
G1 X121.33333 Y65.0 E154.71815
G1 X120.0 Y64.0 E155.06816
G1 X122.666664 Y60.0 E155.45409
G1 X121.33333 Y59.0 E155.81403
G1 X120.0 Y59.0 E156.09402
G1 X120.0 Y59.0
G1 X118.666664 Y59.0 E156.40106
G1 X117.33333 Y60.0 E156.75107
G1 X120.0 Y64.0 E157.137
G1 X118.666664 Y65.0 E157.49693
G1 X116.0 Y65.0 E158.05693
G1 X114.666664 Y64.0 E158.40694
G1 X117.33333 Y60.0 E158.79286
G1 X116.0 Y59.0 E159.1528
G1 X114.666664 Y59.0 E159.4328
G1 X114.666664 Y59.0
G1 X113.33333 Y59.0 E159.73984
G1 X112.0 Y60.0 E160.08984
G1 X114.666664 Y64.0 E160.47577
G1 X113.33333 Y65.0 E160.83571
G1 X110.666664 Y65.0 E161.3957
G1 X109.33333 Y64.0 E161.74571
G1 X112.0 Y60.0 E162.13164
G1 X110.666664 Y59.0 E162.49158
G1 X109.33333 Y59.0 E162.77158
G1 X109.33333 Y59.0
G1 X108.0 Y59.0 E163.07861
G1 X106.666664 Y60.0 E163.42862
G1 X109.33333 Y64.0 E163.81454
G1 X108.0 Y65.0 E164.17448
G1 X105.33333 Y65.0 E164.73448
G1 X104.0 Y64.0 E165.08449
G1 X106.666664 Y60.0 E165.47041
G1 X105.33333 Y59.0 E165.83035
G1 X104.0 Y59.0 E166.11035
G1 X104.0 Y59.0
G1 X102.666664 Y59.0 E166.41739
G1 X101.333336 Y60.0 E166.7674
G1 X104.0 Y64.0 E167.15332
G1 X102.666664 Y65.0 E167.51326
G1 X100.0 Y65.0 E168.07326
G1 X98.666664 Y64.0 E168.42326
G1 X101.333336 Y60.0 E168.80919
G1 X100.0 Y59.0 E169.16913
G1 X98.666664 Y59.0 E169.44913
G1 X98.666664 Y59.0
G1 X97.333336 Y59.0 E169.75616
G1 X96.0 Y60.0 E170.10617
G1 X98.666664 Y64.0 E170.4921
G1 X97.333336 Y65.0 E170.85204
G1 X94.666664 Y65.0 E171.41203
G1 X93.333336 Y64.0 E171.76204
G1 X96.0 Y60.0 E172.14796
G1 X94.666664 Y59.0 E172.5079
G1 X93.333336 Y59.0 E172.7879
G1 X93.333336 Y59.0
G1 X92.0 Y59.0 E173.09494
G1 X90.666664 Y60.0 E173.44495
G1 X93.333336 Y64.0 E173.83087
G1 X92.0 Y65.0 E174.19081
G1 X89.333336 Y65.0 E174.75081
G1 X88.0 Y64.0 E175.10081
G1 X90.666664 Y60.0 E175.48674
G1 X89.333336 Y59.0 E175.84668
G1 X88.0 Y59.0 E176.12668
G1 X88.0 Y59.0
G1 X86.666664 Y59.0 E176.43372
G1 X85.333336 Y60.0 E176.78372
G1 X88.0 Y64.0 E177.16965
G1 X86.666664 Y65.0 E177.52959
G1 X84.0 Y65.0 E178.08958
G1 X82.666664 Y64.0 E178.43959
G1 X85.333336 Y60.0 E178.82552
G1 X84.0 Y59.0 E179.18546
G1 X82.666664 Y59.0 E179.46545
G1 X82.666664 Y59.0
G1 X81.333336 Y59.0 E179.77249
G1 X80.0 Y60.0 E180.1225
G1 X82.666664 Y64.0 E180.50842
G1 X81.333336 Y65.0 E180.86836
G1 X78.666664 Y65.0 E181.42836
G1 X77.333336 Y64.0 E181.77837
G1 X80.0 Y60.0 E182.16429
G1 X78.666664 Y59.0 E182.52423
G1 X77.333336 Y59.0 E182.80423
G1 X77.333336 Y59.0
G1 X76.0 Y59.0 E183.11127
G1 X74.666664 Y60.0 E183.46127
G1 X77.333336 Y64.0 E183.8472
G1 X76.0 Y65.0 E184.20714
G1 X73.333336 Y65.0 E184.76714
G1 X72.0 Y64.0 E185.11714
G1 X74.666664 Y60.0 E185.50307
G1 X73.333336 Y59.0 E185.863
G1 X72.0 Y59.0 E186.143
G1 X72.0 Y59.0
G1 X70.666664 Y59.0 E186.45004
G1 X69.333336 Y60.0 E186.80005
G1 X72.0 Y64.0 E187.18597
G1 X70.666664 Y65.0 E187.54591
G1 X68.0 Y65.0 E188.10591
G1 X66.666664 Y64.0 E188.45592
G1 X69.333336 Y60.0 E188.84184
G1 X68.0 Y59.0 E189.20178
G1 X66.666664 Y59.0 E189.48178
G1 X66.666664 Y62.0 E189.78244
G1 X66.666664 Y62.0
G1 X68.0 Y62.0 E189.8903
G1 X69.333336 Y63.0 E190.02364
G1 X66.666664 Y67.0 E191.03668
G1 X68.0 Y68.0 E191.1738
G1 X70.666664 Y68.0 E191.38713
G1 X72.0 Y67.0 E191.52046
G1 X69.333336 Y63.0 E192.53351
G1 X70.666664 Y62.0 E192.67062
G1 X72.0 Y62.0 E192.7773
G1 X72.0 Y62.0
G1 X73.333336 Y62.0 E192.88516
G1 X74.666664 Y63.0 E193.0185
G1 X72.0 Y67.0 E194.03154
G1 X73.333336 Y68.0 E194.16866
G1 X76.0 Y68.0 E194.38199
G1 X77.333336 Y67.0 E194.51532
G1 X74.666664 Y63.0 E195.52837
G1 X76.0 Y62.0 E195.66548
G1 X77.333336 Y62.0 E195.77214
G1 X77.333336 Y62.0
G1 X78.666664 Y62.0 E195.88
G1 X80.0 Y63.0 E196.01334
G1 X77.333336 Y67.0 E197.02638
G1 X78.666664 Y68.0 E197.1635
G1 X81.333336 Y68.0 E197.37683
G1 X82.666664 Y67.0 E197.51016
G1 X80.0 Y63.0 E198.52321
G1 X81.333336 Y62.0 E198.66032
G1 X82.666664 Y62.0 E198.76698
G1 X82.666664 Y62.0
G1 X84.0 Y62.0 E198.87485
G1 X85.333336 Y63.0 E199.00818
G1 X82.666664 Y67.0 E200.02122
G1 X84.0 Y68.0 E200.15834
G1 X86.666664 Y68.0 E200.37167
G1 X88.0 Y67.0 E200.505
G1 X85.333336 Y63.0 E201.51805
G1 X86.666664 Y62.0 E201.65517
G1 X88.0 Y62.0 E201.76184
G1 X88.0 Y62.0
G1 X89.333336 Y62.0 E201.8697
G1 X90.666664 Y63.0 E202.00304
G1 X88.0 Y67.0 E203.01608
G1 X89.333336 Y68.0 E203.1532
G1 X92.0 Y68.0 E203.36653
G1 X93.333336 Y67.0 E203.49986
G1 X90.666664 Y63.0 E204.51291
G1 X92.0 Y62.0 E204.65002
G1 X93.333336 Y62.0 E204.75668
G1 X93.333336 Y62.0
G1 X94.666664 Y62.0 E204.86455
G1 X96.0 Y63.0 E204.99788
G1 X93.333336 Y67.0 E206.01093
G1 X94.666664 Y68.0 E206.14804
G1 X97.333336 Y68.0 E206.36137
G1 X98.666664 Y67.0 E206.4947
G1 X96.0 Y63.0 E207.50775
G1 X97.333336 Y62.0 E207.64487
G1 X98.666664 Y62.0 E207.75153
G1 X98.666664 Y62.0
G1 X100.0 Y62.0 E207.85939
G1 X101.333336 Y63.0 E207.99272
G1 X98.666664 Y67.0 E209.00577
G1 X100.0 Y68.0 E209.14288
G1 X102.666664 Y68.0 E209.35622
G1 X104.0 Y67.0 E209.48955
G1 X101.333336 Y63.0 E210.5026
G1 X102.666664 Y62.0 E210.63971
G1 X104.0 Y62.0 E210.74638
G1 X104.0 Y62.0
G1 X105.33333 Y62.0 E210.85425
G1 X106.666664 Y63.0 E210.98758
G1 X104.0 Y67.0 E212.00063
G1 X105.33333 Y68.0 E212.13774
G1 X108.0 Y68.0 E212.35107
G1 X109.33333 Y67.0 E212.4844
G1 X106.666664 Y63.0 E213.49745
G1 X108.0 Y62.0 E213.63457
G1 X109.33333 Y62.0 E213.74123
G1 X109.33333 Y62.0
G1 X110.666664 Y62.0 E213.84909
G1 X112.0 Y63.0 E213.98242
G1 X109.33333 Y67.0 E214.99547
G1 X110.666664 Y68.0 E215.13258
G1 X113.33333 Y68.0 E215.34592
G1 X114.666664 Y67.0 E215.47925
G1 X112.0 Y63.0 E216.4923
G1 X113.33333 Y62.0 E216.62941
G1 X114.666664 Y62.0 E216.73608
G1 X114.666664 Y62.0
G1 X116.0 Y62.0 E216.84395
G1 X117.33333 Y63.0 E216.97728
G1 X114.666664 Y67.0 E217.99033
G1 X116.0 Y68.0 E218.12744
G1 X118.666664 Y68.0 E218.34077
G1 X120.0 Y67.0 E218.4741
G1 X117.33333 Y63.0 E219.48715
G1 X118.666664 Y62.0 E219.62427
G1 X120.0 Y62.0 E219.73094
G1 X120.0 Y62.0
G1 X121.33333 Y62.0 E219.8388
G1 X122.666664 Y63.0 E219.97214
G1 X120.0 Y67.0 E220.98518
G1 X121.33333 Y68.0 E221.1223
G1 X124.0 Y68.0 E221.33563
G1 X125.33333 Y67.0 E221.46896
G1 X122.666664 Y63.0 E222.48201
G1 X124.0 Y62.0 E222.61913
G1 X125.33333 Y62.0 E222.72578
G1 X125.33333 Y65.0 E223.02644
G1 X125.33333 Y65.0
G1 X124.0 Y65.0 E223.13431
G1 X122.666664 Y66.0 E223.26764
G1 X125.33333 Y70.0 E224.28069
G1 X124.0 Y71.0 E224.4178
G1 X121.33333 Y71.0 E224.63113
G1 X120.0 Y70.0 E224.76447
G1 X122.666664 Y66.0 E225.77751
G1 X121.33333 Y65.0 E225.91463
G1 X120.0 Y65.0 E226.02129
G1 X120.0 Y65.0
G1 X118.666664 Y65.0 E226.12915
G1 X117.33333 Y66.0 E226.26248
G1 X120.0 Y70.0 E227.27553
G1 X118.666664 Y71.0 E227.41264
G1 X116.0 Y71.0 E227.62598
G1 X114.666664 Y70.0 E227.75931
G1 X117.33333 Y66.0 E228.77235
G1 X116.0 Y65.0 E228.90947
G1 X114.666664 Y65.0 E229.01614
G1 X114.666664 Y65.0
G1 X113.33333 Y65.0 E229.12401
G1 X112.0 Y66.0 E229.25734
G1 X114.666664 Y70.0 E230.27039
G1 X113.33333 Y71.0 E230.4075
G1 X110.666664 Y71.0 E230.62083
G1 X109.33333 Y70.0 E230.75417
G1 X112.0 Y66.0 E231.76721
G1 X110.666664 Y65.0 E231.90433
G1 X109.33333 Y65.0 E232.011
G1 X109.33333 Y65.0
G1 X108.0 Y65.0 E232.11887
G1 X106.666664 Y66.0 E232.2522
G1 X109.33333 Y70.0 E233.26524
G1 X108.0 Y71.0 E233.40236
G1 X105.33333 Y71.0 E233.61569
G1 X104.0 Y70.0 E233.74902
G1 X106.666664 Y66.0 E234.76207
G1 X105.33333 Y65.0 E234.89919
G1 X104.0 Y65.0 E235.00584
G1 X104.0 Y65.0
G1 X102.666664 Y65.0 E235.11371
G1 X101.333336 Y66.0 E235.24704
G1 X104.0 Y70.0 E236.26009
G1 X102.666664 Y71.0 E236.3972
G1 X100.0 Y71.0 E236.61053
G1 X98.666664 Y70.0 E236.74387
G1 X101.333336 Y66.0 E237.75691
G1 X100.0 Y65.0 E237.89403
G1 X98.666664 Y65.0 E238.0007
G1 X98.666664 Y65.0
G1 X97.333336 Y65.0 E238.10857
G1 X96.0 Y66.0 E238.2419
G1 X98.666664 Y70.0 E239.25494
G1 X97.333336 Y71.0 E239.39206
G1 X94.666664 Y71.0 E239.6054
G1 X93.333336 Y70.0 E239.73872
G1 X96.0 Y66.0 E240.75177
G1 X94.666664 Y65.0 E240.88889
G1 X93.333336 Y65.0 E240.99554
G1 X93.333336 Y65.0
G1 X92.0 Y65.0 E241.10341
G1 X90.666664 Y66.0 E241.23674
G1 X93.333336 Y70.0 E242.24979
G1 X92.0 Y71.0 E242.3869
G1 X89.333336 Y71.0 E242.60023
G1 X88.0 Y70.0 E242.73357
G1 X90.666664 Y66.0 E243.74661
G1 X89.333336 Y65.0 E243.88373
G1 X88.0 Y65.0 E243.99039
G1 X88.0 Y65.0
G1 X86.666664 Y65.0 E244.09825
G1 X85.333336 Y66.0 E244.23158
G1 X88.0 Y70.0 E245.24463
G1 X86.666664 Y71.0 E245.38174
G1 X84.0 Y71.0 E245.59508
G1 X82.666664 Y70.0 E245.72841
G1 X85.333336 Y66.0 E246.74146
G1 X84.0 Y65.0 E246.87857
G1 X82.666664 Y65.0 E246.98524
G1 X82.666664 Y65.0
G1 X81.333336 Y65.0 E247.09311
G1 X80.0 Y66.0 E247.22644
G1 X82.666664 Y70.0 E248.23949
G1 X81.333336 Y71.0 E248.3766
G1 X78.666664 Y71.0 E248.58994
G1 X77.333336 Y70.0 E248.72327
G1 X80.0 Y66.0 E249.73631
G1 X78.666664 Y65.0 E249.87343
G1 X77.333336 Y65.0 E249.98009
G1 X77.333336 Y65.0
G1 X76.0 Y65.0 E250.08795
G1 X74.666664 Y66.0 E250.22128
G1 X77.333336 Y70.0 E251.23433
G1 X76.0 Y71.0 E251.37144
G1 X73.333336 Y71.0 E251.58478
G1 X72.0 Y70.0 E251.71811
G1 X74.666664 Y66.0 E252.73116
G1 X73.333336 Y65.0 E252.86827
G1 X72.0 Y65.0 E252.97493
G1 X72.0 Y65.0
G1 X70.666664 Y65.0 E253.0828
G1 X69.333336 Y66.0 E253.21613
G1 X72.0 Y70.0 E254.22917
G1 X70.666664 Y71.0 E254.36629
G1 X68.0 Y71.0 E254.57962
G1 X66.666664 Y70.0 E254.71295
G1 X69.333336 Y66.0 E255.726
G1 X68.0 Y65.0 E255.86311
G1 X66.666664 Y65.0 E255.96979
G1 X66.666664 Y68.0 E256.27045
G1 X66.666664 Y68.0
G1 X68.0 Y68.0 E256.57748
G1 X69.333336 Y69.0 E256.9275
G1 X66.666664 Y73.0 E257.31342
G1 X68.0 Y74.0 E257.67334
G1 X70.666664 Y74.0 E258.23334
G1 X72.0 Y73.0 E258.58334
G1 X69.333336 Y69.0 E258.96927
G1 X70.666664 Y68.0 E259.3292
G1 X72.0 Y68.0 E259.6092
G1 X72.0 Y68.0
G1 X73.333336 Y68.0 E259.91623
G1 X74.666664 Y69.0 E260.26624
G1 X72.0 Y73.0 E260.65216
G1 X73.333336 Y74.0 E261.0121
G1 X76.0 Y74.0 E261.57208
G1 X77.333336 Y73.0 E261.9221
G1 X74.666664 Y69.0 E262.308
G1 X76.0 Y68.0 E262.66794
G1 X77.333336 Y68.0 E262.94794
G1 X77.333336 Y68.0
G1 X78.666664 Y68.0 E263.25497
G1 X80.0 Y69.0 E263.60498
G1 X77.333336 Y73.0 E263.9909
G1 X78.666664 Y74.0 E264.35083
G1 X81.333336 Y74.0 E264.91083
G1 X82.666664 Y73.0 E265.26083
G1 X80.0 Y69.0 E265.64676
G1 X81.333336 Y68.0 E266.00668
G1 X82.666664 Y68.0 E266.28668
G1 X82.666664 Y68.0
G1 X84.0 Y68.0 E266.59372
G1 X85.333336 Y69.0 E266.94373
G1 X82.666664 Y73.0 E267.32965
G1 X84.0 Y74.0 E267.68958
G1 X86.666664 Y74.0 E268.24957
G1 X88.0 Y73.0 E268.59958
G1 X85.333336 Y69.0 E268.9855
G1 X86.666664 Y68.0 E269.34543
G1 X88.0 Y68.0 E269.62543
G1 X88.0 Y68.0
G1 X89.333336 Y68.0 E269.93246
G1 X90.666664 Y69.0 E270.28247
G1 X88.0 Y73.0 E270.6684
G1 X89.333336 Y74.0 E271.02832
G1 X92.0 Y74.0 E271.58832
G1 X93.333336 Y73.0 E271.93832
G1 X90.666664 Y69.0 E272.32425
G1 X92.0 Y68.0 E272.68417
G1 X93.333336 Y68.0 E272.96417
G1 X93.333336 Y68.0
G1 X94.666664 Y68.0 E273.2712
G1 X96.0 Y69.0 E273.62122
G1 X93.333336 Y73.0 E274.00714
G1 X94.666664 Y74.0 E274.36707
G1 X97.333336 Y74.0 E274.92706
G1 X98.666664 Y73.0 E275.27707
G1 X96.0 Y69.0 E275.663
G1 X97.333336 Y68.0 E276.02292
G1 X98.666664 Y68.0 E276.30292
G1 X98.666664 Y68.0
G1 X100.0 Y68.0 E276.60995
G1 X101.333336 Y69.0 E276.95996
G1 X98.666664 Y73.0 E277.3459
G1 X100.0 Y74.0 E277.7058
G1 X102.666664 Y74.0 E278.2658
G1 X104.0 Y73.0 E278.6158
G1 X101.333336 Y69.0 E279.00174
G1 X102.666664 Y68.0 E279.36166
G1 X104.0 Y68.0 E279.64166
G1 X104.0 Y68.0
G1 X105.33333 Y68.0 E279.9487
G1 X106.666664 Y69.0 E280.2987
G1 X104.0 Y73.0 E280.68463
G1 X105.33333 Y74.0 E281.04456
G1 X108.0 Y74.0 E281.60455
G1 X109.33333 Y73.0 E281.95456
G1 X106.666664 Y69.0 E282.34048
G1 X108.0 Y68.0 E282.7004
G1 X109.33333 Y68.0 E282.9804
G1 X109.33333 Y68.0
G1 X110.666664 Y68.0 E283.28745
G1 X112.0 Y69.0 E283.63745
G1 X109.33333 Y73.0 E284.02338
G1 X110.666664 Y74.0 E284.3833
G1 X113.33333 Y74.0 E284.9433
G1 X114.666664 Y73.0 E285.2933
G1 X112.0 Y69.0 E285.67923
G1 X113.33333 Y68.0 E286.03915
G1 X114.666664 Y68.0 E286.31915
G1 X114.666664 Y68.0
G1 X116.0 Y68.0 E286.6262
G1 X117.33333 Y69.0 E286.9762
G1 X114.666664 Y73.0 E287.36212
G1 X116.0 Y74.0 E287.72205
G1 X118.666664 Y74.0 E288.28204
G1 X120.0 Y73.0 E288.63205
G1 X117.33333 Y69.0 E289.01797
G1 X118.666664 Y68.0 E289.3779
G1 X120.0 Y68.0 E289.6579
G1 X120.0 Y68.0
G1 X121.33333 Y68.0 E289.96494
G1 X122.666664 Y69.0 E290.31494
G1 X120.0 Y73.0 E290.70087
G1 X121.33333 Y74.0 E291.0608
G1 X124.0 Y74.0 E291.6208
G1 X125.33333 Y73.0 E291.9708
G1 X122.666664 Y69.0 E292.35672
G1 X124.0 Y68.0 E292.71664
G1 X125.33333 Y68.0 E292.99664
G1 X125.33333 Y71.0 E293.2973
G1 X125.33333 Y71.0
G1 X124.0 Y71.0 E293.60434
G1 X122.666664 Y72.0 E293.95435
G1 X125.33333 Y76.0 E294.34027
G1 X124.0 Y77.0 E294.7002
G1 X121.33333 Y77.0 E295.2602
G1 X120.0 Y76.0 E295.6102
G1 X122.666664 Y72.0 E295.99612
G1 X121.33333 Y71.0 E296.35605
G1 X120.0 Y71.0 E296.63605
G1 X120.0 Y71.0
G1 X118.666664 Y71.0 E296.94308
G1 X117.33333 Y72.0 E297.2931
G1 X120.0 Y76.0 E297.67902
G1 X118.666664 Y77.0 E298.03894
G1 X116.0 Y77.0 E298.59894
G1 X114.666664 Y76.0 E298.94894
G1 X117.33333 Y72.0 E299.33487
G1 X116.0 Y71.0 E299.6948
G1 X114.666664 Y71.0 E299.9748
G1 X114.666664 Y71.0
G1 X113.33333 Y71.0 E300.28183
G1 X112.0 Y72.0 E300.63184
G1 X114.666664 Y76.0 E301.01776
G1 X113.33333 Y77.0 E301.3777
G1 X110.666664 Y77.0 E301.93768
G1 X109.33333 Y76.0 E302.2877
G1 X112.0 Y72.0 E302.6736
G1 X110.666664 Y71.0 E303.03354
G1 X109.33333 Y71.0 E303.31354
G1 X109.33333 Y71.0
G1 X108.0 Y71.0 E303.62057
G1 X106.666664 Y72.0 E303.97058
G1 X109.33333 Y76.0 E304.3565
G1 X108.0 Y77.0 E304.71643
G1 X105.33333 Y77.0 E305.27643
G1 X104.0 Y76.0 E305.62643
G1 X106.666664 Y72.0 E306.01236
G1 X105.33333 Y71.0 E306.37228
G1 X104.0 Y71.0 E306.65228
G1 X104.0 Y71.0
G1 X102.666664 Y71.0 E306.95932
G1 X101.333336 Y72.0 E307.30933
G1 X104.0 Y76.0 E307.69525
G1 X102.666664 Y77.0 E308.05518
G1 X100.0 Y77.0 E308.61517
G1 X98.666664 Y76.0 E308.96518
G1 X101.333336 Y72.0 E309.3511
G1 X100.0 Y71.0 E309.71103
G1 X98.666664 Y71.0 E309.99103
G1 X98.666664 Y71.0
G1 X97.333336 Y71.0 E310.29807
G1 X96.0 Y72.0 E310.64807
G1 X98.666664 Y76.0 E311.034
G1 X97.333336 Y77.0 E311.39392
G1 X94.666664 Y77.0 E311.95392
G1 X93.333336 Y76.0 E312.30392
G1 X96.0 Y72.0 E312.68985
G1 X94.666664 Y71.0 E313.04977
G1 X93.333336 Y71.0 E313.32977
G1 X93.333336 Y71.0
G1 X92.0 Y71.0 E313.6368
G1 X90.666664 Y72.0 E313.98682
G1 X93.333336 Y76.0 E314.37274
G1 X92.0 Y77.0 E314.73267
G1 X89.333336 Y77.0 E315.29266
G1 X88.0 Y76.0 E315.64267
G1 X90.666664 Y72.0 E316.0286
G1 X89.333336 Y71.0 E316.38852
G1 X88.0 Y71.0 E316.66852
G1 X88.0 Y71.0
G1 X86.666664 Y71.0 E316.97556
G1 X85.333336 Y72.0 E317.32556
G1 X88.0 Y76.0 E317.7115
G1 X86.666664 Y77.0 E318.0714
G1 X84.0 Y77.0 E318.6314
G1 X82.666664 Y76.0 E318.9814
G1 X85.333336 Y72.0 E319.36734
G1 X84.0 Y71.0 E319.72726
G1 X82.666664 Y71.0 E320.00726
G1 X82.666664 Y71.0
G1 X81.333336 Y71.0 E320.3143
G1 X80.0 Y72.0 E320.6643
G1 X82.666664 Y76.0 E321.05023
G1 X81.333336 Y77.0 E321.41016
G1 X78.666664 Y77.0 E321.97015
G1 X77.333336 Y76.0 E322.32016
G1 X80.0 Y72.0 E322.7061
G1 X78.666664 Y71.0 E323.066
G1 X77.333336 Y71.0 E323.346
G1 X77.333336 Y71.0
G1 X76.0 Y71.0 E323.65305
G1 X74.666664 Y72.0 E324.00305
G1 X77.333336 Y76.0 E324.38898
G1 X76.0 Y77.0 E324.7489
G1 X73.333336 Y77.0 E325.3089
G1 X72.0 Y76.0 E325.6589
G1 X74.666664 Y72.0 E326.04483
G1 X73.333336 Y71.0 E326.40475
G1 X72.0 Y71.0 E326.68475
G1 X72.0 Y71.0
G1 X70.666664 Y71.0 E326.9918
G1 X69.333336 Y72.0 E327.3418
G1 X72.0 Y76.0 E327.72772
G1 X70.666664 Y77.0 E328.08765
G1 X68.0 Y77.0 E328.64764
G1 X66.666664 Y76.0 E328.99765
G1 X69.333336 Y72.0 E329.38358
G1 X68.0 Y71.0 E329.7435
G1 X66.666664 Y71.0 E330.0235
G1 X66.666664 Y74.0 E330.32416
G1 X66.666664 Y74.0
G1 X68.0 Y74.0 E330.432
G1 X69.333336 Y75.0 E330.56534
G1 X66.666664 Y79.0 E331.57837
G1 X68.0 Y80.0 E331.71548
G1 X70.666664 Y80.0 E331.9288
G1 X72.0 Y79.0 E332.06213
G1 X69.333336 Y75.0 E333.07516
G1 X70.666664 Y74.0 E333.21228
G1 X72.0 Y74.0 E333.31894
G1 X72.0 Y74.0
G1 X73.333336 Y74.0 E333.4268
G1 X74.666664 Y75.0 E333.56012
G1 X72.0 Y79.0 E334.57315
G1 X73.333336 Y80.0 E334.71027
G1 X76.0 Y80.0 E334.9236
G1 X77.333336 Y79.0 E335.05695
G1 X74.666664 Y75.0 E336.06998
G1 X76.0 Y74.0 E336.2071
G1 X77.333336 Y74.0 E336.31375
G1 X77.333336 Y74.0
G1 X78.666664 Y74.0 E336.4216
G1 X80.0 Y75.0 E336.55493
G1 X77.333336 Y79.0 E337.56796
G1 X78.666664 Y80.0 E337.70508
G1 X81.333336 Y80.0 E337.91843
G1 X82.666664 Y79.0 E338.05176
G1 X80.0 Y75.0 E339.0648
G1 X81.333336 Y74.0 E339.2019
G1 X82.666664 Y74.0 E339.30856
G1 X82.666664 Y74.0
G1 X84.0 Y74.0 E339.4164
G1 X85.333336 Y75.0 E339.54974
G1 X82.666664 Y79.0 E340.56277
G1 X84.0 Y80.0 E340.6999
G1 X86.666664 Y80.0 E340.9132
G1 X88.0 Y79.0 E341.04654
G1 X85.333336 Y75.0 E342.05957
G1 X86.666664 Y74.0 E342.1967
G1 X88.0 Y74.0 E342.30334
G1 X88.0 Y74.0
G1 X89.333336 Y74.0 E342.4112
G1 X90.666664 Y75.0 E342.54453
G1 X88.0 Y79.0 E343.55756
G1 X89.333336 Y80.0 E343.69467
G1 X92.0 Y80.0 E343.90802
G1 X93.333336 Y79.0 E344.04135
G1 X90.666664 Y75.0 E345.05438
G1 X92.0 Y74.0 E345.1915
G1 X93.333336 Y74.0 E345.29816
G1 X93.333336 Y74.0
G1 X94.666664 Y74.0 E345.406
G1 X96.0 Y75.0 E345.53934
G1 X93.333336 Y79.0 E346.55237
G1 X94.666664 Y80.0 E346.68948
G1 X97.333336 Y80.0 E346.90283
G1 X98.666664 Y79.0 E347.03616
G1 X96.0 Y75.0 E348.0492
G1 X97.333336 Y74.0 E348.1863
G1 X98.666664 Y74.0 E348.29297
G1 X98.666664 Y74.0
G1 X100.0 Y74.0 E348.40082
G1 X101.333336 Y75.0 E348.53415
G1 X98.666664 Y79.0 E349.54718
G1 X100.0 Y80.0 E349.6843
G1 X102.666664 Y80.0 E349.8976
G1 X104.0 Y79.0 E350.03094
G1 X101.333336 Y75.0 E351.04398
G1 X102.666664 Y74.0 E351.1811
G1 X104.0 Y74.0 E351.28775
G1 X104.0 Y74.0
G1 X105.33333 Y74.0 E351.3956
G1 X106.666664 Y75.0 E351.52893
G1 X104.0 Y79.0 E352.54196
G1 X105.33333 Y80.0 E352.67908
G1 X108.0 Y80.0 E352.89243
G1 X109.33333 Y79.0 E353.02576
G1 X106.666664 Y75.0 E354.0388
G1 X108.0 Y74.0 E354.1759
G1 X109.33333 Y74.0 E354.28256
G1 X109.33333 Y74.0
G1 X110.666664 Y74.0 E354.3904
G1 X112.0 Y75.0 E354.52374
G1 X109.33333 Y79.0 E355.53677
G1 X110.666664 Y80.0 E355.6739
G1 X113.33333 Y80.0 E355.8872
G1 X114.666664 Y79.0 E356.02054
G1 X112.0 Y75.0 E357.03357
G1 X113.33333 Y74.0 E357.1707
G1 X114.666664 Y74.0 E357.27734
G1 X114.666664 Y74.0
G1 X116.0 Y74.0 E357.3852
G1 X117.33333 Y75.0 E357.51852
G1 X114.666664 Y79.0 E358.53156
G1 X116.0 Y80.0 E358.66867
G1 X118.666664 Y80.0 E358.882
G1 X120.0 Y79.0 E359.01532
G1 X117.33333 Y75.0 E360.02835
G1 X118.666664 Y74.0 E360.16547
G1 X120.0 Y74.0 E360.27213
G1 X120.0 Y74.0
G1 X121.33333 Y74.0 E360.37997
G1 X122.666664 Y75.0 E360.5133
G1 X120.0 Y79.0 E361.52634
G1 X121.33333 Y80.0 E361.66345
G1 X124.0 Y80.0 E361.8768
G1 X125.33333 Y79.0 E362.01013
G1 X122.666664 Y75.0 E363.02316
G1 X124.0 Y74.0 E363.16028
G1 X125.33333 Y74.0 E363.26694
G1 X125.33333 Y77.0 E363.5676
G1 X125.33333 Y77.0
G1 X124.0 Y77.0 E363.67545
G1 X122.666664 Y78.0 E363.80878
G1 X125.33333 Y82.0 E364.8218
G1 X124.0 Y83.0 E364.95892
G1 X121.33333 Y83.0 E365.17227
G1 X120.0 Y82.0 E365.3056
G1 X122.666664 Y78.0 E366.31863
G1 X121.33333 Y77.0 E366.45575
G1 X120.0 Y77.0 E366.5624
G1 X120.0 Y77.0
G1 X118.666664 Y77.0 E366.67026
G1 X117.33333 Y78.0 E366.8036
G1 X120.0 Y82.0 E367.81662
G1 X118.666664 Y83.0 E367.95374
G1 X116.0 Y83.0 E368.16705
G1 X114.666664 Y82.0 E368.30038
G1 X117.33333 Y78.0 E369.31342
G1 X116.0 Y77.0 E369.45053
G1 X114.666664 Y77.0 E369.5572
G1 X114.666664 Y77.0
G1 X113.33333 Y77.0 E369.66504
G1 X112.0 Y78.0 E369.79837
G1 X114.666664 Y82.0 E370.8114
G1 X113.33333 Y83.0 E370.94852
G1 X110.666664 Y83.0 E371.16183
G1 X109.33333 Y82.0 E371.29517
G1 X112.0 Y78.0 E372.3082
G1 X110.666664 Y77.0 E372.4453
G1 X109.33333 Y77.0 E372.55197
G1 X109.33333 Y77.0
G1 X108.0 Y77.0 E372.65982
G1 X106.666664 Y78.0 E372.79315
G1 X109.33333 Y82.0 E373.80618
G1 X108.0 Y83.0 E373.9433
G1 X105.33333 Y83.0 E374.15665
G1 X104.0 Y82.0 E374.28998
G1 X106.666664 Y78.0 E375.303
G1 X105.33333 Y77.0 E375.44012
G1 X104.0 Y77.0 E375.54678
G1 X104.0 Y77.0
G1 X102.666664 Y77.0 E375.65463
G1 X101.333336 Y78.0 E375.78796
G1 X104.0 Y82.0 E376.801
G1 X102.666664 Y83.0 E376.9381
G1 X100.0 Y83.0 E377.15143
G1 X98.666664 Y82.0 E377.28476
G1 X101.333336 Y78.0 E378.2978
G1 X100.0 Y77.0 E378.4349
G1 X98.666664 Y77.0 E378.54156
G1 X98.666664 Y77.0
G1 X97.333336 Y77.0 E378.6494
G1 X96.0 Y78.0 E378.78275
G1 X98.666664 Y82.0 E379.79578
G1 X97.333336 Y83.0 E379.9329
G1 X94.666664 Y83.0 E380.14624
G1 X93.333336 Y82.0 E380.27957
G1 X96.0 Y78.0 E381.2926
G1 X94.666664 Y77.0 E381.42972
G1 X93.333336 Y77.0 E381.53638
G1 X93.333336 Y77.0
G1 X92.0 Y77.0 E381.64423
G1 X90.666664 Y78.0 E381.77756
G1 X93.333336 Y82.0 E382.7906
G1 X92.0 Y83.0 E382.9277
G1 X89.333336 Y83.0 E383.14105
G1 X88.0 Y82.0 E383.27438
G1 X90.666664 Y78.0 E384.2874
G1 X89.333336 Y77.0 E384.42453
G1 X88.0 Y77.0 E384.5312
G1 X88.0 Y77.0
G1 X86.666664 Y77.0 E384.63904
G1 X85.333336 Y78.0 E384.77237
G1 X88.0 Y82.0 E385.7854
G1 X86.666664 Y83.0 E385.92252
G1 X84.0 Y83.0 E386.13583
G1 X82.666664 Y82.0 E386.26917
G1 X85.333336 Y78.0 E387.2822
G1 X84.0 Y77.0 E387.4193
G1 X82.666664 Y77.0 E387.52597
G1 X82.666664 Y77.0
G1 X81.333336 Y77.0 E387.63382
G1 X80.0 Y78.0 E387.76715
G1 X82.666664 Y82.0 E388.78018
G1 X81.333336 Y83.0 E388.9173
G1 X78.666664 Y83.0 E389.13065
G1 X77.333336 Y82.0 E389.26398
G1 X80.0 Y78.0 E390.277
G1 X78.666664 Y77.0 E390.41412
G1 X77.333336 Y77.0 E390.52078
G1 X77.333336 Y77.0
G1 X76.0 Y77.0 E390.62863
G1 X74.666664 Y78.0 E390.76196
G1 X77.333336 Y82.0 E391.775
G1 X76.0 Y83.0 E391.9121
G1 X73.333336 Y83.0 E392.12546
G1 X72.0 Y82.0 E392.2588
G1 X74.666664 Y78.0 E393.27182
G1 X73.333336 Y77.0 E393.40894
G1 X72.0 Y77.0 E393.5156
G1 X72.0 Y77.0
G1 X70.666664 Y77.0 E393.62344
G1 X69.333336 Y78.0 E393.75677
G1 X72.0 Y82.0 E394.7698
G1 X70.666664 Y83.0 E394.90692
G1 X68.0 Y83.0 E395.12024
G1 X66.666664 Y82.0 E395.25357
G1 X69.333336 Y78.0 E396.2666
G1 X68.0 Y77.0 E396.40372
G1 X66.666664 Y77.0 E396.51038
G1 X66.666664 Y80.0 E396.81104
G1 X66.666664 Y80.0
G1 X68.0 Y80.0 E397.11807
G1 X69.333336 Y81.0 E397.46808
G1 X66.666664 Y85.0 E397.854
G1 X68.0 Y86.0 E398.21393
G1 X70.666664 Y86.0 E398.77393
G1 X72.0 Y85.0 E399.12393
G1 X69.333336 Y81.0 E399.50986
G1 X70.666664 Y80.0 E399.86978
G1 X72.0 Y80.0 E400.14978
G1 X72.0 Y80.0
G1 X73.333336 Y80.0 E400.45682
G1 X74.666664 Y81.0 E400.80682
G1 X72.0 Y85.0 E401.19275
G1 X73.333336 Y86.0 E401.55267
G1 X76.0 Y86.0 E402.11267
G1 X77.333336 Y85.0 E402.46268
G1 X74.666664 Y81.0 E402.8486
G1 X76.0 Y80.0 E403.20853
G1 X77.333336 Y80.0 E403.48853
G1 X77.333336 Y80.0
G1 X78.666664 Y80.0 E403.79556
G1 X80.0 Y81.0 E404.14557
G1 X77.333336 Y85.0 E404.5315
G1 X78.666664 Y86.0 E404.89142
G1 X81.333336 Y86.0 E405.45142
G1 X82.666664 Y85.0 E405.80142
G1 X80.0 Y81.0 E406.18735
G1 X81.333336 Y80.0 E406.54727
G1 X82.666664 Y80.0 E406.82727
G1 X82.666664 Y80.0
G1 X84.0 Y80.0 E407.1343
G1 X85.333336 Y81.0 E407.4843
G1 X82.666664 Y85.0 E407.87024
G1 X84.0 Y86.0 E408.23016
G1 X86.666664 Y86.0 E408.79016
G1 X88.0 Y85.0 E409.14017
G1 X85.333336 Y81.0 E409.5261
G1 X86.666664 Y80.0 E409.88602
G1 X88.0 Y80.0 E410.16602
G1 X88.0 Y80.0
G1 X89.333336 Y80.0 E410.47305
G1 X90.666664 Y81.0 E410.82306
G1 X88.0 Y85.0 E411.20898
G1 X89.333336 Y86.0 E411.5689
G1 X92.0 Y86.0 E412.1289
G1 X93.333336 Y85.0 E412.4789
G1 X90.666664 Y81.0 E412.86484
G1 X92.0 Y80.0 E413.22476
G1 X93.333336 Y80.0 E413.50476
G1 X93.333336 Y80.0
G1 X94.666664 Y80.0 E413.8118
G1 X96.0 Y81.0 E414.1618
G1 X93.333336 Y85.0 E414.54773
G1 X94.666664 Y86.0 E414.90765
G1 X97.333336 Y86.0 E415.46765
G1 X98.666664 Y85.0 E415.81766
G1 X96.0 Y81.0 E416.20358
G1 X97.333336 Y80.0 E416.5635
G1 X98.666664 Y80.0 E416.8435
G1 X98.666664 Y80.0
G1 X100.0 Y80.0 E417.15054
G1 X101.333336 Y81.0 E417.50055
G1 X98.666664 Y85.0 E417.88647
G1 X100.0 Y86.0 E418.2464
G1 X102.666664 Y86.0 E418.8064
G1 X104.0 Y85.0 E419.1564
G1 X101.333336 Y81.0 E419.54233
G1 X102.666664 Y80.0 E419.90225
G1 X104.0 Y80.0 E420.18225
G1 X104.0 Y80.0
G1 X105.33333 Y80.0 E420.4893
G1 X106.666664 Y81.0 E420.8393
G1 X104.0 Y85.0 E421.22522
G1 X105.33333 Y86.0 E421.58514
G1 X108.0 Y86.0 E422.14514
G1 X109.33333 Y85.0 E422.49515
G1 X106.666664 Y81.0 E422.88107
G1 X108.0 Y80.0 E423.241
G1 X109.33333 Y80.0 E423.521
G1 X109.33333 Y80.0
G1 X110.666664 Y80.0 E423.82803
G1 X112.0 Y81.0 E424.17804
G1 X109.33333 Y85.0 E424.56396
G1 X110.666664 Y86.0 E424.9239
G1 X113.33333 Y86.0 E425.4839
G1 X114.666664 Y85.0 E425.8339
G1 X112.0 Y81.0 E426.21982
G1 X113.33333 Y80.0 E426.57974
G1 X114.666664 Y80.0 E426.85974
G1 X114.666664 Y80.0
G1 X116.0 Y80.0 E427.16678
G1 X117.33333 Y81.0 E427.51678
G1 X114.666664 Y85.0 E427.9027
G1 X116.0 Y86.0 E428.26263
G1 X118.666664 Y86.0 E428.82263
G1 X120.0 Y85.0 E429.17264
G1 X117.33333 Y81.0 E429.55856
G1 X118.666664 Y80.0 E429.9185
G1 X120.0 Y80.0 E430.1985
G1 X120.0 Y80.0
G1 X121.33333 Y80.0 E430.50552
G1 X122.666664 Y81.0 E430.85553
G1 X120.0 Y85.0 E431.24146
G1 X121.33333 Y86.0 E431.60138
G1 X124.0 Y86.0 E432.16138
G1 X125.33333 Y85.0 E432.51138
G1 X122.666664 Y81.0 E432.8973
G1 X124.0 Y80.0 E433.25723
G1 X125.33333 Y80.0 E433.53723
G1 X125.33333 Y83.0 E433.8379
G1 X125.33333 Y83.0
G1 X124.0 Y83.0 E434.14493
G1 X122.666664 Y84.0 E434.49493
G1 X125.33333 Y88.0 E434.88086
G1 X124.0 Y89.0 E435.24078
G1 X121.33333 Y89.0 E435.80078
G1 X120.0 Y88.0 E436.1508
G1 X122.666664 Y84.0 E436.5367
G1 X121.33333 Y83.0 E436.89664
G1 X120.0 Y83.0 E437.17664
G1 X120.0 Y83.0
G1 X118.666664 Y83.0 E437.48367
G1 X117.33333 Y84.0 E437.83368
G1 X120.0 Y88.0 E438.2196
G1 X118.666664 Y89.0 E438.57953
G1 X116.0 Y89.0 E439.13953
G1 X114.666664 Y88.0 E439.48953
G1 X117.33333 Y84.0 E439.87546
G1 X116.0 Y83.0 E440.23538
G1 X114.666664 Y83.0 E440.51538
G1 X114.666664 Y83.0
G1 X113.33333 Y83.0 E440.82242
G1 X112.0 Y84.0 E441.17242
G1 X114.666664 Y88.0 E441.55835
G1 X113.33333 Y89.0 E441.91827
G1 X110.666664 Y89.0 E442.47827
G1 X109.33333 Y88.0 E442.82828
G1 X112.0 Y84.0 E443.2142
G1 X110.666664 Y83.0 E443.57413
G1 X109.33333 Y83.0 E443.85413
G1 X109.33333 Y83.0
G1 X108.0 Y83.0 E444.16116
G1 X106.666664 Y84.0 E444.51117
G1 X109.33333 Y88.0 E444.8971
G1 X108.0 Y89.0 E445.25702
G1 X105.33333 Y89.0 E445.81702
G1 X104.0 Y88.0 E446.16702
G1 X106.666664 Y84.0 E446.55295
G1 X105.33333 Y83.0 E446.91287
G1 X104.0 Y83.0 E447.19287
G1 X104.0 Y83.0
G1 X102.666664 Y83.0 E447.4999
G1 X101.333336 Y84.0 E447.8499
G1 X104.0 Y88.0 E448.23584
G1 X102.666664 Y89.0 E448.59576
G1 X100.0 Y89.0 E449.15576
G1 X98.666664 Y88.0 E449.50577
G1 X101.333336 Y84.0 E449.8917
G1 X100.0 Y83.0 E450.25162
G1 X98.666664 Y83.0 E450.53162
G1 X98.666664 Y83.0
G1 X97.333336 Y83.0 E450.83865
G1 X96.0 Y84.0 E451.18866
G1 X98.666664 Y88.0 E451.5746
G1 X97.333336 Y89.0 E451.9345
G1 X94.666664 Y89.0 E452.4945
G1 X93.333336 Y88.0 E452.8445
G1 X96.0 Y84.0 E453.23044
G1 X94.666664 Y83.0 E453.59036
G1 X93.333336 Y83.0 E453.87036
G1 X93.333336 Y83.0
G1 X92.0 Y83.0 E454.1774
G1 X90.666664 Y84.0 E454.5274
G1 X93.333336 Y88.0 E454.91333
G1 X92.0 Y89.0 E455.27325
G1 X89.333336 Y89.0 E455.83325
G1 X88.0 Y88.0 E456.18326
G1 X90.666664 Y84.0 E456.56918
G1 X89.333336 Y83.0 E456.9291
G1 X88.0 Y83.0 E457.2091
G1 X88.0 Y83.0
G1 X86.666664 Y83.0 E457.51614
G1 X85.333336 Y84.0 E457.86615
G1 X88.0 Y88.0 E458.25208
G1 X86.666664 Y89.0 E458.612
G1 X84.0 Y89.0 E459.172
G1 X82.666664 Y88.0 E459.522
G1 X85.333336 Y84.0 E459.90793
G1 X84.0 Y83.0 E460.26785
G1 X82.666664 Y83.0 E460.54785
G1 X82.666664 Y83.0
G1 X81.333336 Y83.0 E460.8549
G1 X80.0 Y84.0 E461.2049
G1 X82.666664 Y88.0 E461.59082
G1 X81.333336 Y89.0 E461.95074
G1 X78.666664 Y89.0 E462.51074
G1 X77.333336 Y88.0 E462.86075
G1 X80.0 Y84.0 E463.24667
G1 X78.666664 Y83.0 E463.6066
G1 X77.333336 Y83.0 E463.8866
G1 X77.333336 Y83.0
G1 X76.0 Y83.0 E464.19363
G1 X74.666664 Y84.0 E464.54364
G1 X77.333336 Y88.0 E464.92957
G1 X76.0 Y89.0 E465.2895
G1 X73.333336 Y89.0 E465.8495
G1 X72.0 Y88.0 E466.1995
G1 X74.666664 Y84.0 E466.58542
G1 X73.333336 Y83.0 E466.94534
G1 X72.0 Y83.0 E467.22534
G1 X72.0 Y83.0
G1 X70.666664 Y83.0 E467.53238
G1 X69.333336 Y84.0 E467.8824
G1 X72.0 Y88.0 E468.2683
G1 X70.666664 Y89.0 E468.62823
G1 X68.0 Y89.0 E469.18823
G1 X66.666664 Y88.0 E469.53824
G1 X69.333336 Y84.0 E469.92416
G1 X68.0 Y83.0 E470.2841
G1 X66.666664 Y83.0 E470.5641
G1 X66.666664 Y86.0 E470.86475
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning