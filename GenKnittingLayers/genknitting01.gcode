;Project: Generate Knitting
;Ria Stroes
;start code
M140 S50.000000
M109 T0 S210.000000
T0
M190 S60           ;bed temperature on
M109 S210          ;extruder temperature on
G21                ;metric values
G90                ;absolute positioning
M107               ;start with the fan off
G28 X0 Y0          ;move X/Y to min endstops, so the head is out of the way
G28 Z0             ;move Z to min endstops
G1 Z15.0 F3000     ;move the platform up 15mm
G1 F200 E30        ;extrude 10mm of feed stock
G92 E0             ;zero the extruded length again
M117 Printing...
G1 F1200.0
G1 Z0.25
G1 X80.0 Y50.0
G1 X140.0 Y50.0 E6.0
G1 X140.0 Y120.0 E13.0
G1 X80.0 Y120.0 E19.0
G1 X81.0 Y51.0 E25.900724
G1 X138.0 Y51.0 E31.600725
G1 X138.0 Y118.0 E38.300724
G1 X81.0 Y118.0 E44.000725
G1 X82.0 Y52.0 E50.601482
G1 Z0.3 X85.0 Y55.0
;row
G1 X86.5625 Y56.190475 E51.34632
G1 X86.5625 Y56.190475 E51.34632
G1 X86.5625 Y57.38095 E51.489178
G1 X85.0 Y58.57143 E51.7249
G1 X83.4375 Y58.57143 E51.9124
G1 X81.875 Y57.38095 E52.14812
G1 X81.875 Y55.0 E52.433834
G1 X83.4375 Y53.809525 E52.669556
G1 X86.5625 Y53.809525 E53.044556
G1 X88.125 Y53.809525 E53.232056
G1 X89.6875 Y53.809525 E53.419556
G1 X91.25 Y53.809525 E53.607056
G1 X92.8125 Y56.190475 E53.842777
G1 X92.8125 Y56.190475 E53.842777
G1 X92.8125 Y57.38095 E53.985634
G1 X91.25 Y58.57143 E54.221355
G1 X89.6875 Y58.57143 E54.408855
G1 X88.125 Y57.38095 E54.644577
G1 X88.125 Y55.0 E54.93029
G1 X89.6875 Y53.809525 E55.16601
G1 X92.8125 Y53.809525 E55.54101
G1 X94.375 Y53.809525 E55.72851
G1 X95.9375 Y53.809525 E55.91601
G1 X97.5 Y53.809525 E56.10351
G1 X99.0625 Y56.190475 E56.339233
G1 X99.0625 Y56.190475 E56.339233
G1 X99.0625 Y57.38095 E56.48209
G1 X97.5 Y58.57143 E56.71781
G1 X95.9375 Y58.57143 E56.90531
G1 X94.375 Y57.38095 E57.141033
G1 X94.375 Y55.0 E57.426746
G1 X95.9375 Y53.809525 E57.662468
G1 X99.0625 Y53.809525 E58.037468
G1 X100.625 Y53.809525 E58.224968
G1 X102.1875 Y53.809525 E58.412468
G1 X103.75 Y53.809525 E58.599968
G1 X105.3125 Y56.190475 E58.83569
G1 X105.3125 Y56.190475 E58.83569
G1 X105.3125 Y57.38095 E58.978546
G1 X103.75 Y58.57143 E59.214268
G1 X102.1875 Y58.57143 E59.401768
G1 X100.625 Y57.38095 E59.63749
G1 X100.625 Y55.0 E59.923203
G1 X102.1875 Y53.809525 E60.158924
G1 X105.3125 Y53.809525 E60.533924
G1 X106.875 Y53.809525 E60.721424
G1 X108.4375 Y53.809525 E60.908924
G1 X110.0 Y53.809525 E61.096424
G1 X111.5625 Y56.190475 E61.332146
G1 X111.5625 Y56.190475 E61.332146
G1 X111.5625 Y57.38095 E61.475002
G1 X110.0 Y58.57143 E61.710724
G1 X108.4375 Y58.57143 E61.898224
G1 X106.875 Y57.38095 E62.133945
G1 X106.875 Y55.0 E62.41966
G1 X108.4375 Y53.809525 E62.65538
G1 X111.5625 Y53.809525 E63.03038
G1 X113.125 Y53.809525 E63.21788
G1 X114.6875 Y53.809525 E63.40538
G1 X116.25 Y53.809525 E63.59288
G1 X117.8125 Y56.190475 E63.8286
G1 X117.8125 Y56.190475 E63.8286
G1 X117.8125 Y57.38095 E63.97146
G1 X116.25 Y58.57143 E64.20718
G1 X114.6875 Y58.57143 E64.39468
G1 X113.125 Y57.38095 E64.630394
G1 X113.125 Y55.0 E64.91611
G1 X114.6875 Y53.809525 E65.151825
G1 X117.8125 Y53.809525 E65.526825
G1 X119.375 Y53.809525 E65.714325
G1 X120.9375 Y53.809525 E65.901825
G1 X122.5 Y53.809525 E66.089325
G1 X124.0625 Y56.190475 E66.32504
G1 X124.0625 Y56.190475 E66.32504
G1 X124.0625 Y57.38095 E66.4679
G1 X122.5 Y58.57143 E66.70362
G1 X120.9375 Y58.57143 E66.89112
G1 X119.375 Y57.38095 E67.12684
G1 X119.375 Y55.0 E67.41255
G1 X120.9375 Y53.809525 E67.64827
G1 X124.0625 Y53.809525 E68.02327
G1 X125.625 Y53.809525 E68.21077
G1 X127.1875 Y53.809525 E68.39827
G1 X128.75 Y53.809525 E68.58577
G1 X130.3125 Y56.190475 E68.82149
G1 X130.3125 Y56.190475 E68.82149
G1 X130.3125 Y57.38095 E68.96435
G1 X128.75 Y58.57143 E69.200066
G1 X127.1875 Y58.57143 E69.387566
G1 X125.625 Y57.38095 E69.62328
G1 X125.625 Y55.0 E69.909
G1 X127.1875 Y53.809525 E70.144714
G1 X130.3125 Y53.809525 E70.519714
G1 X131.875 Y53.809525 E70.707214
G1 X133.4375 Y53.809525 E70.894714
G1 X135.0 Y53.809525 E71.082214
;row
G1 X131.875 Y62.142857 E71.31793
G1 X131.875 Y59.7619 E71.603645
G1 X133.4375 Y58.571426 E71.83936
G1 X133.4375 Y56.190475 E72.12508
G1 X131.875 Y55.0 E72.360794
G1 X130.3125 Y55.0 E72.548294
G1 X128.75 Y56.190475 E72.78401
G1 X128.75 Y58.571426 E73.069725
G1 X130.3125 Y59.7619 E73.30544
G1 X130.3125 Y62.142857 E73.591156
G1 X128.75 Y63.333332 E73.82687
G1 X127.1875 Y63.333332 E74.01437
G1 X125.625 Y62.142857 E74.25009
G1 X125.625 Y59.7619 E74.535805
G1 X127.1875 Y58.571426 E74.77152
G1 X127.1875 Y56.190475 E75.057236
G1 X125.625 Y55.0 E75.29295
G1 X124.0625 Y55.0 E75.48045
G1 X122.5 Y56.190475 E75.71617
G1 X122.5 Y58.571426 E76.001884
G1 X124.0625 Y59.7619 E76.2376
G1 X124.0625 Y62.142857 E76.523315
G1 X122.5 Y63.333332 E76.75903
G1 X120.9375 Y63.333332 E76.94653
G1 X119.375 Y62.142857 E77.18225
G1 X119.375 Y59.7619 E77.467964
G1 X120.9375 Y58.571426 E77.70368
G1 X120.9375 Y56.190475 E77.989395
G1 X119.375 Y55.0 E78.22511
G1 X117.8125 Y55.0 E78.41261
G1 X116.25 Y56.190475 E78.64833
G1 X116.25 Y58.571426 E78.934044
G1 X117.8125 Y59.7619 E79.16976
G1 X117.8125 Y62.142857 E79.455475
G1 X116.25 Y63.333332 E79.69119
G1 X114.6875 Y63.333332 E79.87869
G1 X113.125 Y62.142857 E80.11441
G1 X113.125 Y59.7619 E80.40012
G1 X114.6875 Y58.571426 E80.63584
G1 X114.6875 Y56.190475 E80.921555
G1 X113.125 Y55.0 E81.15727
G1 X111.5625 Y55.0 E81.34477
G1 X110.0 Y56.190475 E81.58049
G1 X110.0 Y58.571426 E81.8662
G1 X111.5625 Y59.7619 E82.10192
G1 X111.5625 Y62.142857 E82.387634
G1 X110.0 Y63.333332 E82.62335
G1 X108.4375 Y63.333332 E82.81085
G1 X106.875 Y62.142857 E83.04657
G1 X106.875 Y59.7619 E83.33228
G1 X108.4375 Y58.571426 E83.568
G1 X108.4375 Y56.190475 E83.853714
G1 X106.875 Y55.0 E84.08943
G1 X105.3125 Y55.0 E84.27693
G1 X103.75 Y56.190475 E84.51265
G1 X103.75 Y58.571426 E84.79836
G1 X105.3125 Y59.7619 E85.03408
G1 X105.3125 Y62.142857 E85.31979
G1 X103.75 Y63.333332 E85.55551
G1 X102.1875 Y63.333332 E85.74301
G1 X100.625 Y62.142857 E85.97873
G1 X100.625 Y59.7619 E86.26444
G1 X102.1875 Y58.571426 E86.50016
G1 X102.1875 Y56.190475 E86.78587
G1 X100.625 Y55.0 E87.02159
G1 X99.0625 Y55.0 E87.20909
G1 X97.5 Y56.190475 E87.44481
G1 X97.5 Y58.571426 E87.73052
G1 X99.0625 Y59.7619 E87.96624
G1 X99.0625 Y62.142857 E88.25195
G1 X97.5 Y63.333332 E88.48767
G1 X95.9375 Y63.333332 E88.67517
G1 X94.375 Y62.142857 E88.91089
G1 X94.375 Y59.7619 E89.1966
G1 X95.9375 Y58.571426 E89.43232
G1 X95.9375 Y56.190475 E89.71803
G1 X94.375 Y55.0 E89.95375
G1 X92.8125 Y55.0 E90.14125
G1 X91.25 Y56.190475 E90.37697
G1 X91.25 Y58.571426 E90.66268
G1 X92.8125 Y59.7619 E90.8984
G1 X92.8125 Y62.142857 E91.18411
G1 X91.25 Y63.333332 E91.41983
G1 X89.6875 Y63.333332 E91.60733
G1 X88.125 Y62.142857 E91.84305
G1 X88.125 Y59.7619 E92.12876
G1 X89.6875 Y58.571426 E92.36448
G1 X89.6875 Y56.190475 E92.65019
G1 X88.125 Y55.0 E92.88591
G1 X86.5625 Y55.0 E93.07341
G1 X85.0 Y56.190475 E93.30913
G1 X85.0 Y58.571426 E93.59484
G1 X86.5625 Y59.7619 E93.83056
G1 X86.5625 Y62.142857 E94.11627
G1 X85.0 Y63.333332 E94.35199
G1 X85.0 Y67.5 E94.85199
;row
G1 X86.5625 Y66.309525 E95.08771
G1 X86.5625 Y63.92857 E95.37342
G1 X85.0 Y62.738094 E95.60914
G1 X85.0 Y60.357143 E95.89485
G1 X86.5625 Y59.166668 E96.13057
G1 X88.125 Y59.166668 E96.31807
G1 X89.6875 Y60.357143 E96.55379
G1 X89.6875 Y62.738094 E96.8395
G1 X88.125 Y63.92857 E97.07522
G1 X88.125 Y66.309525 E97.36093
G1 X89.6875 Y67.5 E97.59665
G1 X91.25 Y67.5 E97.78415
G1 X92.8125 Y66.309525 E98.01987
G1 X92.8125 Y63.92857 E98.30558
G1 X91.25 Y62.738094 E98.5413
G1 X91.25 Y60.357143 E98.82701
G1 X92.8125 Y59.166668 E99.06273
G1 X94.375 Y59.166668 E99.25023
G1 X95.9375 Y60.357143 E99.48595
G1 X95.9375 Y62.738094 E99.77166
G1 X94.375 Y63.92857 E100.00738
G1 X94.375 Y66.309525 E100.29309
G1 X95.9375 Y67.5 E100.52881
G1 X97.5 Y67.5 E100.71631
G1 X99.0625 Y66.309525 E100.95203
G1 X99.0625 Y63.92857 E101.23774
G1 X97.5 Y62.738094 E101.47346
G1 X97.5 Y60.357143 E101.75917
G1 X99.0625 Y59.166668 E101.99489
G1 X100.625 Y59.166668 E102.18239
G1 X102.1875 Y60.357143 E102.418106
G1 X102.1875 Y62.738094 E102.70382
G1 X100.625 Y63.92857 E102.93954
G1 X100.625 Y66.309525 E103.22525
G1 X102.1875 Y67.5 E103.46097
G1 X103.75 Y67.5 E103.64847
G1 X105.3125 Y66.309525 E103.884186
G1 X105.3125 Y63.92857 E104.1699
G1 X103.75 Y62.738094 E104.40562
G1 X103.75 Y60.357143 E104.69133
G1 X105.3125 Y59.166668 E104.92705
G1 X106.875 Y59.166668 E105.11455
G1 X108.4375 Y60.357143 E105.350266
G1 X108.4375 Y62.738094 E105.63598
G1 X106.875 Y63.92857 E105.8717
G1 X106.875 Y66.309525 E106.15741
G1 X108.4375 Y67.5 E106.39313
G1 X110.0 Y67.5 E106.58063
G1 X111.5625 Y66.309525 E106.816345
G1 X111.5625 Y63.92857 E107.10206
G1 X110.0 Y62.738094 E107.337776
G1 X110.0 Y60.357143 E107.62349
G1 X111.5625 Y59.166668 E107.85921
G1 X113.125 Y59.166668 E108.04671
G1 X114.6875 Y60.357143 E108.282425
G1 X114.6875 Y62.738094 E108.56814
G1 X113.125 Y63.92857 E108.803856
G1 X113.125 Y66.309525 E109.08957
G1 X114.6875 Y67.5 E109.32529
G1 X116.25 Y67.5 E109.51279
G1 X117.8125 Y66.309525 E109.748505
G1 X117.8125 Y63.92857 E110.03422
G1 X116.25 Y62.738094 E110.269936
G1 X116.25 Y60.357143 E110.55565
G1 X117.8125 Y59.166668 E110.79137
G1 X119.375 Y59.166668 E110.97887
G1 X120.9375 Y60.357143 E111.214584
G1 X120.9375 Y62.738094 E111.5003
G1 X119.375 Y63.92857 E111.736015
G1 X119.375 Y66.309525 E112.02173
G1 X120.9375 Y67.5 E112.25745
G1 X122.5 Y67.5 E112.44495
G1 X124.0625 Y66.309525 E112.680664
G1 X124.0625 Y63.92857 E112.96638
G1 X122.5 Y62.738094 E113.202095
G1 X122.5 Y60.357143 E113.48781
G1 X124.0625 Y59.166668 E113.723526
G1 X125.625 Y59.166668 E113.911026
G1 X127.1875 Y60.357143 E114.14674
G1 X127.1875 Y62.738094 E114.43246
G1 X125.625 Y63.92857 E114.668175
G1 X125.625 Y66.309525 E114.95389
G1 X127.1875 Y67.5 E115.189606
G1 X128.75 Y67.5 E115.377106
G1 X130.3125 Y66.309525 E115.61282
G1 X130.3125 Y63.92857 E115.89854
G1 X128.75 Y62.738094 E116.134254
G1 X128.75 Y60.357143 E116.41997
G1 X130.3125 Y59.166668 E116.655685
G1 X131.875 Y59.166668 E116.843185
G1 X133.4375 Y60.357143 E117.0789
G1 X133.4375 Y62.738094 E117.36462
G1 X131.875 Y63.92857 E117.600334
G1 X131.875 Y66.309525 E117.88605
G1 X133.4375 Y67.5 E118.121765
G1 X133.4375 Y71.666664 E118.621765
;row
G1 X131.875 Y70.47619 E118.85748
G1 X131.875 Y68.09524 E119.143196
G1 X133.4375 Y66.90476 E119.378914
G1 X133.4375 Y64.5238 E119.66463
G1 X131.875 Y63.333332 E119.900345
G1 X130.3125 Y63.333332 E120.087845
G1 X128.75 Y64.5238 E120.32356
G1 X128.75 Y66.90476 E120.609276
G1 X130.3125 Y68.09524 E120.84499
G1 X130.3125 Y70.47619 E121.13071
G1 X128.75 Y71.666664 E121.366425
G1 X127.1875 Y71.666664 E121.553925
G1 X125.625 Y70.47619 E121.78964
G1 X125.625 Y68.09524 E122.075356
G1 X127.1875 Y66.90476 E122.31107
G1 X127.1875 Y64.5238 E122.59679
G1 X125.625 Y63.333332 E122.832504
G1 X124.0625 Y63.333332 E123.020004
G1 X122.5 Y64.5238 E123.25572
G1 X122.5 Y66.90476 E123.541435
G1 X124.0625 Y68.09524 E123.77715
G1 X124.0625 Y70.47619 E124.06287
G1 X122.5 Y71.666664 E124.298584
G1 X120.9375 Y71.666664 E124.486084
G1 X119.375 Y70.47619 E124.7218
G1 X119.375 Y68.09524 E125.007515
G1 X120.9375 Y66.90476 E125.24323
G1 X120.9375 Y64.5238 E125.528946
G1 X119.375 Y63.333332 E125.76466
G1 X117.8125 Y63.333332 E125.95216
G1 X116.25 Y64.5238 E126.18788
G1 X116.25 Y66.90476 E126.473595
G1 X117.8125 Y68.09524 E126.70931
G1 X117.8125 Y70.47619 E126.995026
G1 X116.25 Y71.666664 E127.23074
G1 X114.6875 Y71.666664 E127.41824
G1 X113.125 Y70.47619 E127.65396
G1 X113.125 Y68.09524 E127.939674
G1 X114.6875 Y66.90476 E128.1754
G1 X114.6875 Y64.5238 E128.46112
G1 X113.125 Y63.333332 E128.69684
G1 X111.5625 Y63.333332 E128.88434
G1 X110.0 Y64.5238 E129.12006
G1 X110.0 Y66.90476 E129.40578
G1 X111.5625 Y68.09524 E129.6415
G1 X111.5625 Y70.47619 E129.92722
G1 X110.0 Y71.666664 E130.16293
G1 X108.4375 Y71.666664 E130.35043
G1 X106.875 Y70.47619 E130.58615
G1 X106.875 Y68.09524 E130.87187
G1 X108.4375 Y66.90476 E131.10759
G1 X108.4375 Y64.5238 E131.39331
G1 X106.875 Y63.333332 E131.62903
G1 X105.3125 Y63.333332 E131.81653
G1 X103.75 Y64.5238 E132.05225
G1 X103.75 Y66.90476 E132.33797
G1 X105.3125 Y68.09524 E132.57368
G1 X105.3125 Y70.47619 E132.8594
G1 X103.75 Y71.666664 E133.09512
G1 X102.1875 Y71.666664 E133.28262
G1 X100.625 Y70.47619 E133.51834
G1 X100.625 Y68.09524 E133.80406
G1 X102.1875 Y66.90476 E134.03978
G1 X102.1875 Y64.5238 E134.3255
G1 X100.625 Y63.333332 E134.56122
G1 X99.0625 Y63.333332 E134.74872
G1 X97.5 Y64.5238 E134.98444
G1 X97.5 Y66.90476 E135.27016
G1 X99.0625 Y68.09524 E135.50587
G1 X99.0625 Y70.47619 E135.7916
G1 X97.5 Y71.666664 E136.02731
G1 X95.9375 Y71.666664 E136.21481
G1 X94.375 Y70.47619 E136.45053
G1 X94.375 Y68.09524 E136.73625
G1 X95.9375 Y66.90476 E136.97197
G1 X95.9375 Y64.5238 E137.25769
G1 X94.375 Y63.333332 E137.49341
G1 X92.8125 Y63.333332 E137.68091
G1 X91.25 Y64.5238 E137.91663
G1 X91.25 Y66.90476 E138.20235
G1 X92.8125 Y68.09524 E138.43806
G1 X92.8125 Y70.47619 E138.72379
G1 X91.25 Y71.666664 E138.9595
G1 X89.6875 Y71.666664 E139.147
G1 X88.125 Y70.47619 E139.38272
G1 X88.125 Y68.09524 E139.66844
G1 X89.6875 Y66.90476 E139.90416
G1 X89.6875 Y64.5238 E140.18988
G1 X88.125 Y63.333332 E140.4256
G1 X86.5625 Y63.333332 E140.6131
G1 X85.0 Y64.5238 E140.84882
G1 X85.0 Y66.90476 E141.13454
G1 X86.5625 Y68.09524 E141.37025
G1 X86.5625 Y70.47619 E141.65598
G1 X85.0 Y71.666664 E141.8917
G1 X85.0 Y75.83333 E142.3917
;row
G1 X86.5625 Y74.64285 E142.62741
G1 X86.5625 Y72.2619 E142.91313
G1 X85.0 Y71.07143 E143.14885
G1 X85.0 Y68.69047 E143.43457
G1 X86.5625 Y67.49999 E143.67029
G1 X88.125 Y67.49999 E143.85779
G1 X89.6875 Y68.69047 E144.0935
G1 X89.6875 Y71.07143 E144.37923
G1 X88.125 Y72.2619 E144.61494
G1 X88.125 Y74.64285 E144.90067
G1 X89.6875 Y75.83333 E145.13638
G1 X91.25 Y75.83333 E145.32388
G1 X92.8125 Y74.64285 E145.5596
G1 X92.8125 Y72.2619 E145.84532
G1 X91.25 Y71.07143 E146.08104
G1 X91.25 Y68.69047 E146.36676
G1 X92.8125 Y67.49999 E146.60248
G1 X94.375 Y67.49999 E146.78998
G1 X95.9375 Y68.69047 E147.0257
G1 X95.9375 Y71.07143 E147.31142
G1 X94.375 Y72.2619 E147.54713
G1 X94.375 Y74.64285 E147.83286
G1 X95.9375 Y75.83333 E148.06857
G1 X97.5 Y75.83333 E148.25607
G1 X99.0625 Y74.64285 E148.49179
G1 X99.0625 Y72.2619 E148.77751
G1 X97.5 Y71.07143 E149.01323
G1 X97.5 Y68.69047 E149.29895
G1 X99.0625 Y67.49999 E149.53467
G1 X100.625 Y67.49999 E149.72217
G1 X102.1875 Y68.69047 E149.95789
G1 X102.1875 Y71.07143 E150.2436
G1 X100.625 Y72.2619 E150.47932
G1 X100.625 Y74.64285 E150.76505
G1 X102.1875 Y75.83333 E151.00076
G1 X103.75 Y75.83333 E151.18826
G1 X105.3125 Y74.64285 E151.42398
G1 X105.3125 Y72.2619 E151.7097
G1 X103.75 Y71.07143 E151.94542
G1 X103.75 Y68.69047 E152.23114
G1 X105.3125 Y67.49999 E152.46686
G1 X106.875 Y67.49999 E152.65436
G1 X108.4375 Y68.69047 E152.89008
G1 X108.4375 Y71.07143 E153.1758
G1 X106.875 Y72.2619 E153.41151
G1 X106.875 Y74.64285 E153.69724
G1 X108.4375 Y75.83333 E153.93295
G1 X110.0 Y75.83333 E154.12045
G1 X111.5625 Y74.64285 E154.35617
G1 X111.5625 Y72.2619 E154.64189
G1 X110.0 Y71.07143 E154.87761
G1 X110.0 Y68.69047 E155.16333
G1 X111.5625 Y67.49999 E155.39905
G1 X113.125 Y67.49999 E155.58655
G1 X114.6875 Y68.69047 E155.82227
G1 X114.6875 Y71.07143 E156.10799
G1 X113.125 Y72.2619 E156.3437
G1 X113.125 Y74.64285 E156.62943
G1 X114.6875 Y75.83333 E156.86514
G1 X116.25 Y75.83333 E157.05264
G1 X117.8125 Y74.64285 E157.28836
G1 X117.8125 Y72.2619 E157.57408
G1 X116.25 Y71.07143 E157.8098
G1 X116.25 Y68.69047 E158.09552
G1 X117.8125 Y67.49999 E158.33124
G1 X119.375 Y67.49999 E158.51874
G1 X120.9375 Y68.69047 E158.75446
G1 X120.9375 Y71.07143 E159.04018
G1 X119.375 Y72.2619 E159.2759
G1 X119.375 Y74.64285 E159.56161
G1 X120.9375 Y75.83333 E159.79733
G1 X122.5 Y75.83333 E159.98483
G1 X124.0625 Y74.64285 E160.22055
G1 X124.0625 Y72.2619 E160.50627
G1 X122.5 Y71.07143 E160.74199
G1 X122.5 Y68.69047 E161.02771
G1 X124.0625 Y67.49999 E161.26343
G1 X125.625 Y67.49999 E161.45093
G1 X127.1875 Y68.69047 E161.68665
G1 X127.1875 Y71.07143 E161.97237
G1 X125.625 Y72.2619 E162.20808
G1 X125.625 Y74.64285 E162.4938
G1 X127.1875 Y75.83333 E162.72952
G1 X128.75 Y75.83333 E162.91702
G1 X130.3125 Y74.64285 E163.15274
G1 X130.3125 Y72.2619 E163.43846
G1 X128.75 Y71.07143 E163.67418
G1 X128.75 Y68.69047 E163.9599
G1 X130.3125 Y67.49999 E164.19562
G1 X131.875 Y67.49999 E164.38312
G1 X133.4375 Y68.69047 E164.61884
G1 X133.4375 Y71.07143 E164.90456
G1 X131.875 Y72.2619 E165.14027
G1 X131.875 Y74.64285 E165.426
G1 X133.4375 Y75.83333 E165.66171
G1 X133.4375 Y79.99999 E166.16171
;row
G1 X131.875 Y78.80952 E166.39743
G1 X131.875 Y76.428566 E166.68315
G1 X133.4375 Y75.23809 E166.91887
G1 X133.4375 Y72.85713 E167.20459
G1 X131.875 Y71.66666 E167.4403
G1 X130.3125 Y71.66666 E167.6278
G1 X128.75 Y72.85713 E167.86353
G1 X128.75 Y75.23809 E168.14925
G1 X130.3125 Y76.428566 E168.38496
G1 X130.3125 Y78.80952 E168.67068
G1 X128.75 Y79.99999 E168.9064
G1 X127.1875 Y79.99999 E169.0939
G1 X125.625 Y78.80952 E169.32962
G1 X125.625 Y76.428566 E169.61534
G1 X127.1875 Y75.23809 E169.85106
G1 X127.1875 Y72.85713 E170.13678
G1 X125.625 Y71.66666 E170.3725
G1 X124.0625 Y71.66666 E170.56
G1 X122.5 Y72.85713 E170.79572
G1 X122.5 Y75.23809 E171.08144
G1 X124.0625 Y76.428566 E171.31715
G1 X124.0625 Y78.80952 E171.60287
G1 X122.5 Y79.99999 E171.8386
G1 X120.9375 Y79.99999 E172.0261
G1 X119.375 Y78.80952 E172.26181
G1 X119.375 Y76.428566 E172.54753
G1 X120.9375 Y75.23809 E172.78325
G1 X120.9375 Y72.85713 E173.06897
G1 X119.375 Y71.66666 E173.30469
G1 X117.8125 Y71.66666 E173.49219
G1 X116.25 Y72.85713 E173.7279
G1 X116.25 Y75.23809 E174.01363
G1 X117.8125 Y76.428566 E174.24934
G1 X117.8125 Y78.80952 E174.53506
G1 X116.25 Y79.99999 E174.77078
G1 X114.6875 Y79.99999 E174.95828
G1 X113.125 Y78.80952 E175.194
G1 X113.125 Y76.428566 E175.47972
G1 X114.6875 Y75.23809 E175.71544
G1 X114.6875 Y72.85713 E176.00116
G1 X113.125 Y71.66666 E176.23688
G1 X111.5625 Y71.66666 E176.42438
G1 X110.0 Y72.85713 E176.6601
G1 X110.0 Y75.23809 E176.94582
G1 X111.5625 Y76.428566 E177.18153
G1 X111.5625 Y78.80952 E177.46725
G1 X110.0 Y79.99999 E177.70297
G1 X108.4375 Y79.99999 E177.89047
G1 X106.875 Y78.80952 E178.12619
G1 X106.875 Y76.428566 E178.41191
G1 X108.4375 Y75.23809 E178.64763
G1 X108.4375 Y72.85713 E178.93335
G1 X106.875 Y71.66666 E179.16907
G1 X105.3125 Y71.66666 E179.35657
G1 X103.75 Y72.85713 E179.59229
G1 X103.75 Y75.23809 E179.878
G1 X105.3125 Y76.428566 E180.11372
G1 X105.3125 Y78.80952 E180.39944
G1 X103.75 Y79.99999 E180.63516
G1 X102.1875 Y79.99999 E180.82266
G1 X100.625 Y78.80952 E181.05838
G1 X100.625 Y76.428566 E181.3441
G1 X102.1875 Y75.23809 E181.57982
G1 X102.1875 Y72.85713 E181.86554
G1 X100.625 Y71.66666 E182.10126
G1 X99.0625 Y71.66666 E182.28876
G1 X97.5 Y72.85713 E182.52448
G1 X97.5 Y75.23809 E182.8102
G1 X99.0625 Y76.428566 E183.04591
G1 X99.0625 Y78.80952 E183.33163
G1 X97.5 Y79.99999 E183.56735
G1 X95.9375 Y79.99999 E183.75485
G1 X94.375 Y78.80952 E183.99057
G1 X94.375 Y76.428566 E184.27629
G1 X95.9375 Y75.23809 E184.51201
G1 X95.9375 Y72.85713 E184.79773
G1 X94.375 Y71.66666 E185.03345
G1 X92.8125 Y71.66666 E185.22095
G1 X91.25 Y72.85713 E185.45667
G1 X91.25 Y75.23809 E185.74239
G1 X92.8125 Y76.428566 E185.9781
G1 X92.8125 Y78.80952 E186.26382
G1 X91.25 Y79.99999 E186.49954
G1 X89.6875 Y79.99999 E186.68704
G1 X88.125 Y78.80952 E186.92276
G1 X88.125 Y76.428566 E187.20848
G1 X89.6875 Y75.23809 E187.4442
G1 X89.6875 Y72.85713 E187.72992
G1 X88.125 Y71.66666 E187.96564
G1 X86.5625 Y71.66666 E188.15314
G1 X85.0 Y72.85713 E188.38885
G1 X85.0 Y75.23809 E188.67458
G1 X86.5625 Y76.428566 E188.9103
G1 X86.5625 Y78.80952 E189.19601
G1 X85.0 Y79.99999 E189.43173
G1 X85.0 Y84.16666 E189.93173
;row
G1 X86.5625 Y82.97618 E190.16745
G1 X86.5625 Y80.59523 E190.45317
G1 X85.0 Y79.404755 E190.68889
G1 X85.0 Y77.023796 E190.97461
G1 X86.5625 Y75.83332 E191.21033
G1 X88.125 Y75.83332 E191.39783
G1 X89.6875 Y77.023796 E191.63354
G1 X89.6875 Y79.404755 E191.91927
G1 X88.125 Y80.59523 E192.15498
G1 X88.125 Y82.97618 E192.4407
G1 X89.6875 Y84.16666 E192.67642
G1 X91.25 Y84.16666 E192.86392
G1 X92.8125 Y82.97618 E193.09964
G1 X92.8125 Y80.59523 E193.38536
G1 X91.25 Y79.404755 E193.62108
G1 X91.25 Y77.023796 E193.9068
G1 X92.8125 Y75.83332 E194.14252
G1 X94.375 Y75.83332 E194.33002
G1 X95.9375 Y77.023796 E194.56573
G1 X95.9375 Y79.404755 E194.85146
G1 X94.375 Y80.59523 E195.08717
G1 X94.375 Y82.97618 E195.3729
G1 X95.9375 Y84.16666 E195.60861
G1 X97.5 Y84.16666 E195.79611
G1 X99.0625 Y82.97618 E196.03183
G1 X99.0625 Y80.59523 E196.31755
G1 X97.5 Y79.404755 E196.55327
G1 X97.5 Y77.023796 E196.83899
G1 X99.0625 Y75.83332 E197.0747
G1 X100.625 Y75.83332 E197.2622
G1 X102.1875 Y77.023796 E197.49792
G1 X102.1875 Y79.404755 E197.78365
G1 X100.625 Y80.59523 E198.01936
G1 X100.625 Y82.97618 E198.30508
G1 X102.1875 Y84.16666 E198.5408
G1 X103.75 Y84.16666 E198.7283
G1 X105.3125 Y82.97618 E198.96402
G1 X105.3125 Y80.59523 E199.24974
G1 X103.75 Y79.404755 E199.48546
G1 X103.75 Y77.023796 E199.77118
G1 X105.3125 Y75.83332 E200.0069
G1 X106.875 Y75.83332 E200.1944
G1 X108.4375 Y77.023796 E200.43011
G1 X108.4375 Y79.404755 E200.71584
G1 X106.875 Y80.59523 E200.95155
G1 X106.875 Y82.97618 E201.23727
G1 X108.4375 Y84.16666 E201.47299
G1 X110.0 Y84.16666 E201.66049
G1 X111.5625 Y82.97618 E201.89621
G1 X111.5625 Y80.59523 E202.18193
G1 X110.0 Y79.404755 E202.41765
G1 X110.0 Y77.023796 E202.70337
G1 X111.5625 Y75.83332 E202.93909
G1 X113.125 Y75.83332 E203.12659
G1 X114.6875 Y77.023796 E203.3623
G1 X114.6875 Y79.404755 E203.64803
G1 X113.125 Y80.59523 E203.88374
G1 X113.125 Y82.97618 E204.16946
G1 X114.6875 Y84.16666 E204.40518
G1 X116.25 Y84.16666 E204.59268
G1 X117.8125 Y82.97618 E204.8284
G1 X117.8125 Y80.59523 E205.11412
G1 X116.25 Y79.404755 E205.34984
G1 X116.25 Y77.023796 E205.63556
G1 X117.8125 Y75.83332 E205.87128
G1 X119.375 Y75.83332 E206.05878
G1 X120.9375 Y77.023796 E206.2945
G1 X120.9375 Y79.404755 E206.58022
G1 X119.375 Y80.59523 E206.81593
G1 X119.375 Y82.97618 E207.10165
G1 X120.9375 Y84.16666 E207.33737
G1 X122.5 Y84.16666 E207.52487
G1 X124.0625 Y82.97618 E207.76059
G1 X124.0625 Y80.59523 E208.04631
G1 X122.5 Y79.404755 E208.28203
G1 X122.5 Y77.023796 E208.56775
G1 X124.0625 Y75.83332 E208.80347
G1 X125.625 Y75.83332 E208.99097
G1 X127.1875 Y77.023796 E209.22668
G1 X127.1875 Y79.404755 E209.5124
G1 X125.625 Y80.59523 E209.74812
G1 X125.625 Y82.97618 E210.03384
G1 X127.1875 Y84.16666 E210.26956
G1 X128.75 Y84.16666 E210.45706
G1 X130.3125 Y82.97618 E210.69278
G1 X130.3125 Y80.59523 E210.9785
G1 X128.75 Y79.404755 E211.21422
G1 X128.75 Y77.023796 E211.49994
G1 X130.3125 Y75.83332 E211.73566
G1 X131.875 Y75.83332 E211.92316
G1 X133.4375 Y77.023796 E212.15887
G1 X133.4375 Y79.404755 E212.4446
G1 X131.875 Y80.59523 E212.68031
G1 X131.875 Y82.97618 E212.96603
G1 X133.4375 Y84.16666 E213.20175
G1 X133.4375 Y88.33332 E213.70175
;row
G1 X131.875 Y87.142845 E213.93747
G1 X131.875 Y84.761894 E214.22319
G1 X133.4375 Y83.57142 E214.45891
G1 X133.4375 Y81.19046 E214.74463
G1 X131.875 Y79.999985 E214.98035
G1 X130.3125 Y79.999985 E215.16785
G1 X128.75 Y81.19046 E215.40356
G1 X128.75 Y83.57142 E215.68929
G1 X130.3125 Y84.761894 E215.925
G1 X130.3125 Y87.142845 E216.21072
G1 X128.75 Y88.33332 E216.44644
G1 X127.1875 Y88.33332 E216.63394
G1 X125.625 Y87.142845 E216.86966
G1 X125.625 Y84.761894 E217.15538
G1 X127.1875 Y83.57142 E217.3911
G1 X127.1875 Y81.19046 E217.67682
G1 X125.625 Y79.999985 E217.91254
G1 X124.0625 Y79.999985 E218.10004
G1 X122.5 Y81.19046 E218.33575
G1 X122.5 Y83.57142 E218.62148
G1 X124.0625 Y84.761894 E218.8572
G1 X124.0625 Y87.142845 E219.14291
G1 X122.5 Y88.33332 E219.37863
G1 X120.9375 Y88.33332 E219.56613
G1 X119.375 Y87.142845 E219.80185
G1 X119.375 Y84.761894 E220.08757
G1 X120.9375 Y83.57142 E220.32329
G1 X120.9375 Y81.19046 E220.60901
G1 X119.375 Y79.999985 E220.84473
G1 X117.8125 Y79.999985 E221.03223
G1 X116.25 Y81.19046 E221.26794
G1 X116.25 Y83.57142 E221.55367
G1 X117.8125 Y84.761894 E221.78938
G1 X117.8125 Y87.142845 E222.0751
G1 X116.25 Y88.33332 E222.31082
G1 X114.6875 Y88.33332 E222.49832
G1 X113.125 Y87.142845 E222.73404
G1 X113.125 Y84.761894 E223.01976
G1 X114.6875 Y83.57142 E223.25548
G1 X114.6875 Y81.19046 E223.5412
G1 X113.125 Y79.999985 E223.77692
G1 X111.5625 Y79.999985 E223.96442
G1 X110.0 Y81.19046 E224.20013
G1 X110.0 Y83.57142 E224.48586
G1 X111.5625 Y84.761894 E224.72157
G1 X111.5625 Y87.142845 E225.0073
G1 X110.0 Y88.33332 E225.24301
G1 X108.4375 Y88.33332 E225.43051
G1 X106.875 Y87.142845 E225.66623
G1 X106.875 Y84.761894 E225.95195
G1 X108.4375 Y83.57142 E226.18767
G1 X108.4375 Y81.19046 E226.47339
G1 X106.875 Y79.999985 E226.7091
G1 X105.3125 Y79.999985 E226.8966
G1 X103.75 Y81.19046 E227.13232
G1 X103.75 Y83.57142 E227.41805
G1 X105.3125 Y84.761894 E227.65376
G1 X105.3125 Y87.142845 E227.93948
G1 X103.75 Y88.33332 E228.1752
G1 X102.1875 Y88.33332 E228.3627
G1 X100.625 Y87.142845 E228.59842
G1 X100.625 Y84.761894 E228.88414
G1 X102.1875 Y83.57142 E229.11986
G1 X102.1875 Y81.19046 E229.40558
G1 X100.625 Y79.999985 E229.6413
G1 X99.0625 Y79.999985 E229.8288
G1 X97.5 Y81.19046 E230.06451
G1 X97.5 Y83.57142 E230.35023
G1 X99.0625 Y84.761894 E230.58595
G1 X99.0625 Y87.142845 E230.87167
G1 X97.5 Y88.33332 E231.10739
G1 X95.9375 Y88.33332 E231.29489
G1 X94.375 Y87.142845 E231.53061
G1 X94.375 Y84.761894 E231.81633
G1 X95.9375 Y83.57142 E232.05205
G1 X95.9375 Y81.19046 E232.33777
G1 X94.375 Y79.999985 E232.57349
G1 X92.8125 Y79.999985 E232.76099
G1 X91.25 Y81.19046 E232.9967
G1 X91.25 Y83.57142 E233.28242
G1 X92.8125 Y84.761894 E233.51814
G1 X92.8125 Y87.142845 E233.80386
G1 X91.25 Y88.33332 E234.03958
G1 X89.6875 Y88.33332 E234.22708
G1 X88.125 Y87.142845 E234.4628
G1 X88.125 Y84.761894 E234.74852
G1 X89.6875 Y83.57142 E234.98424
G1 X89.6875 Y81.19046 E235.26996
G1 X88.125 Y79.999985 E235.50568
G1 X86.5625 Y79.999985 E235.69318
G1 X85.0 Y81.19046 E235.9289
G1 X85.0 Y83.57142 E236.21461
G1 X86.5625 Y84.761894 E236.45033
G1 X86.5625 Y87.142845 E236.73605
G1 X85.0 Y88.33332 E236.97177
G1 X85.0 Y92.499985 E237.47177
;row
G1 X86.5625 Y91.30951 E237.70749
G1 X86.5625 Y88.92856 E237.99321
G1 X85.0 Y87.73808 E238.22893
G1 X85.0 Y85.357124 E238.51465
G1 X86.5625 Y84.16665 E238.75037
G1 X88.125 Y84.16665 E238.93787
G1 X89.6875 Y85.357124 E239.17358
G1 X89.6875 Y87.73808 E239.4593
G1 X88.125 Y88.92856 E239.69502
G1 X88.125 Y91.30951 E239.98074
G1 X89.6875 Y92.499985 E240.21646
G1 X91.25 Y92.499985 E240.40396
G1 X92.8125 Y91.30951 E240.63968
G1 X92.8125 Y88.92856 E240.9254
G1 X91.25 Y87.73808 E241.16112
G1 X91.25 Y85.357124 E241.44684
G1 X92.8125 Y84.16665 E241.68256
G1 X94.375 Y84.16665 E241.87006
G1 X95.9375 Y85.357124 E242.10577
G1 X95.9375 Y87.73808 E242.3915
G1 X94.375 Y88.92856 E242.62721
G1 X94.375 Y91.30951 E242.91293
G1 X95.9375 Y92.499985 E243.14865
G1 X97.5 Y92.499985 E243.33615
G1 X99.0625 Y91.30951 E243.57187
G1 X99.0625 Y88.92856 E243.85759
G1 X97.5 Y87.73808 E244.0933
G1 X97.5 Y85.357124 E244.37903
G1 X99.0625 Y84.16665 E244.61475
G1 X100.625 Y84.16665 E244.80225
G1 X102.1875 Y85.357124 E245.03796
G1 X102.1875 Y87.73808 E245.32368
G1 X100.625 Y88.92856 E245.5594
G1 X100.625 Y91.30951 E245.84512
G1 X102.1875 Y92.499985 E246.08084
G1 X103.75 Y92.499985 E246.26834
G1 X105.3125 Y91.30951 E246.50406
G1 X105.3125 Y88.92856 E246.78978
G1 X103.75 Y87.73808 E247.0255
G1 X103.75 Y85.357124 E247.31122
G1 X105.3125 Y84.16665 E247.54694
G1 X106.875 Y84.16665 E247.73444
G1 X108.4375 Y85.357124 E247.97015
G1 X108.4375 Y87.73808 E248.25587
G1 X106.875 Y88.92856 E248.4916
G1 X106.875 Y91.30951 E248.77731
G1 X108.4375 Y92.499985 E249.01303
G1 X110.0 Y92.499985 E249.20053
G1 X111.5625 Y91.30951 E249.43625
G1 X111.5625 Y88.92856 E249.72197
G1 X110.0 Y87.73808 E249.95769
G1 X110.0 Y85.357124 E250.24341
G1 X111.5625 Y84.16665 E250.47913
G1 X113.125 Y84.16665 E250.66663
G1 X114.6875 Y85.357124 E250.90234
G1 X114.6875 Y87.73808 E251.18806
G1 X113.125 Y88.92856 E251.42378
G1 X113.125 Y91.30951 E251.7095
G1 X114.6875 Y92.499985 E251.94522
G1 X116.25 Y92.499985 E252.13272
G1 X117.8125 Y91.30951 E252.36844
G1 X117.8125 Y88.92856 E252.65416
G1 X116.25 Y87.73808 E252.88988
G1 X116.25 Y85.357124 E253.1756
G1 X117.8125 Y84.16665 E253.41132
G1 X119.375 Y84.16665 E253.59882
G1 X120.9375 Y85.357124 E253.83453
G1 X120.9375 Y87.73808 E254.12025
G1 X119.375 Y88.92856 E254.35597
G1 X119.375 Y91.30951 E254.6417
G1 X120.9375 Y92.499985 E254.87741
G1 X122.5 Y92.499985 E255.06491
G1 X124.0625 Y91.30951 E255.30063
G1 X124.0625 Y88.92856 E255.58635
G1 X122.5 Y87.73808 E255.82207
G1 X122.5 Y85.357124 E256.1078
G1 X124.0625 Y84.16665 E256.3435
G1 X125.625 Y84.16665 E256.531
G1 X127.1875 Y85.357124 E256.76672
G1 X127.1875 Y87.73808 E257.05243
G1 X125.625 Y88.92856 E257.28815
G1 X125.625 Y91.30951 E257.57385
G1 X127.1875 Y92.499985 E257.80957
G1 X128.75 Y92.499985 E257.99707
G1 X130.3125 Y91.30951 E258.2328
G1 X130.3125 Y88.92856 E258.5185
G1 X128.75 Y87.73808 E258.7542
G1 X128.75 Y85.357124 E259.03992
G1 X130.3125 Y84.16665 E259.27563
G1 X131.875 Y84.16665 E259.46313
G1 X133.4375 Y85.357124 E259.69885
G1 X133.4375 Y87.73808 E259.98456
G1 X131.875 Y88.92856 E260.22028
G1 X131.875 Y91.30951 E260.50598
G1 X133.4375 Y92.499985 E260.7417
G1 X133.4375 Y96.66665 E261.2417
;row
G1 X131.875 Y95.47617 E261.47742
G1 X131.875 Y93.09522 E261.76312
G1 X133.4375 Y91.90475 E261.99884
G1 X133.4375 Y89.52379 E262.28455
G1 X131.875 Y88.33331 E262.52026
G1 X130.3125 Y88.33331 E262.70776
G1 X128.75 Y89.52379 E262.94348
G1 X128.75 Y91.90475 E263.2292
G1 X130.3125 Y93.09522 E263.4649
G1 X130.3125 Y95.47617 E263.7506
G1 X128.75 Y96.66665 E263.98633
G1 X127.1875 Y96.66665 E264.17383
G1 X125.625 Y95.47617 E264.40955
G1 X125.625 Y93.09522 E264.69525
G1 X127.1875 Y91.90475 E264.93097
G1 X127.1875 Y89.52379 E265.21667
G1 X125.625 Y88.33331 E265.4524
G1 X124.0625 Y88.33331 E265.6399
G1 X122.5 Y89.52379 E265.8756
G1 X122.5 Y91.90475 E266.16132
G1 X124.0625 Y93.09522 E266.39703
G1 X124.0625 Y95.47617 E266.68274
G1 X122.5 Y96.66665 E266.91846
G1 X120.9375 Y96.66665 E267.10596
G1 X119.375 Y95.47617 E267.34167
G1 X119.375 Y93.09522 E267.62738
G1 X120.9375 Y91.90475 E267.8631
G1 X120.9375 Y89.52379 E268.1488
G1 X119.375 Y88.33331 E268.38452
G1 X117.8125 Y88.33331 E268.57202
G1 X116.25 Y89.52379 E268.80774
G1 X116.25 Y91.90475 E269.09344
G1 X117.8125 Y93.09522 E269.32916
G1 X117.8125 Y95.47617 E269.61487
G1 X116.25 Y96.66665 E269.8506
G1 X114.6875 Y96.66665 E270.0381
G1 X113.125 Y95.47617 E270.2738
G1 X113.125 Y93.09522 E270.5595
G1 X114.6875 Y91.90475 E270.79523
G1 X114.6875 Y89.52379 E271.08093
G1 X113.125 Y88.33331 E271.31665
G1 X111.5625 Y88.33331 E271.50415
G1 X110.0 Y89.52379 E271.73987
G1 X110.0 Y91.90475 E272.02557
G1 X111.5625 Y93.09522 E272.2613
G1 X111.5625 Y95.47617 E272.547
G1 X110.0 Y96.66665 E272.7827
G1 X108.4375 Y96.66665 E272.9702
G1 X106.875 Y95.47617 E273.20593
G1 X106.875 Y93.09522 E273.49164
G1 X108.4375 Y91.90475 E273.72736
G1 X108.4375 Y89.52379 E274.01306
G1 X106.875 Y88.33331 E274.24878
G1 X105.3125 Y88.33331 E274.43628
G1 X103.75 Y89.52379 E274.672
G1 X103.75 Y91.90475 E274.9577
G1 X105.3125 Y93.09522 E275.19342
G1 X105.3125 Y95.47617 E275.47913
G1 X103.75 Y96.66665 E275.71484
G1 X102.1875 Y96.66665 E275.90234
G1 X100.625 Y95.47617 E276.13806
G1 X100.625 Y93.09522 E276.42377
G1 X102.1875 Y91.90475 E276.6595
G1 X102.1875 Y89.52379 E276.9452
G1 X100.625 Y88.33331 E277.1809
G1 X99.0625 Y88.33331 E277.3684
G1 X97.5 Y89.52379 E277.60413
G1 X97.5 Y91.90475 E277.88983
G1 X99.0625 Y93.09522 E278.12555
G1 X99.0625 Y95.47617 E278.41125
G1 X97.5 Y96.66665 E278.64697
G1 X95.9375 Y96.66665 E278.83447
G1 X94.375 Y95.47617 E279.0702
G1 X94.375 Y93.09522 E279.3559
G1 X95.9375 Y91.90475 E279.5916
G1 X95.9375 Y89.52379 E279.87732
G1 X94.375 Y88.33331 E280.11304
G1 X92.8125 Y88.33331 E280.30054
G1 X91.25 Y89.52379 E280.53625
G1 X91.25 Y91.90475 E280.82196
G1 X92.8125 Y93.09522 E281.05768
G1 X92.8125 Y95.47617 E281.34338
G1 X91.25 Y96.66665 E281.5791
G1 X89.6875 Y96.66665 E281.7666
G1 X88.125 Y95.47617 E282.00232
G1 X88.125 Y93.09522 E282.28802
G1 X89.6875 Y91.90475 E282.52374
G1 X89.6875 Y89.52379 E282.80945
G1 X88.125 Y88.33331 E283.04517
G1 X86.5625 Y88.33331 E283.23267
G1 X85.0 Y89.52379 E283.46838
G1 X85.0 Y91.90475 E283.7541
G1 X86.5625 Y93.09522 E283.9898
G1 X86.5625 Y95.47617 E284.2755
G1 X85.0 Y96.66665 E284.51123
G1 X85.0 Y100.83331 E285.01123
;row
G1 X86.5625 Y99.64284 E285.24695
G1 X86.5625 Y97.26189 E285.53265
G1 X85.0 Y96.07141 E285.76837
G1 X85.0 Y93.69045 E286.05408
G1 X86.5625 Y92.49998 E286.2898
G1 X88.125 Y92.49998 E286.4773
G1 X89.6875 Y93.69045 E286.713
G1 X89.6875 Y96.07141 E286.99872
G1 X88.125 Y97.26189 E287.23444
G1 X88.125 Y99.64284 E287.52014
G1 X89.6875 Y100.83331 E287.75586
G1 X91.25 Y100.83331 E287.94336
G1 X92.8125 Y99.64284 E288.17908
G1 X92.8125 Y97.26189 E288.46478
G1 X91.25 Y96.07141 E288.7005
G1 X91.25 Y93.69045 E288.9862
G1 X92.8125 Y92.49998 E289.22192
G1 X94.375 Y92.49998 E289.40942
G1 X95.9375 Y93.69045 E289.64514
G1 X95.9375 Y96.07141 E289.93085
G1 X94.375 Y97.26189 E290.16656
G1 X94.375 Y99.64284 E290.45227
G1 X95.9375 Y100.83331 E290.688
G1 X97.5 Y100.83331 E290.8755
G1 X99.0625 Y99.64284 E291.1112
G1 X99.0625 Y97.26189 E291.3969
G1 X97.5 Y96.07141 E291.63263
G1 X97.5 Y93.69045 E291.91833
G1 X99.0625 Y92.49998 E292.15405
G1 X100.625 Y92.49998 E292.34155
G1 X102.1875 Y93.69045 E292.57727
G1 X102.1875 Y96.07141 E292.86298
G1 X100.625 Y97.26189 E293.0987
G1 X100.625 Y99.64284 E293.3844
G1 X102.1875 Y100.83331 E293.62012
G1 X103.75 Y100.83331 E293.80762
G1 X105.3125 Y99.64284 E294.04333
G1 X105.3125 Y97.26189 E294.32904
G1 X103.75 Y96.07141 E294.56476
G1 X103.75 Y93.69045 E294.85046
G1 X105.3125 Y92.49998 E295.08618
G1 X106.875 Y92.49998 E295.27368
G1 X108.4375 Y93.69045 E295.5094
G1 X108.4375 Y96.07141 E295.7951
G1 X106.875 Y97.26189 E296.03082
G1 X106.875 Y99.64284 E296.31653
G1 X108.4375 Y100.83331 E296.55225
G1 X110.0 Y100.83331 E296.73975
G1 X111.5625 Y99.64284 E296.97546
G1 X111.5625 Y97.26189 E297.26117
G1 X110.0 Y96.07141 E297.4969
G1 X110.0 Y93.69045 E297.7826
G1 X111.5625 Y92.49998 E298.0183
G1 X113.125 Y92.49998 E298.2058
G1 X114.6875 Y93.69045 E298.44153
G1 X114.6875 Y96.07141 E298.72723
G1 X113.125 Y97.26189 E298.96295
G1 X113.125 Y99.64284 E299.24866
G1 X114.6875 Y100.83331 E299.48438
G1 X116.25 Y100.83331 E299.67188
G1 X117.8125 Y99.64284 E299.9076
G1 X117.8125 Y97.26189 E300.1933
G1 X116.25 Y96.07141 E300.42902
G1 X116.25 Y93.69045 E300.71472
G1 X117.8125 Y92.49998 E300.95044
G1 X119.375 Y92.49998 E301.13794
G1 X120.9375 Y93.69045 E301.37366
G1 X120.9375 Y96.07141 E301.65936
G1 X119.375 Y97.26189 E301.89508
G1 X119.375 Y99.64284 E302.1808
G1 X120.9375 Y100.83331 E302.4165
G1 X122.5 Y100.83331 E302.604
G1 X124.0625 Y99.64284 E302.83972
G1 X124.0625 Y97.26189 E303.12543
G1 X122.5 Y96.07141 E303.36115
G1 X122.5 Y93.69045 E303.64685
G1 X124.0625 Y92.49998 E303.88257
G1 X125.625 Y92.49998 E304.07007
G1 X127.1875 Y93.69045 E304.3058
G1 X127.1875 Y96.07141 E304.5915
G1 X125.625 Y97.26189 E304.8272
G1 X125.625 Y99.64284 E305.1129
G1 X127.1875 Y100.83331 E305.34863
G1 X128.75 Y100.83331 E305.53613
G1 X130.3125 Y99.64284 E305.77185
G1 X130.3125 Y97.26189 E306.05756
G1 X128.75 Y96.07141 E306.29327
G1 X128.75 Y93.69045 E306.57898
G1 X130.3125 Y92.49998 E306.8147
G1 X131.875 Y92.49998 E307.0022
G1 X133.4375 Y93.69045 E307.2379
G1 X133.4375 Y96.07141 E307.52362
G1 X131.875 Y97.26189 E307.75934
G1 X131.875 Y99.64284 E308.04504
G1 X133.4375 Y100.83331 E308.28076
G1 X133.4375 Y104.99998 E308.78076
;row
G1 X131.875 Y103.8095 E309.01648
G1 X131.875 Y101.42855 E309.3022
G1 X133.4375 Y100.238075 E309.5379
G1 X133.4375 Y97.85712 E309.8236
G1 X131.875 Y96.66664 E310.05933
G1 X130.3125 Y96.66664 E310.24683
G1 X128.75 Y97.85712 E310.48254
G1 X128.75 Y100.238075 E310.76825
G1 X130.3125 Y101.42855 E311.00397
G1 X130.3125 Y103.8095 E311.28967
G1 X128.75 Y104.99998 E311.5254
G1 X127.1875 Y104.99998 E311.7129
G1 X125.625 Y103.8095 E311.9486
G1 X125.625 Y101.42855 E312.2343
G1 X127.1875 Y100.238075 E312.47003
G1 X127.1875 Y97.85712 E312.75574
G1 X125.625 Y96.66664 E312.99146
G1 X124.0625 Y96.66664 E313.17896
G1 X122.5 Y97.85712 E313.41467
G1 X122.5 Y100.238075 E313.70038
G1 X124.0625 Y101.42855 E313.9361
G1 X124.0625 Y103.8095 E314.2218
G1 X122.5 Y104.99998 E314.45752
G1 X120.9375 Y104.99998 E314.64502
G1 X119.375 Y103.8095 E314.88074
G1 X119.375 Y101.42855 E315.16644
G1 X120.9375 Y100.238075 E315.40216
G1 X120.9375 Y97.85712 E315.68787
G1 X119.375 Y96.66664 E315.92358
G1 X117.8125 Y96.66664 E316.11108
G1 X116.25 Y97.85712 E316.3468
G1 X116.25 Y100.238075 E316.6325
G1 X117.8125 Y101.42855 E316.86823
G1 X117.8125 Y103.8095 E317.15393
G1 X116.25 Y104.99998 E317.38965
G1 X114.6875 Y104.99998 E317.57715
G1 X113.125 Y103.8095 E317.81287
G1 X113.125 Y101.42855 E318.09857
G1 X114.6875 Y100.238075 E318.3343
G1 X114.6875 Y97.85712 E318.62
G1 X113.125 Y96.66664 E318.8557
G1 X111.5625 Y96.66664 E319.0432
G1 X110.0 Y97.85712 E319.27893
G1 X110.0 Y100.238075 E319.56464
G1 X111.5625 Y101.42855 E319.80035
G1 X111.5625 Y103.8095 E320.08606
G1 X110.0 Y104.99998 E320.32178
G1 X108.4375 Y104.99998 E320.50928
G1 X106.875 Y103.8095 E320.745
G1 X106.875 Y101.42855 E321.0307
G1 X108.4375 Y100.238075 E321.26642
G1 X108.4375 Y97.85712 E321.55212
G1 X106.875 Y96.66664 E321.78784
G1 X105.3125 Y96.66664 E321.97534
G1 X103.75 Y97.85712 E322.21106
G1 X103.75 Y100.238075 E322.49677
G1 X105.3125 Y101.42855 E322.73248
G1 X105.3125 Y103.8095 E323.0182
G1 X103.75 Y104.99998 E323.2539
G1 X102.1875 Y104.99998 E323.4414
G1 X100.625 Y103.8095 E323.67712
G1 X100.625 Y101.42855 E323.96283
G1 X102.1875 Y100.238075 E324.19855
G1 X102.1875 Y97.85712 E324.48425
G1 X100.625 Y96.66664 E324.71997
G1 X99.0625 Y96.66664 E324.90747
G1 X97.5 Y97.85712 E325.1432
G1 X97.5 Y100.238075 E325.4289
G1 X99.0625 Y101.42855 E325.6646
G1 X99.0625 Y103.8095 E325.95032
G1 X97.5 Y104.99998 E326.18604
G1 X95.9375 Y104.99998 E326.37354
G1 X94.375 Y103.8095 E326.60925
G1 X94.375 Y101.42855 E326.89496
G1 X95.9375 Y100.238075 E327.13068
G1 X95.9375 Y97.85712 E327.41638
G1 X94.375 Y96.66664 E327.6521
G1 X92.8125 Y96.66664 E327.8396
G1 X91.25 Y97.85712 E328.07532
G1 X91.25 Y100.238075 E328.36102
G1 X92.8125 Y101.42855 E328.59674
G1 X92.8125 Y103.8095 E328.88245
G1 X91.25 Y104.99998 E329.11816
G1 X89.6875 Y104.99998 E329.30566
G1 X88.125 Y103.8095 E329.54138
G1 X88.125 Y101.42855 E329.8271
G1 X89.6875 Y100.238075 E330.0628
G1 X89.6875 Y97.85712 E330.3485
G1 X88.125 Y96.66664 E330.58423
G1 X86.5625 Y96.66664 E330.77173
G1 X85.0 Y97.85712 E331.00745
G1 X85.0 Y100.238075 E331.29315
G1 X86.5625 Y101.42855 E331.52887
G1 X86.5625 Y103.8095 E331.81458
G1 X85.0 Y104.99998 E332.0503
G1 X85.0 Y109.16664 E332.5503
;end code
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G91                          ;relative positioning
G1 Z+2                      ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning