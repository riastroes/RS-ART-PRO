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
G1 F1200.0
G1 Z0.45
G1 X68.0 Y50.0 E49.386272
G1 X69.333336 Y51.0 E49.55294
G1 X66.666664 Y55.0 E50.517742
G1 X68.0 Y56.0 E50.68914
G1 X70.666664 Y56.0 E50.955807
G1 X72.0 Y55.0 E51.122475
G1 X69.333336 Y51.0 E52.087276
G1 X70.666664 Y50.0 E52.258675
G1 X72.0 Y50.0 E52.39201
G1 X72.0 Y50.0
G1 X73.333336 Y50.0 E52.53822
G1 X74.666664 Y51.0 E52.704887
G1 X72.0 Y55.0 E53.66969
G1 X73.333336 Y56.0 E53.841087
G1 X76.0 Y56.0 E54.107754
G1 X77.333336 Y55.0 E54.27442
G1 X74.666664 Y51.0 E55.239223
G1 X76.0 Y50.0 E55.41062
G1 X77.333336 Y50.0 E55.543953
G1 X77.333336 Y50.0
G1 X78.666664 Y50.0 E55.690163
G1 X80.0 Y51.0 E55.85683
G1 X77.333336 Y55.0 E56.821632
G1 X78.666664 Y56.0 E56.99303
G1 X81.333336 Y56.0 E57.259697
G1 X82.666664 Y55.0 E57.426365
G1 X80.0 Y51.0 E58.391167
G1 X81.333336 Y50.0 E58.562565
G1 X82.666664 Y50.0 E58.695896
G1 X82.666664 Y50.0
G1 X84.0 Y50.0 E58.84211
G1 X85.333336 Y51.0 E59.008778
G1 X82.666664 Y55.0 E59.97358
G1 X84.0 Y56.0 E60.144978
G1 X86.666664 Y56.0 E60.411644
G1 X88.0 Y55.0 E60.578312
G1 X85.333336 Y51.0 E61.543114
G1 X86.666664 Y50.0 E61.71451
G1 X88.0 Y50.0 E61.847847
G1 X88.0 Y50.0
G1 X89.333336 Y50.0 E61.994057
G1 X90.666664 Y51.0 E62.160725
G1 X88.0 Y55.0 E63.125526
G1 X89.333336 Y56.0 E63.296925
G1 X92.0 Y56.0 E63.56359
G1 X93.333336 Y55.0 E63.73026
G1 X90.666664 Y51.0 E64.69506
G1 X92.0 Y50.0 E64.86646
G1 X93.333336 Y50.0 E64.999794
G1 X93.333336 Y50.0
G1 X94.666664 Y50.0 E65.146
G1 X96.0 Y51.0 E65.31267
G1 X93.333336 Y55.0 E66.27747
G1 X94.666664 Y56.0 E66.448875
G1 X97.333336 Y56.0 E66.715546
G1 X98.666664 Y55.0 E66.88221
G1 X96.0 Y51.0 E67.847015
G1 X97.333336 Y50.0 E68.01842
G1 X98.666664 Y50.0 E68.15175
G1 X98.666664 Y50.0
G1 X100.0 Y50.0 E68.29796
G1 X101.333336 Y51.0 E68.46462
G1 X98.666664 Y55.0 E69.42943
G1 X100.0 Y56.0 E69.60083
G1 X102.666664 Y56.0 E69.86749
G1 X104.0 Y55.0 E70.03416
G1 X101.333336 Y51.0 E70.99896
G1 X102.666664 Y50.0 E71.170364
G1 X104.0 Y50.0 E71.303696
G1 X104.0 Y50.0
G1 X105.33333 Y50.0 E71.449905
G1 X106.666664 Y51.0 E71.61657
G1 X104.0 Y55.0 E72.581375
G1 X105.33333 Y56.0 E72.75278
G1 X108.0 Y56.0 E73.01945
G1 X109.33333 Y55.0 E73.18611
G1 X106.666664 Y51.0 E74.15092
G1 X108.0 Y50.0 E74.32232
G1 X109.33333 Y50.0 E74.45565
G1 X109.33333 Y50.0
G1 X110.666664 Y50.0 E74.60186
G1 X112.0 Y51.0 E74.768524
G1 X109.33333 Y55.0 E75.73333
G1 X110.666664 Y56.0 E75.90473
G1 X113.33333 Y56.0 E76.171394
G1 X114.666664 Y55.0 E76.33806
G1 X112.0 Y51.0 E77.302864
G1 X113.33333 Y50.0 E77.474266
G1 X114.666664 Y50.0 E77.6076
G1 X114.666664 Y50.0
G1 X116.0 Y50.0 E77.75381
G1 X117.33333 Y51.0 E77.92047
G1 X114.666664 Y55.0 E78.88528
G1 X116.0 Y56.0 E79.05668
G1 X118.666664 Y56.0 E79.32334
G1 X120.0 Y55.0 E79.490005
G1 X117.33333 Y51.0 E80.45481
G1 X118.666664 Y50.0 E80.62621
G1 X120.0 Y50.0 E80.759544
G1 X120.0 Y50.0
G1 X121.33333 Y50.0 E80.905754
G1 X122.666664 Y51.0 E81.07242
G1 X120.0 Y55.0 E82.037224
G1 X121.33333 Y56.0 E82.208626
G1 X124.0 Y56.0 E82.475296
G1 X125.33333 Y55.0 E82.64196
G1 X122.666664 Y51.0 E83.606766
G1 X124.0 Y50.0 E83.77817
G1 X125.33333 Y50.0 E83.9115
G1 X125.33333 Y53.0 E84.212166
G1 X125.33333 Y53.0
G1 X124.0 Y53.0 E84.358376
G1 X122.666664 Y54.0 E84.52504
G1 X125.33333 Y58.0 E85.489845
G1 X124.0 Y59.0 E85.66125
G1 X121.33333 Y59.0 E85.92792
G1 X120.0 Y58.0 E86.09458
G1 X122.666664 Y54.0 E87.05939
G1 X121.33333 Y53.0 E87.23079
G1 X120.0 Y53.0 E87.36412
G1 X120.0 Y53.0
G1 X118.666664 Y53.0 E87.51033
G1 X117.33333 Y54.0 E87.676994
G1 X120.0 Y58.0 E88.6418
G1 X118.666664 Y59.0 E88.8132
G1 X116.0 Y59.0 E89.079865
G1 X114.666664 Y58.0 E89.24653
G1 X117.33333 Y54.0 E90.211334
G1 X116.0 Y53.0 E90.38274
G1 X114.666664 Y53.0 E90.51607
G1 X114.666664 Y53.0
G1 X113.33333 Y53.0 E90.66228
G1 X112.0 Y54.0 E90.82894
G1 X114.666664 Y58.0 E91.79375
G1 X113.33333 Y59.0 E91.96515
G1 X110.666664 Y59.0 E92.23181
G1 X109.33333 Y58.0 E92.398476
G1 X112.0 Y54.0 E93.36328
G1 X110.666664 Y53.0 E93.53468
G1 X109.33333 Y53.0 E93.668015
G1 X109.33333 Y53.0
G1 X108.0 Y53.0 E93.814224
G1 X106.666664 Y54.0 E93.98089
G1 X109.33333 Y58.0 E94.945694
G1 X108.0 Y59.0 E95.117096
G1 X105.33333 Y59.0 E95.383766
G1 X104.0 Y58.0 E95.55043
G1 X106.666664 Y54.0 E96.515236
G1 X105.33333 Y53.0 E96.68664
G1 X104.0 Y53.0 E96.81997
G1 X104.0 Y53.0
G1 X102.666664 Y53.0 E96.96618
G1 X101.333336 Y54.0 E97.13284
G1 X104.0 Y58.0 E98.09765
G1 X102.666664 Y59.0 E98.26905
G1 X100.0 Y59.0 E98.53571
G1 X98.666664 Y58.0 E98.70238
G1 X101.333336 Y54.0 E99.66718
G1 X100.0 Y53.0 E99.838585
G1 X98.666664 Y53.0 E99.97192
G1 X98.666664 Y53.0
G1 X97.333336 Y53.0 E100.118126
G1 X96.0 Y54.0 E100.28479
G1 X98.666664 Y58.0 E101.249596
G1 X97.333336 Y59.0 E101.421
G1 X94.666664 Y59.0 E101.68767
G1 X93.333336 Y58.0 E101.85433
G1 X96.0 Y54.0 E102.81914
G1 X94.666664 Y53.0 E102.99054
G1 X93.333336 Y53.0 E103.12387
G1 X93.333336 Y53.0
G1 X92.0 Y53.0 E103.27008
G1 X90.666664 Y54.0 E103.436745
G1 X93.333336 Y58.0 E104.40155
G1 X92.0 Y59.0 E104.57295
G1 X89.333336 Y59.0 E104.83962
G1 X88.0 Y58.0 E105.00629
G1 X90.666664 Y54.0 E105.97109
G1 X89.333336 Y53.0 E106.142494
G1 X88.0 Y53.0 E106.275826
G1 X88.0 Y53.0
G1 X86.666664 Y53.0 E106.422035
G1 X85.333336 Y54.0 E106.5887
G1 X88.0 Y58.0 E107.553505
G1 X86.666664 Y59.0 E107.72491
G1 X84.0 Y59.0 E107.99157
G1 X82.666664 Y58.0 E108.15823
G1 X85.333336 Y54.0 E109.12304
G1 X84.0 Y53.0 E109.29444
G1 X82.666664 Y53.0 E109.42777
G1 X82.666664 Y53.0
G1 X81.333336 Y53.0 E109.57398
G1 X80.0 Y54.0 E109.74065
G1 X82.666664 Y58.0 E110.70545
G1 X81.333336 Y59.0 E110.876854
G1 X78.666664 Y59.0 E111.143524
G1 X77.333336 Y58.0 E111.31019
G1 X80.0 Y54.0 E112.274994
G1 X78.666664 Y53.0 E112.446396
G1 X77.333336 Y53.0 E112.57973
G1 X77.333336 Y53.0
G1 X76.0 Y53.0 E112.72594
G1 X74.666664 Y54.0 E112.8926
G1 X77.333336 Y58.0 E113.85741
G1 X76.0 Y59.0 E114.02881
G1 X73.333336 Y59.0 E114.29548
G1 X72.0 Y58.0 E114.46214
G1 X74.666664 Y54.0 E115.42695
G1 X73.333336 Y53.0 E115.59835
G1 X72.0 Y53.0 E115.73168
G1 X72.0 Y53.0
G1 X70.666664 Y53.0 E115.87789
G1 X69.333336 Y54.0 E116.044556
G1 X72.0 Y58.0 E117.00936
G1 X70.666664 Y59.0 E117.18076
G1 X68.0 Y59.0 E117.447426
G1 X66.666664 Y58.0 E117.61409
G1 X69.333336 Y54.0 E118.578896
G1 X68.0 Y53.0 E118.7503
G1 X66.666664 Y53.0 E118.88363
G1 X66.666664 Y56.0 E119.184296
G1 X66.666664 Y56.0
G1 X68.0 Y56.0 E119.330505
G1 X69.333336 Y57.0 E119.49717
G1 X66.666664 Y61.0 E120.461975
G1 X68.0 Y62.0 E120.63338
G1 X70.666664 Y62.0 E120.90004
G1 X72.0 Y61.0 E121.0667
G1 X69.333336 Y57.0 E122.03151
G1 X70.666664 Y56.0 E122.20291
G1 X72.0 Y56.0 E122.33624
G1 X72.0 Y56.0
G1 X73.333336 Y56.0 E122.48245
G1 X74.666664 Y57.0 E122.64912
G1 X72.0 Y61.0 E123.61392
G1 X73.333336 Y62.0 E123.785324
G1 X76.0 Y62.0 E124.051994
G1 X77.333336 Y61.0 E124.21866
G1 X74.666664 Y57.0 E125.183464
G1 X76.0 Y56.0 E125.354866
G1 X77.333336 Y56.0 E125.4882
G1 X77.333336 Y56.0
G1 X78.666664 Y56.0 E125.63441
G1 X80.0 Y57.0 E125.80107
G1 X77.333336 Y61.0 E126.76588
G1 X78.666664 Y62.0 E126.93728
G1 X81.333336 Y62.0 E127.20395
G1 X82.666664 Y61.0 E127.37061
G1 X80.0 Y57.0 E128.33542
G1 X81.333336 Y56.0 E128.50682
G1 X82.666664 Y56.0 E128.64015
G1 X82.666664 Y56.0
G1 X84.0 Y56.0 E128.78636
G1 X85.333336 Y57.0 E128.95303
G1 X82.666664 Y61.0 E129.91783
G1 X84.0 Y62.0 E130.08923
G1 X86.666664 Y62.0 E130.3559
G1 X88.0 Y61.0 E130.52257
G1 X85.333336 Y57.0 E131.48737
G1 X86.666664 Y56.0 E131.65877
G1 X88.0 Y56.0 E131.7921
G1 X88.0 Y56.0
G1 X89.333336 Y56.0 E131.93831
G1 X90.666664 Y57.0 E132.10498
G1 X88.0 Y61.0 E133.06978
G1 X89.333336 Y62.0 E133.24118
G1 X92.0 Y62.0 E133.50784
G1 X93.333336 Y61.0 E133.67451
G1 X90.666664 Y57.0 E134.63931
G1 X92.0 Y56.0 E134.81071
G1 X93.333336 Y56.0 E134.94405
G1 X93.333336 Y56.0
G1 X94.666664 Y56.0 E135.09026
G1 X96.0 Y57.0 E135.25693
G1 X93.333336 Y61.0 E136.22173
G1 X94.666664 Y62.0 E136.39313
G1 X97.333336 Y62.0 E136.65979
G1 X98.666664 Y61.0 E136.82646
G1 X96.0 Y57.0 E137.79126
G1 X97.333336 Y56.0 E137.96266
G1 X98.666664 Y56.0 E138.096
G1 X98.666664 Y56.0
G1 X100.0 Y56.0 E138.2422
G1 X101.333336 Y57.0 E138.40887
G1 X98.666664 Y61.0 E139.37367
G1 X100.0 Y62.0 E139.54507
G1 X102.666664 Y62.0 E139.81174
G1 X104.0 Y61.0 E139.97841
G1 X101.333336 Y57.0 E140.9432
G1 X102.666664 Y56.0 E141.11461
G1 X104.0 Y56.0 E141.24794
G1 X104.0 Y56.0
G1 X105.33333 Y56.0 E141.39415
G1 X106.666664 Y57.0 E141.56082
G1 X104.0 Y61.0 E142.52562
G1 X105.33333 Y62.0 E142.69702
G1 X108.0 Y62.0 E142.96368
G1 X109.33333 Y61.0 E143.13036
G1 X106.666664 Y57.0 E144.09515
G1 X108.0 Y56.0 E144.26656
G1 X109.33333 Y56.0 E144.39989
G1 X109.33333 Y56.0
G1 X110.666664 Y56.0 E144.5461
G1 X112.0 Y57.0 E144.71277
G1 X109.33333 Y61.0 E145.67757
G1 X110.666664 Y62.0 E145.84897
G1 X113.33333 Y62.0 E146.11563
G1 X114.666664 Y61.0 E146.2823
G1 X112.0 Y57.0 E147.2471
G1 X113.33333 Y56.0 E147.4185
G1 X114.666664 Y56.0 E147.55183
G1 X114.666664 Y56.0
G1 X116.0 Y56.0 E147.69804
G1 X117.33333 Y57.0 E147.86472
G1 X114.666664 Y61.0 E148.82951
G1 X116.0 Y62.0 E149.00092
G1 X118.666664 Y62.0 E149.26758
G1 X120.0 Y61.0 E149.43425
G1 X117.33333 Y57.0 E150.39905
G1 X118.666664 Y56.0 E150.57045
G1 X120.0 Y56.0 E150.70378
G1 X120.0 Y56.0
G1 X121.33333 Y56.0 E150.84999
G1 X122.666664 Y57.0 E151.01666
G1 X120.0 Y61.0 E151.98146
G1 X121.33333 Y62.0 E152.15286
G1 X124.0 Y62.0 E152.41953
G1 X125.33333 Y61.0 E152.5862
G1 X122.666664 Y57.0 E153.551
G1 X124.0 Y56.0 E153.7224
G1 X125.33333 Y56.0 E153.85573
G1 X125.33333 Y59.0 E154.15639
G1 X125.33333 Y59.0
G1 X124.0 Y59.0 E154.3026
G1 X122.666664 Y60.0 E154.46927
G1 X125.33333 Y64.0 E155.43407
G1 X124.0 Y65.0 E155.60547
G1 X121.33333 Y65.0 E155.87213
G1 X120.0 Y64.0 E156.0388
G1 X122.666664 Y60.0 E157.0036
G1 X121.33333 Y59.0 E157.175
G1 X120.0 Y59.0 E157.30833
G1 X120.0 Y59.0
G1 X118.666664 Y59.0 E157.45454
G1 X117.33333 Y60.0 E157.62122
G1 X120.0 Y64.0 E158.58601
G1 X118.666664 Y65.0 E158.75742
G1 X116.0 Y65.0 E159.02408
G1 X114.666664 Y64.0 E159.19075
G1 X117.33333 Y60.0 E160.15555
G1 X116.0 Y59.0 E160.32695
G1 X114.666664 Y59.0 E160.46028
G1 X114.666664 Y59.0
G1 X113.33333 Y59.0 E160.60649
G1 X112.0 Y60.0 E160.77316
G1 X114.666664 Y64.0 E161.73796
G1 X113.33333 Y65.0 E161.90936
G1 X110.666664 Y65.0 E162.17603
G1 X109.33333 Y64.0 E162.3427
G1 X112.0 Y60.0 E163.3075
G1 X110.666664 Y59.0 E163.4789
G1 X109.33333 Y59.0 E163.61223
G1 X109.33333 Y59.0
G1 X108.0 Y59.0 E163.75844
G1 X106.666664 Y60.0 E163.92511
G1 X109.33333 Y64.0 E164.88991
G1 X108.0 Y65.0 E165.06131
G1 X105.33333 Y65.0 E165.32797
G1 X104.0 Y64.0 E165.49464
G1 X106.666664 Y60.0 E166.45944
G1 X105.33333 Y59.0 E166.63084
G1 X104.0 Y59.0 E166.76418
G1 X104.0 Y59.0
G1 X102.666664 Y59.0 E166.91039
G1 X101.333336 Y60.0 E167.07706
G1 X104.0 Y64.0 E168.04185
G1 X102.666664 Y65.0 E168.21326
G1 X100.0 Y65.0 E168.47992
G1 X98.666664 Y64.0 E168.64659
G1 X101.333336 Y60.0 E169.61139
G1 X100.0 Y59.0 E169.78279
G1 X98.666664 Y59.0 E169.91612
G1 X98.666664 Y59.0
G1 X97.333336 Y59.0 E170.06233
G1 X96.0 Y60.0 E170.229
G1 X98.666664 Y64.0 E171.1938
G1 X97.333336 Y65.0 E171.3652
G1 X94.666664 Y65.0 E171.63187
G1 X93.333336 Y64.0 E171.79854
G1 X96.0 Y60.0 E172.76334
G1 X94.666664 Y59.0 E172.93474
G1 X93.333336 Y59.0 E173.06807
G1 X93.333336 Y59.0
G1 X92.0 Y59.0 E173.21428
G1 X90.666664 Y60.0 E173.38095
G1 X93.333336 Y64.0 E174.34575
G1 X92.0 Y65.0 E174.51715
G1 X89.333336 Y65.0 E174.78381
G1 X88.0 Y64.0 E174.95049
G1 X90.666664 Y60.0 E175.91528
G1 X89.333336 Y59.0 E176.08669
G1 X88.0 Y59.0 E176.22002
G1 X88.0 Y59.0
G1 X86.666664 Y59.0 E176.36623
G1 X85.333336 Y60.0 E176.5329
G1 X88.0 Y64.0 E177.4977
G1 X86.666664 Y65.0 E177.6691
G1 X84.0 Y65.0 E177.93576
G1 X82.666664 Y64.0 E178.10243
G1 X85.333336 Y60.0 E179.06723
G1 X84.0 Y59.0 E179.23863
G1 X82.666664 Y59.0 E179.37196
G1 X82.666664 Y59.0
G1 X81.333336 Y59.0 E179.51817
G1 X80.0 Y60.0 E179.68484
G1 X82.666664 Y64.0 E180.64964
G1 X81.333336 Y65.0 E180.82104
G1 X78.666664 Y65.0 E181.0877
G1 X77.333336 Y64.0 E181.25438
G1 X80.0 Y60.0 E182.21918
G1 X78.666664 Y59.0 E182.39058
G1 X77.333336 Y59.0 E182.52391
G1 X77.333336 Y59.0
G1 X76.0 Y59.0 E182.67012
G1 X74.666664 Y60.0 E182.83679
G1 X77.333336 Y64.0 E183.80159
G1 X76.0 Y65.0 E183.97299
G1 X73.333336 Y65.0 E184.23965
G1 X72.0 Y64.0 E184.40633
G1 X74.666664 Y60.0 E185.37112
G1 X73.333336 Y59.0 E185.54253
G1 X72.0 Y59.0 E185.67586
G1 X72.0 Y59.0
G1 X70.666664 Y59.0 E185.82207
G1 X69.333336 Y60.0 E185.98874
G1 X72.0 Y64.0 E186.95354
G1 X70.666664 Y65.0 E187.12494
G1 X68.0 Y65.0 E187.3916
G1 X66.666664 Y64.0 E187.55827
G1 X69.333336 Y60.0 E188.52307
G1 X68.0 Y59.0 E188.69447
G1 X66.666664 Y59.0 E188.8278
G1 X66.666664 Y62.0 E189.12846
G1 X66.666664 Y62.0
G1 X68.0 Y62.0 E189.27467
G1 X69.333336 Y63.0 E189.44135
G1 X66.666664 Y67.0 E190.40614
G1 X68.0 Y68.0 E190.57755
G1 X70.666664 Y68.0 E190.84421
G1 X72.0 Y67.0 E191.01088
G1 X69.333336 Y63.0 E191.97568
G1 X70.666664 Y62.0 E192.14708
G1 X72.0 Y62.0 E192.28041
G1 X72.0 Y62.0
G1 X73.333336 Y62.0 E192.42662
G1 X74.666664 Y63.0 E192.59329
G1 X72.0 Y67.0 E193.55809
G1 X73.333336 Y68.0 E193.72949
G1 X76.0 Y68.0 E193.99615
G1 X77.333336 Y67.0 E194.16283
G1 X74.666664 Y63.0 E195.12762
G1 X76.0 Y62.0 E195.29903
G1 X77.333336 Y62.0 E195.43236
G1 X77.333336 Y62.0
G1 X78.666664 Y62.0 E195.57857
G1 X80.0 Y63.0 E195.74524
G1 X77.333336 Y67.0 E196.71004
G1 X78.666664 Y68.0 E196.88144
G1 X81.333336 Y68.0 E197.1481
G1 X82.666664 Y67.0 E197.31477
G1 X80.0 Y63.0 E198.27957
G1 X81.333336 Y62.0 E198.45097
G1 X82.666664 Y62.0 E198.5843
G1 X82.666664 Y62.0
G1 X84.0 Y62.0 E198.73051
G1 X85.333336 Y63.0 E198.89719
G1 X82.666664 Y67.0 E199.86198
G1 X84.0 Y68.0 E200.03339
G1 X86.666664 Y68.0 E200.30005
G1 X88.0 Y67.0 E200.46672
G1 X85.333336 Y63.0 E201.43152
G1 X86.666664 Y62.0 E201.60292
G1 X88.0 Y62.0 E201.73625
G1 X88.0 Y62.0
G1 X89.333336 Y62.0 E201.88246
G1 X90.666664 Y63.0 E202.04913
G1 X88.0 Y67.0 E203.01393
G1 X89.333336 Y68.0 E203.18533
G1 X92.0 Y68.0 E203.452
G1 X93.333336 Y67.0 E203.61867
G1 X90.666664 Y63.0 E204.58347
G1 X92.0 Y62.0 E204.75487
G1 X93.333336 Y62.0 E204.8882
G1 X93.333336 Y62.0
G1 X94.666664 Y62.0 E205.03441
G1 X96.0 Y63.0 E205.20108
G1 X93.333336 Y67.0 E206.16588
G1 X94.666664 Y68.0 E206.33728
G1 X97.333336 Y68.0 E206.60394
G1 X98.666664 Y67.0 E206.77061
G1 X96.0 Y63.0 E207.73541
G1 X97.333336 Y62.0 E207.90681
G1 X98.666664 Y62.0 E208.04015
G1 X98.666664 Y62.0
G1 X100.0 Y62.0 E208.18636
G1 X101.333336 Y63.0 E208.35303
G1 X98.666664 Y67.0 E209.31783
G1 X100.0 Y68.0 E209.48923
G1 X102.666664 Y68.0 E209.75589
G1 X104.0 Y67.0 E209.92256
G1 X101.333336 Y63.0 E210.88736
G1 X102.666664 Y62.0 E211.05876
G1 X104.0 Y62.0 E211.1921
G1 X104.0 Y62.0
G1 X105.33333 Y62.0 E211.3383
G1 X106.666664 Y63.0 E211.50497
G1 X104.0 Y67.0 E212.46977
G1 X105.33333 Y68.0 E212.64117
G1 X108.0 Y68.0 E212.90784
G1 X109.33333 Y67.0 E213.07451
G1 X106.666664 Y63.0 E214.0393
G1 X108.0 Y62.0 E214.21071
G1 X109.33333 Y62.0 E214.34404
G1 X109.33333 Y62.0
G1 X110.666664 Y62.0 E214.49025
G1 X112.0 Y63.0 E214.65692
G1 X109.33333 Y67.0 E215.62172
G1 X110.666664 Y68.0 E215.79312
G1 X113.33333 Y68.0 E216.05978
G1 X114.666664 Y67.0 E216.22646
G1 X112.0 Y63.0 E217.19125
G1 X113.33333 Y62.0 E217.36266
G1 X114.666664 Y62.0 E217.49599
G1 X114.666664 Y62.0
G1 X116.0 Y62.0 E217.6422
G1 X117.33333 Y63.0 E217.80887
G1 X114.666664 Y67.0 E218.77367
G1 X116.0 Y68.0 E218.94507
G1 X118.666664 Y68.0 E219.21173
G1 X120.0 Y67.0 E219.3784
G1 X117.33333 Y63.0 E220.3432
G1 X118.666664 Y62.0 E220.5146
G1 X120.0 Y62.0 E220.64793
G1 X120.0 Y62.0
G1 X121.33333 Y62.0 E220.79414
G1 X122.666664 Y63.0 E220.96082
G1 X120.0 Y67.0 E221.92561
G1 X121.33333 Y68.0 E222.09702
G1 X124.0 Y68.0 E222.36368
G1 X125.33333 Y67.0 E222.53035
G1 X122.666664 Y63.0 E223.49515
G1 X124.0 Y62.0 E223.66655
G1 X125.33333 Y62.0 E223.79988
G1 X125.33333 Y65.0 E224.10054
G1 X125.33333 Y65.0
G1 X124.0 Y65.0 E224.24675
G1 X122.666664 Y66.0 E224.41342
G1 X125.33333 Y70.0 E225.37822
G1 X124.0 Y71.0 E225.54962
G1 X121.33333 Y71.0 E225.81628
G1 X120.0 Y70.0 E225.98296
G1 X122.666664 Y66.0 E226.94775
G1 X121.33333 Y65.0 E227.11916
G1 X120.0 Y65.0 E227.25249
G1 X120.0 Y65.0
G1 X118.666664 Y65.0 E227.3987
G1 X117.33333 Y66.0 E227.56537
G1 X120.0 Y70.0 E228.53017
G1 X118.666664 Y71.0 E228.70157
G1 X116.0 Y71.0 E228.96823
G1 X114.666664 Y70.0 E229.1349
G1 X117.33333 Y66.0 E230.0997
G1 X116.0 Y65.0 E230.2711
G1 X114.666664 Y65.0 E230.40443
G1 X114.666664 Y65.0
G1 X113.33333 Y65.0 E230.55064
G1 X112.0 Y66.0 E230.71732
G1 X114.666664 Y70.0 E231.68211
G1 X113.33333 Y71.0 E231.85352
G1 X110.666664 Y71.0 E232.12018
G1 X109.33333 Y70.0 E232.28685
G1 X112.0 Y66.0 E233.25165
G1 X110.666664 Y65.0 E233.42305
G1 X109.33333 Y65.0 E233.55638
G1 X109.33333 Y65.0
G1 X108.0 Y65.0 E233.70259
G1 X106.666664 Y66.0 E233.86926
G1 X109.33333 Y70.0 E234.83406
G1 X108.0 Y71.0 E235.00546
G1 X105.33333 Y71.0 E235.27213
G1 X104.0 Y70.0 E235.4388
G1 X106.666664 Y66.0 E236.4036
G1 X105.33333 Y65.0 E236.575
G1 X104.0 Y65.0 E236.70833
G1 X104.0 Y65.0
G1 X102.666664 Y65.0 E236.85454
G1 X101.333336 Y66.0 E237.02121
G1 X104.0 Y70.0 E237.98601
G1 X102.666664 Y71.0 E238.15741
G1 X100.0 Y71.0 E238.42407
G1 X98.666664 Y70.0 E238.59074
G1 X101.333336 Y66.0 E239.55554
G1 X100.0 Y65.0 E239.72694
G1 X98.666664 Y65.0 E239.86028
G1 X98.666664 Y65.0
G1 X97.333336 Y65.0 E240.00648
G1 X96.0 Y66.0 E240.17316
G1 X98.666664 Y70.0 E241.13795
G1 X97.333336 Y71.0 E241.30936
G1 X94.666664 Y71.0 E241.57602
G1 X93.333336 Y70.0 E241.74269
G1 X96.0 Y66.0 E242.70749
G1 X94.666664 Y65.0 E242.87889
G1 X93.333336 Y65.0 E243.01222
G1 X93.333336 Y65.0
G1 X92.0 Y65.0 E243.15843
G1 X90.666664 Y66.0 E243.3251
G1 X93.333336 Y70.0 E244.2899
G1 X92.0 Y71.0 E244.4613
G1 X89.333336 Y71.0 E244.72797
G1 X88.0 Y70.0 E244.89464
G1 X90.666664 Y66.0 E245.85944
G1 X89.333336 Y65.0 E246.03084
G1 X88.0 Y65.0 E246.16417
G1 X88.0 Y65.0
G1 X86.666664 Y65.0 E246.31038
G1 X85.333336 Y66.0 E246.47705
G1 X88.0 Y70.0 E247.44185
G1 X86.666664 Y71.0 E247.61325
G1 X84.0 Y71.0 E247.87991
G1 X82.666664 Y70.0 E248.04659
G1 X85.333336 Y66.0 E249.01138
G1 X84.0 Y65.0 E249.18279
G1 X82.666664 Y65.0 E249.31612
G1 X82.666664 Y65.0
G1 X81.333336 Y65.0 E249.46233
G1 X80.0 Y66.0 E249.629
G1 X82.666664 Y70.0 E250.5938
G1 X81.333336 Y71.0 E250.7652
G1 X78.666664 Y71.0 E251.03186
G1 X77.333336 Y70.0 E251.19853
G1 X80.0 Y66.0 E252.16333
G1 X78.666664 Y65.0 E252.33473
G1 X77.333336 Y65.0 E252.46806
G1 X77.333336 Y65.0
G1 X76.0 Y65.0 E252.61427
G1 X74.666664 Y66.0 E252.78094
G1 X77.333336 Y70.0 E253.74574
G1 X76.0 Y71.0 E253.91714
G1 X73.333336 Y71.0 E254.1838
G1 X72.0 Y70.0 E254.35048
G1 X74.666664 Y66.0 E255.31528
G1 X73.333336 Y65.0 E255.48668
G1 X72.0 Y65.0 E255.62001
G1 X72.0 Y65.0
G1 X70.666664 Y65.0 E255.76622
G1 X69.333336 Y66.0 E255.93289
G1 X72.0 Y70.0 E256.8977
G1 X70.666664 Y71.0 E257.0691
G1 X68.0 Y71.0 E257.33575
G1 X66.666664 Y70.0 E257.5024
G1 X69.333336 Y66.0 E258.46722
G1 X68.0 Y65.0 E258.6386
G1 X66.666664 Y65.0 E258.77194
G1 X66.666664 Y68.0 E259.0726
G1 X66.666664 Y68.0
G1 X68.0 Y68.0 E259.2188
G1 X69.333336 Y69.0 E259.38547
G1 X66.666664 Y73.0 E260.35028
G1 X68.0 Y74.0 E260.52167
G1 X70.666664 Y74.0 E260.78833
G1 X72.0 Y73.0 E260.955
G1 X69.333336 Y69.0 E261.9198
G1 X70.666664 Y68.0 E262.0912
G1 X72.0 Y68.0 E262.22452
G1 X72.0 Y68.0
G1 X73.333336 Y68.0 E262.37073
G1 X74.666664 Y69.0 E262.53738
G1 X72.0 Y73.0 E263.5022
G1 X73.333336 Y74.0 E263.67358
G1 X76.0 Y74.0 E263.94025
G1 X77.333336 Y73.0 E264.1069
G1 X74.666664 Y69.0 E265.07172
G1 X76.0 Y68.0 E265.2431
G1 X77.333336 Y68.0 E265.37643
G1 X77.333336 Y68.0
G1 X78.666664 Y68.0 E265.52264
G1 X80.0 Y69.0 E265.6893
G1 X77.333336 Y73.0 E266.6541
G1 X78.666664 Y74.0 E266.8255
G1 X81.333336 Y74.0 E267.09216
G1 X82.666664 Y73.0 E267.25882
G1 X80.0 Y69.0 E268.22363
G1 X81.333336 Y68.0 E268.39502
G1 X82.666664 Y68.0 E268.52835
G1 X82.666664 Y68.0
G1 X84.0 Y68.0 E268.67456
G1 X85.333336 Y69.0 E268.84122
G1 X82.666664 Y73.0 E269.80603
G1 X84.0 Y74.0 E269.97742
G1 X86.666664 Y74.0 E270.24408
G1 X88.0 Y73.0 E270.41074
G1 X85.333336 Y69.0 E271.37555
G1 X86.666664 Y68.0 E271.54694
G1 X88.0 Y68.0 E271.68027
G1 X88.0 Y68.0
G1 X89.333336 Y68.0 E271.82648
G1 X90.666664 Y69.0 E271.99313
G1 X88.0 Y73.0 E272.95795
G1 X89.333336 Y74.0 E273.12933
G1 X92.0 Y74.0 E273.396
G1 X93.333336 Y73.0 E273.56265
G1 X90.666664 Y69.0 E274.52747
G1 X92.0 Y68.0 E274.69885
G1 X93.333336 Y68.0 E274.83218
G1 X93.333336 Y68.0
G1 X94.666664 Y68.0 E274.9784
G1 X96.0 Y69.0 E275.14505
G1 X93.333336 Y73.0 E276.10986
G1 X94.666664 Y74.0 E276.28125
G1 X97.333336 Y74.0 E276.5479
G1 X98.666664 Y73.0 E276.71457
G1 X96.0 Y69.0 E277.67938
G1 X97.333336 Y68.0 E277.85077
G1 X98.666664 Y68.0 E277.9841
G1 X98.666664 Y68.0
G1 X100.0 Y68.0 E278.1303
G1 X101.333336 Y69.0 E278.29697
G1 X98.666664 Y73.0 E279.26178
G1 X100.0 Y74.0 E279.43317
G1 X102.666664 Y74.0 E279.69983
G1 X104.0 Y73.0 E279.8665
G1 X101.333336 Y69.0 E280.8313
G1 X102.666664 Y68.0 E281.0027
G1 X104.0 Y68.0 E281.13602
G1 X104.0 Y68.0
G1 X105.33333 Y68.0 E281.28223
G1 X106.666664 Y69.0 E281.44888
G1 X104.0 Y73.0 E282.4137
G1 X105.33333 Y74.0 E282.58508
G1 X108.0 Y74.0 E282.85175
G1 X109.33333 Y73.0 E283.0184
G1 X106.666664 Y69.0 E283.98322
G1 X108.0 Y68.0 E284.1546
G1 X109.33333 Y68.0 E284.28793
G1 X109.33333 Y68.0
G1 X110.666664 Y68.0 E284.43414
G1 X112.0 Y69.0 E284.6008
G1 X109.33333 Y73.0 E285.5656
G1 X110.666664 Y74.0 E285.737
G1 X113.33333 Y74.0 E286.00366
G1 X114.666664 Y73.0 E286.17032
G1 X112.0 Y69.0 E287.13513
G1 X113.33333 Y68.0 E287.30652
G1 X114.666664 Y68.0 E287.43985
G1 X114.666664 Y68.0
G1 X116.0 Y68.0 E287.58606
G1 X117.33333 Y69.0 E287.75272
G1 X114.666664 Y73.0 E288.71753
G1 X116.0 Y74.0 E288.88892
G1 X118.666664 Y74.0 E289.15558
G1 X120.0 Y73.0 E289.32224
G1 X117.33333 Y69.0 E290.28705
G1 X118.666664 Y68.0 E290.45844
G1 X120.0 Y68.0 E290.59177
G1 X120.0 Y68.0
G1 X121.33333 Y68.0 E290.73798
G1 X122.666664 Y69.0 E290.90463
G1 X120.0 Y73.0 E291.86945
G1 X121.33333 Y74.0 E292.04083
G1 X124.0 Y74.0 E292.3075
G1 X125.33333 Y73.0 E292.47415
G1 X122.666664 Y69.0 E293.43896
G1 X124.0 Y68.0 E293.61035
G1 X125.33333 Y68.0 E293.74368
G1 X125.33333 Y71.0 E294.04434
G1 X125.33333 Y71.0
G1 X124.0 Y71.0 E294.19055
G1 X122.666664 Y72.0 E294.3572
G1 X125.33333 Y76.0 E295.32202
G1 X124.0 Y77.0 E295.4934
G1 X121.33333 Y77.0 E295.76007
G1 X120.0 Y76.0 E295.92673
G1 X122.666664 Y72.0 E296.89154
G1 X121.33333 Y71.0 E297.06293
G1 X120.0 Y71.0 E297.19626
G1 X120.0 Y71.0
G1 X118.666664 Y71.0 E297.34247
G1 X117.33333 Y72.0 E297.50912
G1 X120.0 Y76.0 E298.47394
G1 X118.666664 Y77.0 E298.64532
G1 X116.0 Y77.0 E298.912
G1 X114.666664 Y76.0 E299.07864
G1 X117.33333 Y72.0 E300.04346
G1 X116.0 Y71.0 E300.21484
G1 X114.666664 Y71.0 E300.34818
G1 X114.666664 Y71.0
G1 X113.33333 Y71.0 E300.4944
G1 X112.0 Y72.0 E300.66104
G1 X114.666664 Y76.0 E301.62585
G1 X113.33333 Y77.0 E301.79724
G1 X110.666664 Y77.0 E302.0639
G1 X109.33333 Y76.0 E302.23056
G1 X112.0 Y72.0 E303.19537
G1 X110.666664 Y71.0 E303.36676
G1 X109.33333 Y71.0 E303.5001
G1 X109.33333 Y71.0
G1 X108.0 Y71.0 E303.6463
G1 X106.666664 Y72.0 E303.81296
G1 X109.33333 Y76.0 E304.77777
G1 X108.0 Y77.0 E304.94916
G1 X105.33333 Y77.0 E305.21582
G1 X104.0 Y76.0 E305.38248
G1 X106.666664 Y72.0 E306.3473
G1 X105.33333 Y71.0 E306.51868
G1 X104.0 Y71.0 E306.652
G1 X104.0 Y71.0
G1 X102.666664 Y71.0 E306.79822
G1 X101.333336 Y72.0 E306.96487
G1 X104.0 Y76.0 E307.9297
G1 X102.666664 Y77.0 E308.10107
G1 X100.0 Y77.0 E308.36774
G1 X98.666664 Y76.0 E308.5344
G1 X101.333336 Y72.0 E309.4992
G1 X100.0 Y71.0 E309.6706
G1 X98.666664 Y71.0 E309.80392
G1 X98.666664 Y71.0
G1 X97.333336 Y71.0 E309.95013
G1 X96.0 Y72.0 E310.1168
G1 X98.666664 Y76.0 E311.0816
G1 X97.333336 Y77.0 E311.253
G1 X94.666664 Y77.0 E311.51965
G1 X93.333336 Y76.0 E311.6863
G1 X96.0 Y72.0 E312.65112
G1 X94.666664 Y71.0 E312.8225
G1 X93.333336 Y71.0 E312.95584
G1 X93.333336 Y71.0
G1 X92.0 Y71.0 E313.10205
G1 X90.666664 Y72.0 E313.2687
G1 X93.333336 Y76.0 E314.23352
G1 X92.0 Y77.0 E314.4049
G1 X89.333336 Y77.0 E314.67157
G1 X88.0 Y76.0 E314.83823
G1 X90.666664 Y72.0 E315.80304
G1 X89.333336 Y71.0 E315.97443
G1 X88.0 Y71.0 E316.10776
G1 X88.0 Y71.0
G1 X86.666664 Y71.0 E316.25397
G1 X85.333336 Y72.0 E316.42062
G1 X88.0 Y76.0 E317.38544
G1 X86.666664 Y77.0 E317.55682
G1 X84.0 Y77.0 E317.8235
G1 X82.666664 Y76.0 E317.99014
G1 X85.333336 Y72.0 E318.95496
G1 X84.0 Y71.0 E319.12634
G1 X82.666664 Y71.0 E319.25967
G1 X82.666664 Y71.0
G1 X81.333336 Y71.0 E319.40588
G1 X80.0 Y72.0 E319.57254
G1 X82.666664 Y76.0 E320.53735
G1 X81.333336 Y77.0 E320.70874
G1 X78.666664 Y77.0 E320.9754
G1 X77.333336 Y76.0 E321.14206
G1 X80.0 Y72.0 E322.10687
G1 X78.666664 Y71.0 E322.27826
G1 X77.333336 Y71.0 E322.4116
G1 X77.333336 Y71.0
G1 X76.0 Y71.0 E322.5578
G1 X74.666664 Y72.0 E322.72446
G1 X77.333336 Y76.0 E323.68927
G1 X76.0 Y77.0 E323.86066
G1 X73.333336 Y77.0 E324.12732
G1 X72.0 Y76.0 E324.29398
G1 X74.666664 Y72.0 E325.2588
G1 X73.333336 Y71.0 E325.43018
G1 X72.0 Y71.0 E325.5635
G1 X72.0 Y71.0
G1 X70.666664 Y71.0 E325.70972
G1 X69.333336 Y72.0 E325.87637
G1 X72.0 Y76.0 E326.8412
G1 X70.666664 Y77.0 E327.01257
G1 X68.0 Y77.0 E327.27924
G1 X66.666664 Y76.0 E327.4459
G1 X69.333336 Y72.0 E328.4107
G1 X68.0 Y71.0 E328.5821
G1 X66.666664 Y71.0 E328.71542
G1 X66.666664 Y74.0 E329.01608
G1 X66.666664 Y74.0
G1 X68.0 Y74.0 E329.1623
G1 X69.333336 Y75.0 E329.32895
G1 X66.666664 Y79.0 E330.29376
G1 X68.0 Y80.0 E330.46515
G1 X70.666664 Y80.0 E330.7318
G1 X72.0 Y79.0 E330.89847
G1 X69.333336 Y75.0 E331.86328
G1 X70.666664 Y74.0 E332.03467
G1 X72.0 Y74.0 E332.168
G1 X72.0 Y74.0
G1 X73.333336 Y74.0 E332.3142
G1 X74.666664 Y75.0 E332.48087
G1 X72.0 Y79.0 E333.44568
G1 X73.333336 Y80.0 E333.61707
G1 X76.0 Y80.0 E333.88373
G1 X77.333336 Y79.0 E334.05038
G1 X74.666664 Y75.0 E335.0152
G1 X76.0 Y74.0 E335.18658
G1 X77.333336 Y74.0 E335.31992
G1 X77.333336 Y74.0
G1 X78.666664 Y74.0 E335.46613
G1 X80.0 Y75.0 E335.63278
G1 X77.333336 Y79.0 E336.5976
G1 X78.666664 Y80.0 E336.76898
G1 X81.333336 Y80.0 E337.03564
G1 X82.666664 Y79.0 E337.2023
G1 X80.0 Y75.0 E338.1671
G1 X81.333336 Y74.0 E338.3385
G1 X82.666664 Y74.0 E338.47183
G1 X82.666664 Y74.0
G1 X84.0 Y74.0 E338.61804
G1 X85.333336 Y75.0 E338.7847
G1 X82.666664 Y79.0 E339.7495
G1 X84.0 Y80.0 E339.9209
G1 X86.666664 Y80.0 E340.18756
G1 X88.0 Y79.0 E340.35422
G1 X85.333336 Y75.0 E341.31903
G1 X86.666664 Y74.0 E341.49042
G1 X88.0 Y74.0 E341.62375
G1 X88.0 Y74.0
G1 X89.333336 Y74.0 E341.76996
G1 X90.666664 Y75.0 E341.9366
G1 X88.0 Y79.0 E342.90143
G1 X89.333336 Y80.0 E343.0728
G1 X92.0 Y80.0 E343.33948
G1 X93.333336 Y79.0 E343.50613
G1 X90.666664 Y75.0 E344.47095
G1 X92.0 Y74.0 E344.64233
G1 X93.333336 Y74.0 E344.77567
G1 X93.333336 Y74.0
G1 X94.666664 Y74.0 E344.92188
G1 X96.0 Y75.0 E345.08853
G1 X93.333336 Y79.0 E346.05334
G1 X94.666664 Y80.0 E346.22473
G1 X97.333336 Y80.0 E346.4914
G1 X98.666664 Y79.0 E346.65805
G1 X96.0 Y75.0 E347.62286
G1 X97.333336 Y74.0 E347.79425
G1 X98.666664 Y74.0 E347.92758
G1 X98.666664 Y74.0
G1 X100.0 Y74.0 E348.0738
G1 X101.333336 Y75.0 E348.24045
G1 X98.666664 Y79.0 E349.20526
G1 X100.0 Y80.0 E349.37665
G1 X102.666664 Y80.0 E349.6433
G1 X104.0 Y79.0 E349.80997
G1 X101.333336 Y75.0 E350.77478
G1 X102.666664 Y74.0 E350.94617
G1 X104.0 Y74.0 E351.0795
G1 X104.0 Y74.0
G1 X105.33333 Y74.0 E351.2257
G1 X106.666664 Y75.0 E351.39236
G1 X104.0 Y79.0 E352.35718
G1 X105.33333 Y80.0 E352.52856
G1 X108.0 Y80.0 E352.79523
G1 X109.33333 Y79.0 E352.96188
G1 X106.666664 Y75.0 E353.9267
G1 X108.0 Y74.0 E354.09808
G1 X109.33333 Y74.0 E354.2314
G1 X109.33333 Y74.0
G1 X110.666664 Y74.0 E354.37762
G1 X112.0 Y75.0 E354.54428
G1 X109.33333 Y79.0 E355.5091
G1 X110.666664 Y80.0 E355.68048
G1 X113.33333 Y80.0 E355.94714
G1 X114.666664 Y79.0 E356.1138
G1 X112.0 Y75.0 E357.0786
G1 X113.33333 Y74.0 E357.25
G1 X114.666664 Y74.0 E357.38333
G1 X114.666664 Y74.0
G1 X116.0 Y74.0 E357.52954
G1 X117.33333 Y75.0 E357.6962
G1 X114.666664 Y79.0 E358.661
G1 X116.0 Y80.0 E358.8324
G1 X118.666664 Y80.0 E359.09906
G1 X120.0 Y79.0 E359.26572
G1 X117.33333 Y75.0 E360.23053
G1 X118.666664 Y74.0 E360.40192
G1 X120.0 Y74.0 E360.53525
G1 X120.0 Y74.0
G1 X121.33333 Y74.0 E360.68146
G1 X122.666664 Y75.0 E360.8481
G1 X120.0 Y79.0 E361.81293
G1 X121.33333 Y80.0 E361.9843
G1 X124.0 Y80.0 E362.25098
G1 X125.33333 Y79.0 E362.41763
G1 X122.666664 Y75.0 E363.38245
G1 X124.0 Y74.0 E363.55383
G1 X125.33333 Y74.0 E363.68716
G1 X125.33333 Y77.0 E363.98782
G1 X125.33333 Y77.0
G1 X124.0 Y77.0 E364.13403
G1 X122.666664 Y78.0 E364.3007
G1 X125.33333 Y82.0 E365.2655
G1 X124.0 Y83.0 E365.4369
G1 X121.33333 Y83.0 E365.70355
G1 X120.0 Y82.0 E365.8702
G1 X122.666664 Y78.0 E366.83502
G1 X121.33333 Y77.0 E367.0064
G1 X120.0 Y77.0 E367.13974
G1 X120.0 Y77.0
G1 X118.666664 Y77.0 E367.28595
G1 X117.33333 Y78.0 E367.4526
G1 X120.0 Y82.0 E368.41742
G1 X118.666664 Y83.0 E368.5888
G1 X116.0 Y83.0 E368.85547
G1 X114.666664 Y82.0 E369.02213
G1 X117.33333 Y78.0 E369.98694
G1 X116.0 Y77.0 E370.15833
G1 X114.666664 Y77.0 E370.29166
G1 X114.666664 Y77.0
G1 X113.33333 Y77.0 E370.43787
G1 X112.0 Y78.0 E370.60452
G1 X114.666664 Y82.0 E371.56934
G1 X113.33333 Y83.0 E371.74072
G1 X110.666664 Y83.0 E372.0074
G1 X109.33333 Y82.0 E372.17404
G1 X112.0 Y78.0 E373.13885
G1 X110.666664 Y77.0 E373.31024
G1 X109.33333 Y77.0 E373.44357
G1 X109.33333 Y77.0
G1 X108.0 Y77.0 E373.58978
G1 X106.666664 Y78.0 E373.75644
G1 X109.33333 Y82.0 E374.72125
G1 X108.0 Y83.0 E374.89264
G1 X105.33333 Y83.0 E375.1593
G1 X104.0 Y82.0 E375.32596
G1 X106.666664 Y78.0 E376.29077
G1 X105.33333 Y77.0 E376.46216
G1 X104.0 Y77.0 E376.5955
G1 X104.0 Y77.0
G1 X102.666664 Y77.0 E376.7417
G1 X101.333336 Y78.0 E376.90836
G1 X104.0 Y82.0 E377.87317
G1 X102.666664 Y83.0 E378.04456
G1 X100.0 Y83.0 E378.31122
G1 X98.666664 Y82.0 E378.47787
G1 X101.333336 Y78.0 E379.4427
G1 X100.0 Y77.0 E379.61407
G1 X98.666664 Y77.0 E379.7474
G1 X98.666664 Y77.0
G1 X97.333336 Y77.0 E379.89362
G1 X96.0 Y78.0 E380.06027
G1 X98.666664 Y82.0 E381.0251
G1 X97.333336 Y83.0 E381.19647
G1 X94.666664 Y83.0 E381.46313
G1 X93.333336 Y82.0 E381.6298
G1 X96.0 Y78.0 E382.5946
G1 X94.666664 Y77.0 E382.766
G1 X93.333336 Y77.0 E382.89932
G1 X93.333336 Y77.0
G1 X92.0 Y77.0 E383.04553
G1 X90.666664 Y78.0 E383.2122
G1 X93.333336 Y82.0 E384.177
G1 X92.0 Y83.0 E384.3484
G1 X89.333336 Y83.0 E384.61505
G1 X88.0 Y82.0 E384.7817
G1 X90.666664 Y78.0 E385.74652
G1 X89.333336 Y77.0 E385.9179
G1 X88.0 Y77.0 E386.05124
G1 X88.0 Y77.0
G1 X86.666664 Y77.0 E386.19745
G1 X85.333336 Y78.0 E386.3641
G1 X88.0 Y82.0 E387.32892
G1 X86.666664 Y83.0 E387.5003
G1 X84.0 Y83.0 E387.76697
G1 X82.666664 Y82.0 E387.93362
G1 X85.333336 Y78.0 E388.89844
G1 X84.0 Y77.0 E389.06982
G1 X82.666664 Y77.0 E389.20316
G1 X82.666664 Y77.0
G1 X81.333336 Y77.0 E389.34937
G1 X80.0 Y78.0 E389.51602
G1 X82.666664 Y82.0 E390.48083
G1 X81.333336 Y83.0 E390.65222
G1 X78.666664 Y83.0 E390.91888
G1 X77.333336 Y82.0 E391.08554
G1 X80.0 Y78.0 E392.05035
G1 X78.666664 Y77.0 E392.22174
G1 X77.333336 Y77.0 E392.35507
G1 X77.333336 Y77.0
G1 X76.0 Y77.0 E392.50128
G1 X74.666664 Y78.0 E392.66794
G1 X77.333336 Y82.0 E393.63275
G1 X76.0 Y83.0 E393.80414
G1 X73.333336 Y83.0 E394.0708
G1 X72.0 Y82.0 E394.23746
G1 X74.666664 Y78.0 E395.20227
G1 X73.333336 Y77.0 E395.37366
G1 X72.0 Y77.0 E395.507
G1 X72.0 Y77.0
G1 X70.666664 Y77.0 E395.6532
G1 X69.333336 Y78.0 E395.81985
G1 X72.0 Y82.0 E396.78467
G1 X70.666664 Y83.0 E396.95605
G1 X68.0 Y83.0 E397.22272
G1 X66.666664 Y82.0 E397.38937
G1 X69.333336 Y78.0 E398.3542
G1 X68.0 Y77.0 E398.52557
G1 X66.666664 Y77.0 E398.6589
G1 X66.666664 Y80.0 E398.95956
G1 X66.666664 Y80.0
G1 X68.0 Y80.0 E399.10577
G1 X69.333336 Y81.0 E399.27243
G1 X66.666664 Y85.0 E400.23724
G1 X68.0 Y86.0 E400.40863
G1 X70.666664 Y86.0 E400.6753
G1 X72.0 Y85.0 E400.84195
G1 X69.333336 Y81.0 E401.80676
G1 X70.666664 Y80.0 E401.97815
G1 X72.0 Y80.0 E402.11148
G1 X72.0 Y80.0
G1 X73.333336 Y80.0 E402.2577
G1 X74.666664 Y81.0 E402.42435
G1 X72.0 Y85.0 E403.38916
G1 X73.333336 Y86.0 E403.56055
G1 X76.0 Y86.0 E403.8272
G1 X77.333336 Y85.0 E403.99387
G1 X74.666664 Y81.0 E404.95868
G1 X76.0 Y80.0 E405.13007
G1 X77.333336 Y80.0 E405.2634
G1 X77.333336 Y80.0
G1 X78.666664 Y80.0 E405.4096
G1 X80.0 Y81.0 E405.57626
G1 X77.333336 Y85.0 E406.54108
G1 X78.666664 Y86.0 E406.71246
G1 X81.333336 Y86.0 E406.97913
G1 X82.666664 Y85.0 E407.14578
G1 X80.0 Y81.0 E408.1106
G1 X81.333336 Y80.0 E408.28198
G1 X82.666664 Y80.0 E408.4153
G1 X82.666664 Y80.0
G1 X84.0 Y80.0 E408.56152
G1 X85.333336 Y81.0 E408.72818
G1 X82.666664 Y85.0 E409.693
G1 X84.0 Y86.0 E409.86438
G1 X86.666664 Y86.0 E410.13104
G1 X88.0 Y85.0 E410.2977
G1 X85.333336 Y81.0 E411.2625
G1 X86.666664 Y80.0 E411.4339
G1 X88.0 Y80.0 E411.56723
G1 X88.0 Y80.0
G1 X89.333336 Y80.0 E411.71344
G1 X90.666664 Y81.0 E411.8801
G1 X88.0 Y85.0 E412.8449
G1 X89.333336 Y86.0 E413.0163
G1 X92.0 Y86.0 E413.28296
G1 X93.333336 Y85.0 E413.44962
G1 X90.666664 Y81.0 E414.41443
G1 X92.0 Y80.0 E414.58582
G1 X93.333336 Y80.0 E414.71915
G1 X93.333336 Y80.0
G1 X94.666664 Y80.0 E414.86536
G1 X96.0 Y81.0 E415.032
G1 X93.333336 Y85.0 E415.99683
G1 X94.666664 Y86.0 E416.1682
G1 X97.333336 Y86.0 E416.43488
G1 X98.666664 Y85.0 E416.60153
G1 X96.0 Y81.0 E417.56635
G1 X97.333336 Y80.0 E417.73773
G1 X98.666664 Y80.0 E417.87106
G1 X98.666664 Y80.0
G1 X100.0 Y80.0 E418.01727
G1 X101.333336 Y81.0 E418.18393
G1 X98.666664 Y85.0 E419.14874
G1 X100.0 Y86.0 E419.32013
G1 X102.666664 Y86.0 E419.5868
G1 X104.0 Y85.0 E419.75345
G1 X101.333336 Y81.0 E420.71826
G1 X102.666664 Y80.0 E420.88965
G1 X104.0 Y80.0 E421.02298
G1 X104.0 Y80.0
G1 X105.33333 Y80.0 E421.1692
G1 X106.666664 Y81.0 E421.33585
G1 X104.0 Y85.0 E422.30066
G1 X105.33333 Y86.0 E422.47205
G1 X108.0 Y86.0 E422.7387
G1 X109.33333 Y85.0 E422.90536
G1 X106.666664 Y81.0 E423.87018
G1 X108.0 Y80.0 E424.04156
G1 X109.33333 Y80.0 E424.1749
G1 X109.33333 Y80.0
G1 X110.666664 Y80.0 E424.3211
G1 X112.0 Y81.0 E424.48776
G1 X109.33333 Y85.0 E425.45258
G1 X110.666664 Y86.0 E425.62396
G1 X113.33333 Y86.0 E425.89062
G1 X114.666664 Y85.0 E426.05728
G1 X112.0 Y81.0 E427.0221
G1 X113.33333 Y80.0 E427.19348
G1 X114.666664 Y80.0 E427.3268
G1 X114.666664 Y80.0
G1 X116.0 Y80.0 E427.47302
G1 X117.33333 Y81.0 E427.63968
G1 X114.666664 Y85.0 E428.6045
G1 X116.0 Y86.0 E428.77588
G1 X118.666664 Y86.0 E429.04254
G1 X120.0 Y85.0 E429.2092
G1 X117.33333 Y81.0 E430.174
G1 X118.666664 Y80.0 E430.3454
G1 X120.0 Y80.0 E430.47873
G1 X120.0 Y80.0
G1 X121.33333 Y80.0 E430.62494
G1 X122.666664 Y81.0 E430.7916
G1 X120.0 Y85.0 E431.7564
G1 X121.33333 Y86.0 E431.9278
G1 X124.0 Y86.0 E432.19446
G1 X125.33333 Y85.0 E432.3611
G1 X122.666664 Y81.0 E433.32593
G1 X124.0 Y80.0 E433.4973
G1 X125.33333 Y80.0 E433.63065
G1 X125.33333 Y83.0 E433.9313
G1 X125.33333 Y83.0
G1 X124.0 Y83.0 E434.0775
G1 X122.666664 Y84.0 E434.24417
G1 X125.33333 Y88.0 E435.20898
G1 X124.0 Y89.0 E435.38037
G1 X121.33333 Y89.0 E435.64703
G1 X120.0 Y88.0 E435.8137
G1 X122.666664 Y84.0 E436.7785
G1 X121.33333 Y83.0 E436.9499
G1 X120.0 Y83.0 E437.08322
G1 X120.0 Y83.0
G1 X118.666664 Y83.0 E437.22943
G1 X117.33333 Y84.0 E437.3961
G1 X120.0 Y88.0 E438.3609
G1 X118.666664 Y89.0 E438.5323
G1 X116.0 Y89.0 E438.79895
G1 X114.666664 Y88.0 E438.9656
G1 X117.33333 Y84.0 E439.93042
G1 X116.0 Y83.0 E440.1018
G1 X114.666664 Y83.0 E440.23514
G1 X114.666664 Y83.0
G1 X113.33333 Y83.0 E440.38135
G1 X112.0 Y84.0 E440.548
G1 X114.666664 Y88.0 E441.51282
G1 X113.33333 Y89.0 E441.6842
G1 X110.666664 Y89.0 E441.95087
G1 X109.33333 Y88.0 E442.11752
G1 X112.0 Y84.0 E443.08234
G1 X110.666664 Y83.0 E443.25372
G1 X109.33333 Y83.0 E443.38705
G1 X109.33333 Y83.0
G1 X108.0 Y83.0 E443.53326
G1 X106.666664 Y84.0 E443.69992
G1 X109.33333 Y88.0 E444.66473
G1 X108.0 Y89.0 E444.83612
G1 X105.33333 Y89.0 E445.10278
G1 X104.0 Y88.0 E445.26944
G1 X106.666664 Y84.0 E446.23425
G1 X105.33333 Y83.0 E446.40564
G1 X104.0 Y83.0 E446.53897
G1 X104.0 Y83.0
G1 X102.666664 Y83.0 E446.68518
G1 X101.333336 Y84.0 E446.85184
G1 X104.0 Y88.0 E447.81665
G1 X102.666664 Y89.0 E447.98804
G1 X100.0 Y89.0 E448.2547
G1 X98.666664 Y88.0 E448.42136
G1 X101.333336 Y84.0 E449.38617
G1 X100.0 Y83.0 E449.55756
G1 X98.666664 Y83.0 E449.6909
G1 X98.666664 Y83.0
G1 X97.333336 Y83.0 E449.8371
G1 X96.0 Y84.0 E450.00375
G1 X98.666664 Y88.0 E450.96857
G1 X97.333336 Y89.0 E451.13995
G1 X94.666664 Y89.0 E451.40662
G1 X93.333336 Y88.0 E451.57327
G1 X96.0 Y84.0 E452.5381
G1 X94.666664 Y83.0 E452.70947
G1 X93.333336 Y83.0 E452.8428
G1 X93.333336 Y83.0
G1 X92.0 Y83.0 E452.989
G1 X90.666664 Y84.0 E453.15567
G1 X93.333336 Y88.0 E454.12048
G1 X92.0 Y89.0 E454.29187
G1 X89.333336 Y89.0 E454.55853
G1 X88.0 Y88.0 E454.7252
G1 X90.666664 Y84.0 E455.69
G1 X89.333336 Y83.0 E455.8614
G1 X88.0 Y83.0 E455.99472
G1 X88.0 Y83.0
G1 X86.666664 Y83.0 E456.14093
G1 X85.333336 Y84.0 E456.3076
G1 X88.0 Y88.0 E457.2724
G1 X86.666664 Y89.0 E457.4438
G1 X84.0 Y89.0 E457.71045
G1 X82.666664 Y88.0 E457.8771
G1 X85.333336 Y84.0 E458.84192
G1 X84.0 Y83.0 E459.0133
G1 X82.666664 Y83.0 E459.14664
G1 X82.666664 Y83.0
G1 X81.333336 Y83.0 E459.29285
G1 X80.0 Y84.0 E459.4595
G1 X82.666664 Y88.0 E460.42432
G1 X81.333336 Y89.0 E460.5957
G1 X78.666664 Y89.0 E460.86237
G1 X77.333336 Y88.0 E461.02902
G1 X80.0 Y84.0 E461.99384
G1 X78.666664 Y83.0 E462.16522
G1 X77.333336 Y83.0 E462.29855
G1 X77.333336 Y83.0
G1 X76.0 Y83.0 E462.44476
G1 X74.666664 Y84.0 E462.61142
G1 X77.333336 Y88.0 E463.57623
G1 X76.0 Y89.0 E463.74762
G1 X73.333336 Y89.0 E464.01428
G1 X72.0 Y88.0 E464.18094
G1 X74.666664 Y84.0 E465.14575
G1 X73.333336 Y83.0 E465.31714
G1 X72.0 Y83.0 E465.45047
G1 X72.0 Y83.0
G1 X70.666664 Y83.0 E465.59668
G1 X69.333336 Y84.0 E465.76334
G1 X72.0 Y88.0 E466.72815
G1 X70.666664 Y89.0 E466.89954
G1 X68.0 Y89.0 E467.1662
G1 X66.666664 Y88.0 E467.33286
G1 X69.333336 Y84.0 E468.29767
G1 X68.0 Y83.0 E468.46906
G1 X66.666664 Y83.0 E468.6024
G1 X66.666664 Y86.0 E468.90305
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning
