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
G1 Z0.05
G1 X51.0 Y50.0 E40.490074
G1 X52.0 Y51.0 E40.560783
G1 X50.0 Y55.0 E40.785282
G1 X51.0 Y56.0 E40.85877
G1 X53.0 Y56.0 E40.958767
G1 X54.0 Y55.0 E41.029476
G1 X52.0 Y51.0 E41.253975
G1 X53.0 Y50.0 E41.32746
G1 X54.0 Y50.0 E41.37746
G1 X55.0 Y50.0 E41.42746
G1 X56.0 Y51.0 E41.49817
G1 X54.0 Y55.0 E41.722668
G1 X55.0 Y56.0 E41.796154
G1 X57.0 Y56.0 E41.896152
G1 X58.0 Y55.0 E41.96686
G1 X56.0 Y51.0 E42.19136
G1 X57.0 Y50.0 E42.264847
G1 X58.0 Y50.0 E42.314846
G1 X58.0 Y50.0 E42.334846
G1 X59.0 Y50.0 E42.384846
G1 X60.0 Y51.0 E42.455555
G1 X58.0 Y55.0 E42.680054
G1 X59.0 Y56.0 E42.75354
G1 X61.0 Y56.0 E42.85354
G1 X62.0 Y55.0 E42.924248
G1 X60.0 Y51.0 E43.148746
G1 X61.0 Y50.0 E43.222233
G1 X62.0 Y50.0 E43.272232
G1 X63.0 Y50.0 E43.32223
G1 X64.0 Y51.0 E43.39294
G1 X62.0 Y55.0 E43.61744
G1 X63.0 Y56.0 E43.690926
G1 X65.0 Y56.0 E43.790924
G1 X66.0 Y55.0 E43.861633
G1 X64.0 Y51.0 E44.086132
G1 X65.0 Y50.0 E44.15962
G1 X66.0 Y50.0 E44.209618
G1 X66.0 Y50.0 E44.229618
G1 X67.0 Y50.0 E44.279617
G1 X68.0 Y51.0 E44.350327
G1 X66.0 Y55.0 E44.574825
G1 X67.0 Y56.0 E44.64831
G1 X69.0 Y56.0 E44.74831
G1 X70.0 Y55.0 E44.81902
G1 X68.0 Y51.0 E45.043518
G1 X69.0 Y50.0 E45.117004
G1 X70.0 Y50.0 E45.167004
G1 X71.0 Y50.0 E45.217003
G1 X72.0 Y51.0 E45.287712
G1 X70.0 Y55.0 E45.51221
G1 X71.0 Y56.0 E45.585697
G1 X73.0 Y56.0 E45.685696
G1 X74.0 Y55.0 E45.756405
G1 X72.0 Y51.0 E45.980904
G1 X73.0 Y50.0 E46.05439
G1 X74.0 Y50.0 E46.10439
G1 X74.0 Y50.0 E46.12439
G1 X75.0 Y50.0 E46.17439
G1 X76.0 Y51.0 E46.2451
G1 X74.0 Y55.0 E46.469597
G1 X75.0 Y56.0 E46.543083
G1 X77.0 Y56.0 E46.64308
G1 X78.0 Y55.0 E46.71379
G1 X76.0 Y51.0 E46.93829
G1 X77.0 Y50.0 E47.011776
G1 X78.0 Y50.0 E47.061775
G1 X79.0 Y50.0 E47.111774
G1 X80.0 Y51.0 E47.182484
G1 X78.0 Y55.0 E47.406982
G1 X79.0 Y56.0 E47.48047
G1 X81.0 Y56.0 E47.580467
G1 X82.0 Y55.0 E47.651176
G1 X80.0 Y51.0 E47.875675
G1 X81.0 Y50.0 E47.94916
G1 X82.0 Y50.0 E47.99916
G1 X82.0 Y50.0 E48.01916
G1 X83.0 Y50.0 E48.06916
G1 X84.0 Y51.0 E48.13987
G1 X82.0 Y55.0 E48.36437
G1 X83.0 Y56.0 E48.437855
G1 X85.0 Y56.0 E48.537853
G1 X86.0 Y55.0 E48.608562
G1 X84.0 Y51.0 E48.83306
G1 X85.0 Y50.0 E48.906548
G1 X86.0 Y50.0 E48.956547
G1 X87.0 Y50.0 E49.006546
G1 X88.0 Y51.0 E49.077255
G1 X86.0 Y55.0 E49.301754
G1 X87.0 Y56.0 E49.37524
G1 X89.0 Y56.0 E49.47524
G1 X90.0 Y55.0 E49.545948
G1 X88.0 Y51.0 E49.770447
G1 X89.0 Y50.0 E49.843933
G1 X90.0 Y50.0 E49.893932
G1 X91.0 Y50.0 E49.94393
G1 X92.0 Y51.0 E50.01464
G1 X90.0 Y55.0 E50.23914
G1 X91.0 Y56.0 E50.312626
G1 X93.0 Y56.0 E50.412624
G1 X94.0 Y55.0 E50.483334
G1 X92.0 Y51.0 E50.707832
G1 X93.0 Y50.0 E50.78132
G1 X94.0 Y50.0 E50.831318
G1 X94.0 Y53.0 E50.98165
G1 X94.0 Y53.0 E50.99165
G1 X93.0 Y53.0 E51.04165
G1 X92.0 Y54.0 E51.11236
G1 X94.0 Y58.0 E51.336857
G1 X93.0 Y59.0 E51.410343
G1 X91.0 Y59.0 E51.51034
G1 X90.0 Y58.0 E51.58105
G1 X92.0 Y54.0 E51.80555
G1 X91.0 Y53.0 E51.879036
G1 X90.0 Y53.0 E51.929035
G1 X89.0 Y53.0 E51.979034
G1 X88.0 Y54.0 E52.049744
G1 X90.0 Y58.0 E52.274242
G1 X89.0 Y59.0 E52.34773
G1 X87.0 Y59.0 E52.447727
G1 X86.0 Y58.0 E52.518436
G1 X88.0 Y54.0 E52.742935
G1 X87.0 Y53.0 E52.81642
G1 X86.0 Y53.0 E52.86642
G1 X85.0 Y53.0 E52.91642
G1 X84.0 Y54.0 E52.98713
G1 X86.0 Y58.0 E53.211628
G1 X85.0 Y59.0 E53.285114
G1 X83.0 Y59.0 E53.385113
G1 X82.0 Y58.0 E53.455822
G1 X84.0 Y54.0 E53.68032
G1 X83.0 Y53.0 E53.753807
G1 X82.0 Y53.0 E53.803806
G1 X81.0 Y53.0 E53.853806
G1 X80.0 Y54.0 E53.924515
G1 X82.0 Y58.0 E54.149014
G1 X81.0 Y59.0 E54.2225
G1 X79.0 Y59.0 E54.3225
G1 X78.0 Y58.0 E54.393208
G1 X80.0 Y54.0 E54.617706
G1 X79.0 Y53.0 E54.691193
G1 X78.0 Y53.0 E54.74119
G1 X77.0 Y53.0 E54.79119
G1 X76.0 Y54.0 E54.8619
G1 X78.0 Y58.0 E55.0864
G1 X77.0 Y59.0 E55.159885
G1 X75.0 Y59.0 E55.259884
G1 X74.0 Y58.0 E55.330593
G1 X76.0 Y54.0 E55.55509
G1 X75.0 Y53.0 E55.62858
G1 X74.0 Y53.0 E55.678577
G1 X73.0 Y53.0 E55.728577
G1 X72.0 Y54.0 E55.799286
G1 X74.0 Y58.0 E56.023785
G1 X73.0 Y59.0 E56.09727
G1 X71.0 Y59.0 E56.19727
G1 X70.0 Y58.0 E56.26798
G1 X72.0 Y54.0 E56.492477
G1 X71.0 Y53.0 E56.565964
G1 X70.0 Y53.0 E56.615963
G1 X69.0 Y53.0 E56.665962
G1 X68.0 Y54.0 E56.73667
G1 X70.0 Y58.0 E56.96117
G1 X69.0 Y59.0 E57.034657
G1 X67.0 Y59.0 E57.134655
G1 X66.0 Y58.0 E57.205364
G1 X68.0 Y54.0 E57.429863
G1 X67.0 Y53.0 E57.50335
G1 X66.0 Y53.0 E57.55335
G1 X65.0 Y53.0 E57.603348
G1 X64.0 Y54.0 E57.674057
G1 X66.0 Y58.0 E57.898556
G1 X65.0 Y59.0 E57.972042
G1 X63.0 Y59.0 E58.07204
G1 X62.0 Y58.0 E58.14275
G1 X64.0 Y54.0 E58.36725
G1 X63.0 Y53.0 E58.440735
G1 X62.0 Y53.0 E58.490734
G1 X61.0 Y53.0 E58.540733
G1 X60.0 Y54.0 E58.611443
G1 X62.0 Y58.0 E58.83594
G1 X61.0 Y59.0 E58.909428
G1 X59.0 Y59.0 E59.009426
G1 X58.0 Y58.0 E59.080135
G1 X60.0 Y54.0 E59.304634
G1 X59.0 Y53.0 E59.37812
G1 X58.0 Y53.0 E59.42812
G1 X57.0 Y53.0 E59.47812
G1 X56.0 Y54.0 E59.54883
G1 X58.0 Y58.0 E59.773327
G1 X57.0 Y59.0 E59.846813
G1 X55.0 Y59.0 E59.94681
G1 X54.0 Y58.0 E60.01752
G1 X56.0 Y54.0 E60.24202
G1 X55.0 Y53.0 E60.315506
G1 X54.0 Y53.0 E60.365505
G1 X53.0 Y53.0 E60.415504
G1 X52.0 Y54.0 E60.486214
G1 X54.0 Y58.0 E60.710712
G1 X53.0 Y59.0 E60.7842
G1 X51.0 Y59.0 E60.884197
G1 X50.0 Y58.0 E60.954906
G1 X52.0 Y54.0 E61.179405
G1 X51.0 Y53.0 E61.25289
G1 X50.0 Y53.0 E61.30289
G1 X50.0 Y56.0 E61.453224
G1 X50.0 Y56.0 E61.463223
G1 X51.0 Y56.0 E61.51322
G1 X52.0 Y57.0 E61.58393
G1 X50.0 Y61.0 E61.80843
G1 X51.0 Y62.0 E61.881916
G1 X53.0 Y62.0 E61.981915
G1 X54.0 Y61.0 E62.052624
G1 X52.0 Y57.0 E62.277122
G1 X53.0 Y56.0 E62.35061
G1 X54.0 Y56.0 E62.400608
G1 X55.0 Y56.0 E62.450607
G1 X56.0 Y57.0 E62.521317
G1 X54.0 Y61.0 E62.745815
G1 X55.0 Y62.0 E62.8193
G1 X57.0 Y62.0 E62.9193
G1 X58.0 Y61.0 E62.99001
G1 X56.0 Y57.0 E63.214508
G1 X57.0 Y56.0 E63.287994
G1 X58.0 Y56.0 E63.337994
G1 X58.0 Y56.0 E63.357994
G1 X59.0 Y56.0 E63.407993
G1 X60.0 Y57.0 E63.478703
G1 X58.0 Y61.0 E63.7032
G1 X59.0 Y62.0 E63.776688
G1 X61.0 Y62.0 E63.876686
G1 X62.0 Y61.0 E63.947395
G1 X60.0 Y57.0 E64.1719
G1 X61.0 Y56.0 E64.245384
G1 X62.0 Y56.0 E64.29539
G1 X63.0 Y56.0 E64.34539
G1 X64.0 Y57.0 E64.4161
G1 X62.0 Y61.0 E64.6406
G1 X63.0 Y62.0 E64.71409
G1 X65.0 Y62.0 E64.81409
G1 X66.0 Y61.0 E64.884796
G1 X64.0 Y57.0 E65.1093
G1 X65.0 Y56.0 E65.182785
G1 X66.0 Y56.0 E65.23279
G1 X66.0 Y56.0 E65.252785
G1 X67.0 Y56.0 E65.30279
G1 X68.0 Y57.0 E65.3735
G1 X66.0 Y61.0 E65.598
G1 X67.0 Y62.0 E65.671486
G1 X69.0 Y62.0 E65.771484
G1 X70.0 Y61.0 E65.84219
G1 X68.0 Y57.0 E66.066696
G1 X69.0 Y56.0 E66.14018
G1 X70.0 Y56.0 E66.190186
G1 X71.0 Y56.0 E66.24019
G1 X72.0 Y57.0 E66.3109
G1 X70.0 Y61.0 E66.5354
G1 X71.0 Y62.0 E66.60889
G1 X73.0 Y62.0 E66.708885
G1 X74.0 Y61.0 E66.779594
G1 X72.0 Y57.0 E67.0041
G1 X73.0 Y56.0 E67.07758
G1 X74.0 Y56.0 E67.12759
G1 X74.0 Y56.0 E67.14758
G1 X75.0 Y56.0 E67.197586
G1 X76.0 Y57.0 E67.268295
G1 X74.0 Y61.0 E67.4928
G1 X75.0 Y62.0 E67.566284
G1 X77.0 Y62.0 E67.66628
G1 X78.0 Y61.0 E67.73699
G1 X76.0 Y57.0 E67.961494
G1 X77.0 Y56.0 E68.03498
G1 X78.0 Y56.0 E68.084984
G1 X79.0 Y56.0 E68.13499
G1 X80.0 Y57.0 E68.205696
G1 X78.0 Y61.0 E68.4302
G1 X79.0 Y62.0 E68.503685
G1 X81.0 Y62.0 E68.60368
G1 X82.0 Y61.0 E68.67439
G1 X80.0 Y57.0 E68.898895
G1 X81.0 Y56.0 E68.97238
G1 X82.0 Y56.0 E69.022385
G1 X82.0 Y56.0 E69.04238
G1 X83.0 Y56.0 E69.092384
G1 X84.0 Y57.0 E69.16309
G1 X82.0 Y61.0 E69.387596
G1 X83.0 Y62.0 E69.46108
G1 X85.0 Y62.0 E69.56108
G1 X86.0 Y61.0 E69.63179
G1 X84.0 Y57.0 E69.85629
G1 X85.0 Y56.0 E69.92978
G1 X86.0 Y56.0 E69.97978
G1 X87.0 Y56.0 E70.029785
G1 X88.0 Y57.0 E70.100494
G1 X86.0 Y61.0 E70.325
G1 X87.0 Y62.0 E70.39848
G1 X89.0 Y62.0 E70.49848
G1 X90.0 Y61.0 E70.56919
G1 X88.0 Y57.0 E70.79369
G1 X89.0 Y56.0 E70.86718
G1 X90.0 Y56.0 E70.91718
G1 X90.0 Y56.0 E70.93718
G1 X91.0 Y56.0 E70.98718
G1 X92.0 Y57.0 E71.05789
G1 X90.0 Y61.0 E71.282394
G1 X91.0 Y62.0 E71.35588
G1 X93.0 Y62.0 E71.45588
G1 X94.0 Y61.0 E71.52659
G1 X92.0 Y57.0 E71.75109
G1 X93.0 Y56.0 E71.82458
G1 X94.0 Y56.0 E71.87458
G1 X94.0 Y59.0 E72.02491
G1 X94.0 Y59.0 E72.03491
G1 X93.0 Y59.0 E72.084915
G1 X92.0 Y60.0 E72.155624
G1 X94.0 Y64.0 E72.38013
G1 X93.0 Y65.0 E72.45361
G1 X91.0 Y65.0 E72.55361
G1 X90.0 Y64.0 E72.62432
G1 X92.0 Y60.0 E72.84882
G1 X91.0 Y59.0 E72.92231
G1 X90.0 Y59.0 E72.97231
G1 X89.0 Y59.0 E73.022316
G1 X88.0 Y60.0 E73.093025
G1 X90.0 Y64.0 E73.31753
G1 X89.0 Y65.0 E73.391014
G1 X87.0 Y65.0 E73.49101
G1 X86.0 Y64.0 E73.56172
G1 X88.0 Y60.0 E73.786224
G1 X87.0 Y59.0 E73.85971
G1 X86.0 Y59.0 E73.90971
G1 X85.0 Y59.0 E73.95972
G1 X84.0 Y60.0 E74.030426
G1 X86.0 Y64.0 E74.25493
G1 X85.0 Y65.0 E74.328415
G1 X83.0 Y65.0 E74.42841
G1 X82.0 Y64.0 E74.49912
G1 X84.0 Y60.0 E74.723625
G1 X83.0 Y59.0 E74.79711
G1 X82.0 Y59.0 E74.847115
G1 X81.0 Y59.0 E74.89712
G1 X80.0 Y60.0 E74.96783
G1 X82.0 Y64.0 E75.19233
G1 X81.0 Y65.0 E75.265816
G1 X79.0 Y65.0 E75.365814
G1 X78.0 Y64.0 E75.43652
G1 X80.0 Y60.0 E75.661026
G1 X79.0 Y59.0 E75.73451
G1 X78.0 Y59.0 E75.784515
G1 X77.0 Y59.0 E75.83452
G1 X76.0 Y60.0 E75.90523
G1 X78.0 Y64.0 E76.12973
G1 X77.0 Y65.0 E76.20322
G1 X75.0 Y65.0 E76.303215
G1 X74.0 Y64.0 E76.373924
G1 X76.0 Y60.0 E76.59843
G1 X75.0 Y59.0 E76.67191
G1 X74.0 Y59.0 E76.72192
G1 X73.0 Y59.0 E76.77192
G1 X72.0 Y60.0 E76.84263
G1 X74.0 Y64.0 E77.06713
G1 X73.0 Y65.0 E77.14062
G1 X71.0 Y65.0 E77.240616
G1 X70.0 Y64.0 E77.311325
G1 X72.0 Y60.0 E77.53583
G1 X71.0 Y59.0 E77.609314
G1 X70.0 Y59.0 E77.65932
G1 X69.0 Y59.0 E77.70932
G1 X68.0 Y60.0 E77.78003
G1 X70.0 Y64.0 E78.00453
G1 X69.0 Y65.0 E78.07802
G1 X67.0 Y65.0 E78.17802
G1 X66.0 Y64.0 E78.248726
G1 X68.0 Y60.0 E78.47323
G1 X67.0 Y59.0 E78.546715
G1 X66.0 Y59.0 E78.59672
G1 X65.0 Y59.0 E78.64672
G1 X64.0 Y60.0 E78.71743
G1 X66.0 Y64.0 E78.94193
G1 X65.0 Y65.0 E79.01542
G1 X63.0 Y65.0 E79.11542
G1 X62.0 Y64.0 E79.18613
G1 X64.0 Y60.0 E79.41063
G1 X63.0 Y59.0 E79.484116
G1 X62.0 Y59.0 E79.53412
G1 X61.0 Y59.0 E79.58412
G1 X60.0 Y60.0 E79.65483
G1 X62.0 Y64.0 E79.87933
G1 X61.0 Y65.0 E79.95282
G1 X59.0 Y65.0 E80.05282
G1 X58.0 Y64.0 E80.12353
G1 X60.0 Y60.0 E80.34803
G1 X59.0 Y59.0 E80.42152
G1 X58.0 Y59.0 E80.47152
G1 X57.0 Y59.0 E80.52152
G1 X56.0 Y60.0 E80.59223
G1 X58.0 Y64.0 E80.816734
G1 X57.0 Y65.0 E80.89022
G1 X55.0 Y65.0 E80.99022
G1 X54.0 Y64.0 E81.06093
G1 X56.0 Y60.0 E81.28543
G1 X55.0 Y59.0 E81.35892
G1 X54.0 Y59.0 E81.40892
G1 X53.0 Y59.0 E81.45892
G1 X52.0 Y60.0 E81.52963
G1 X54.0 Y64.0 E81.754135
G1 X53.0 Y65.0 E81.82762
G1 X51.0 Y65.0 E81.92762
G1 X50.0 Y64.0 E81.99833
G1 X52.0 Y60.0 E82.22283
G1 X51.0 Y59.0 E82.29632
G1 X50.0 Y59.0 E82.34632
G1 X50.0 Y62.0 E82.49665
G1 X50.0 Y62.0 E82.50665
G1 X51.0 Y62.0 E82.556656
G1 X52.0 Y63.0 E82.627365
G1 X50.0 Y67.0 E82.85187
G1 X51.0 Y68.0 E82.925354
G1 X53.0 Y68.0 E83.02535
G1 X54.0 Y67.0 E83.09606
G1 X52.0 Y63.0 E83.320564
G1 X53.0 Y62.0 E83.39405
G1 X54.0 Y62.0 E83.44405
G1 X55.0 Y62.0 E83.49406
G1 X56.0 Y63.0 E83.564766
G1 X54.0 Y67.0 E83.78927
G1 X55.0 Y68.0 E83.862755
G1 X57.0 Y68.0 E83.96275
G1 X58.0 Y67.0 E84.03346
G1 X56.0 Y63.0 E84.257965
G1 X57.0 Y62.0 E84.33145
G1 X58.0 Y62.0 E84.381454
G1 X58.0 Y62.0 E84.40145
G1 X59.0 Y62.0 E84.451454
G1 X60.0 Y63.0 E84.52216
G1 X58.0 Y67.0 E84.746666
G1 X59.0 Y68.0 E84.82015
G1 X61.0 Y68.0 E84.92015
G1 X62.0 Y67.0 E84.99086
G1 X60.0 Y63.0 E85.21536
G1 X61.0 Y62.0 E85.28885
G1 X62.0 Y62.0 E85.33885
G1 X63.0 Y62.0 E85.388855
G1 X64.0 Y63.0 E85.459564
G1 X62.0 Y67.0 E85.68407
G1 X63.0 Y68.0 E85.75755
G1 X65.0 Y68.0 E85.85755
G1 X66.0 Y67.0 E85.92826
G1 X64.0 Y63.0 E86.15276
G1 X65.0 Y62.0 E86.22625
G1 X66.0 Y62.0 E86.27625
G1 X66.0 Y62.0 E86.29625
G1 X67.0 Y62.0 E86.34625
G1 X68.0 Y63.0 E86.41696
G1 X66.0 Y67.0 E86.641464
G1 X67.0 Y68.0 E86.71495
G1 X69.0 Y68.0 E86.81495
G1 X70.0 Y67.0 E86.88566
G1 X68.0 Y63.0 E87.11016
G1 X69.0 Y62.0 E87.18365
G1 X70.0 Y62.0 E87.23365
G1 X71.0 Y62.0 E87.28365
G1 X72.0 Y63.0 E87.35436
G1 X70.0 Y67.0 E87.578865
G1 X71.0 Y68.0 E87.65235
G1 X73.0 Y68.0 E87.75235
G1 X74.0 Y67.0 E87.82306
G1 X72.0 Y63.0 E88.04756
G1 X73.0 Y62.0 E88.12105
G1 X74.0 Y62.0 E88.17105
G1 X74.0 Y62.0 E88.19105
G1 X75.0 Y62.0 E88.24105
G1 X76.0 Y63.0 E88.31176
G1 X74.0 Y67.0 E88.53626
G1 X75.0 Y68.0 E88.60975
G1 X77.0 Y68.0 E88.70975
G1 X78.0 Y67.0 E88.78046
G1 X76.0 Y63.0 E89.00496
G1 X77.0 Y62.0 E89.078445
G1 X78.0 Y62.0 E89.12845
G1 X79.0 Y62.0 E89.17845
G1 X80.0 Y63.0 E89.24916
G1 X78.0 Y67.0 E89.47366
G1 X79.0 Y68.0 E89.54715
G1 X81.0 Y68.0 E89.64715
G1 X82.0 Y67.0 E89.71786
G1 X80.0 Y63.0 E89.94236
G1 X81.0 Y62.0 E90.01585
G1 X82.0 Y62.0 E90.06585
G1 X82.0 Y62.0 E90.085846
G1 X83.0 Y62.0 E90.13585
G1 X84.0 Y63.0 E90.20656
G1 X82.0 Y67.0 E90.43106
G1 X83.0 Y68.0 E90.50455
G1 X85.0 Y68.0 E90.604546
G1 X86.0 Y67.0 E90.675255
G1 X84.0 Y63.0 E90.89976
G1 X85.0 Y62.0 E90.97324
G1 X86.0 Y62.0 E91.02325
G1 X87.0 Y62.0 E91.07325
G1 X88.0 Y63.0 E91.14396
G1 X86.0 Y67.0 E91.36846
G1 X87.0 Y68.0 E91.44195
G1 X89.0 Y68.0 E91.54195
G1 X90.0 Y67.0 E91.612656
G1 X88.0 Y63.0 E91.83716
G1 X89.0 Y62.0 E91.910645
G1 X90.0 Y62.0 E91.96065
G1 X91.0 Y62.0 E92.01065
G1 X92.0 Y63.0 E92.08136
G1 X90.0 Y67.0 E92.30586
G1 X91.0 Y68.0 E92.37935
G1 X93.0 Y68.0 E92.47935
G1 X94.0 Y67.0 E92.55006
G1 X92.0 Y63.0 E92.77456
G1 X93.0 Y62.0 E92.848045
G1 X94.0 Y62.0 E92.89805
G1 X94.0 Y65.0 E93.04838
G1 X94.0 Y65.0 E93.05838
G1 X93.0 Y65.0 E93.10838
G1 X92.0 Y66.0 E93.17909
G1 X94.0 Y70.0 E93.403595
G1 X93.0 Y71.0 E93.47708
G1 X91.0 Y71.0 E93.57708
G1 X90.0 Y70.0 E93.64779
G1 X92.0 Y66.0 E93.87229
G1 X91.0 Y65.0 E93.94578
G1 X90.0 Y65.0 E93.99578
G1 X89.0 Y65.0 E94.045784
G1 X88.0 Y66.0 E94.11649
G1 X90.0 Y70.0 E94.340996
G1 X89.0 Y71.0 E94.41448
G1 X87.0 Y71.0 E94.51448
G1 X86.0 Y70.0 E94.58519
G1 X88.0 Y66.0 E94.80969
G1 X87.0 Y65.0 E94.88318
G1 X86.0 Y65.0 E94.93318
G1 X85.0 Y65.0 E94.983185
G1 X84.0 Y66.0 E95.053894
G1 X86.0 Y70.0 E95.2784
G1 X85.0 Y71.0 E95.35188
G1 X83.0 Y71.0 E95.45188
G1 X82.0 Y70.0 E95.52259
G1 X84.0 Y66.0 E95.74709
G1 X83.0 Y65.0 E95.82058
G1 X82.0 Y65.0 E95.87058
G1 X81.0 Y65.0 E95.920586
G1 X80.0 Y66.0 E95.991295
G1 X82.0 Y70.0 E96.2158
G1 X81.0 Y71.0 E96.28928
G1 X79.0 Y71.0 E96.38928
G1 X78.0 Y70.0 E96.45999
G1 X80.0 Y66.0 E96.684494
G1 X79.0 Y65.0 E96.75798
G1 X78.0 Y65.0 E96.80798
G1 X77.0 Y65.0 E96.85799
G1 X76.0 Y66.0 E96.928696
G1 X78.0 Y70.0 E97.1532
G1 X77.0 Y71.0 E97.226685
G1 X75.0 Y71.0 E97.32668
G1 X74.0 Y70.0 E97.39739
G1 X76.0 Y66.0 E97.621895
G1 X75.0 Y65.0 E97.69538
G1 X74.0 Y65.0 E97.745384
G1 X73.0 Y65.0 E97.79539
G1 X72.0 Y66.0 E97.8661
G1 X74.0 Y70.0 E98.0906
G1 X73.0 Y71.0 E98.164085
G1 X71.0 Y71.0 E98.264084
G1 X70.0 Y70.0 E98.33479
G1 X72.0 Y66.0 E98.559296
G1 X71.0 Y65.0 E98.63278
G1 X70.0 Y65.0 E98.682785
G1 X69.0 Y65.0 E98.73279
G1 X68.0 Y66.0 E98.8035
G1 X70.0 Y70.0 E99.028
G1 X69.0 Y71.0 E99.10149
G1 X67.0 Y71.0 E99.201485
G1 X66.0 Y70.0 E99.272194
G1 X68.0 Y66.0 E99.4967
G1 X67.0 Y65.0 E99.57018
G1 X66.0 Y65.0 E99.620186
G1 X65.0 Y65.0 E99.67019
G1 X64.0 Y66.0 E99.7409
G1 X66.0 Y70.0 E99.9654
G1 X65.0 Y71.0 E100.03889
G1 X63.0 Y71.0 E100.138885
G1 X62.0 Y70.0 E100.209595
G1 X64.0 Y66.0 E100.4341
G1 X63.0 Y65.0 E100.50758
G1 X62.0 Y65.0 E100.55759
G1 X61.0 Y65.0 E100.60759
G1 X60.0 Y66.0 E100.6783
G1 X62.0 Y70.0 E100.9028
G1 X61.0 Y71.0 E100.97629
G1 X59.0 Y71.0 E101.07629
G1 X58.0 Y70.0 E101.146996
G1 X60.0 Y66.0 E101.3715
G1 X59.0 Y65.0 E101.444984
G1 X58.0 Y65.0 E101.49499
G1 X57.0 Y65.0 E101.54499
G1 X56.0 Y66.0 E101.6157
G1 X58.0 Y70.0 E101.8402
G1 X57.0 Y71.0 E101.91369
G1 X55.0 Y71.0 E102.01369
G1 X54.0 Y70.0 E102.0844
G1 X56.0 Y66.0 E102.3089
G1 X55.0 Y65.0 E102.382385
G1 X54.0 Y65.0 E102.43239
G1 X53.0 Y65.0 E102.48239
G1 X52.0 Y66.0 E102.5531
G1 X54.0 Y70.0 E102.7776
G1 X53.0 Y71.0 E102.85109
G1 X51.0 Y71.0 E102.95109
G1 X50.0 Y70.0 E103.0218
G1 X52.0 Y66.0 E103.2463
G1 X51.0 Y65.0 E103.319786
G1 X50.0 Y65.0 E103.36979
G1 X50.0 Y68.0 E103.52012
G1 X50.0 Y68.0 E103.53012
G1 X51.0 Y68.0 E103.580124
G1 X52.0 Y69.0 E103.65083
G1 X50.0 Y73.0 E103.875336
G1 X51.0 Y74.0 E103.94882
G1 X53.0 Y74.0 E104.04882
G1 X54.0 Y73.0 E104.11953
G1 X52.0 Y69.0 E104.34403
G1 X53.0 Y68.0 E104.41752
G1 X54.0 Y68.0 E104.46752
G1 X55.0 Y68.0 E104.517525
G1 X56.0 Y69.0 E104.588234
G1 X54.0 Y73.0 E104.81274
G1 X55.0 Y74.0 E104.88622
G1 X57.0 Y74.0 E104.98622
G1 X58.0 Y73.0 E105.05693
G1 X56.0 Y69.0 E105.28143
G1 X57.0 Y68.0 E105.35492
G1 X58.0 Y68.0 E105.40492
G1 X58.0 Y68.0 E105.42492
G1 X59.0 Y68.0 E105.47492
G1 X60.0 Y69.0 E105.54563
G1 X58.0 Y73.0 E105.770134
G1 X59.0 Y74.0 E105.84362
G1 X61.0 Y74.0 E105.94362
G1 X62.0 Y73.0 E106.01433
G1 X60.0 Y69.0 E106.23883
G1 X61.0 Y68.0 E106.31232
G1 X62.0 Y68.0 E106.36232
G1 X63.0 Y68.0 E106.41232
G1 X64.0 Y69.0 E106.48303
G1 X62.0 Y73.0 E106.707535
G1 X63.0 Y74.0 E106.78102
G1 X65.0 Y74.0 E106.88102
G1 X66.0 Y73.0 E106.95173
G1 X64.0 Y69.0 E107.17623
G1 X65.0 Y68.0 E107.24972
G1 X66.0 Y68.0 E107.29972
G1 X66.0 Y68.0 E107.31972
G1 X67.0 Y68.0 E107.36972
G1 X68.0 Y69.0 E107.44043
G1 X66.0 Y73.0 E107.66493
G1 X67.0 Y74.0 E107.73842
G1 X69.0 Y74.0 E107.83842
G1 X70.0 Y73.0 E107.90913
G1 X68.0 Y69.0 E108.13363
G1 X69.0 Y68.0 E108.207115
G1 X70.0 Y68.0 E108.25712
G1 X71.0 Y68.0 E108.30712
G1 X72.0 Y69.0 E108.37783
G1 X70.0 Y73.0 E108.60233
G1 X71.0 Y74.0 E108.67582
G1 X73.0 Y74.0 E108.77582
G1 X74.0 Y73.0 E108.84653
G1 X72.0 Y69.0 E109.07103
G1 X73.0 Y68.0 E109.144516
G1 X74.0 Y68.0 E109.19452
G1 X74.0 Y68.0 E109.214516
G1 X75.0 Y68.0 E109.26452
G1 X76.0 Y69.0 E109.33523
G1 X74.0 Y73.0 E109.55973
G1 X75.0 Y74.0 E109.63322
G1 X77.0 Y74.0 E109.733215
G1 X78.0 Y73.0 E109.803925
G1 X76.0 Y69.0 E110.02843
G1 X77.0 Y68.0 E110.10191
G1 X78.0 Y68.0 E110.15192
G1 X79.0 Y68.0 E110.20192
G1 X80.0 Y69.0 E110.27263
G1 X78.0 Y73.0 E110.49713
G1 X79.0 Y74.0 E110.57062
G1 X81.0 Y74.0 E110.670616
G1 X82.0 Y73.0 E110.741325
G1 X80.0 Y69.0 E110.96583
G1 X81.0 Y68.0 E111.039314
G1 X82.0 Y68.0 E111.08932
G1 X82.0 Y68.0 E111.109314
G1 X83.0 Y68.0 E111.15932
G1 X84.0 Y69.0 E111.23003
G1 X82.0 Y73.0 E111.45453
G1 X83.0 Y74.0 E111.528015
G1 X85.0 Y74.0 E111.62801
G1 X86.0 Y73.0 E111.69872
G1 X84.0 Y69.0 E111.923225
G1 X85.0 Y68.0 E111.99671
G1 X86.0 Y68.0 E112.046715
G1 X87.0 Y68.0 E112.09672
G1 X88.0 Y69.0 E112.16743
G1 X86.0 Y73.0 E112.39193
G1 X87.0 Y74.0 E112.465416
G1 X89.0 Y74.0 E112.565414
G1 X90.0 Y73.0 E112.63612
G1 X88.0 Y69.0 E112.86063
G1 X89.0 Y68.0 E112.93411
G1 X90.0 Y68.0 E112.984116
G1 X90.0 Y68.0 E113.00411
G1 X91.0 Y68.0 E113.054115
G1 X92.0 Y69.0 E113.124825
G1 X90.0 Y73.0 E113.34933
G1 X91.0 Y74.0 E113.42281
G1 X93.0 Y74.0 E113.52281
G1 X94.0 Y73.0 E113.59352
G1 X92.0 Y69.0 E113.81802
G1 X93.0 Y68.0 E113.89151
G1 X94.0 Y68.0 E113.94151
G1 X94.0 Y71.0 E114.09184
G1 X94.0 Y71.0 E114.101845
G1 X93.0 Y71.0 E114.15185
G1 X92.0 Y72.0 E114.22256
G1 X94.0 Y76.0 E114.44706
G1 X93.0 Y77.0 E114.520546
G1 X91.0 Y77.0 E114.620544
G1 X90.0 Y76.0 E114.69125
G1 X92.0 Y72.0 E114.91576
G1 X91.0 Y71.0 E114.98924
G1 X90.0 Y71.0 E115.039246
G1 X89.0 Y71.0 E115.08925
G1 X88.0 Y72.0 E115.15996
G1 X90.0 Y76.0 E115.38446
G1 X89.0 Y77.0 E115.45795
G1 X87.0 Y77.0 E115.557945
G1 X86.0 Y76.0 E115.628654
G1 X88.0 Y72.0 E115.85316
G1 X87.0 Y71.0 E115.92664
G1 X86.0 Y71.0 E115.97665
G1 X85.0 Y71.0 E116.02665
G1 X84.0 Y72.0 E116.09736
G1 X86.0 Y76.0 E116.32186
G1 X85.0 Y77.0 E116.39535
G1 X83.0 Y77.0 E116.495346
G1 X82.0 Y76.0 E116.566055
G1 X84.0 Y72.0 E116.79056
G1 X83.0 Y71.0 E116.864044
G1 X82.0 Y71.0 E116.91405
G1 X81.0 Y71.0 E116.96405
G1 X80.0 Y72.0 E117.03476
G1 X82.0 Y76.0 E117.25926
G1 X81.0 Y77.0 E117.33275
G1 X79.0 Y77.0 E117.43275
G1 X78.0 Y76.0 E117.503456
G1 X80.0 Y72.0 E117.72796
G1 X79.0 Y71.0 E117.801445
G1 X78.0 Y71.0 E117.85145
G1 X77.0 Y71.0 E117.90145
G1 X76.0 Y72.0 E117.97216
G1 X78.0 Y76.0 E118.19666
G1 X77.0 Y77.0 E118.27015
G1 X75.0 Y77.0 E118.37015
G1 X74.0 Y76.0 E118.44086
G1 X76.0 Y72.0 E118.66536
G1 X75.0 Y71.0 E118.738846
G1 X74.0 Y71.0 E118.78885
G1 X73.0 Y71.0 E118.83885
G1 X72.0 Y72.0 E118.90956
G1 X74.0 Y76.0 E119.13406
G1 X73.0 Y77.0 E119.20755
G1 X71.0 Y77.0 E119.30755
G1 X70.0 Y76.0 E119.37826
G1 X72.0 Y72.0 E119.60276
G1 X71.0 Y71.0 E119.67625
G1 X70.0 Y71.0 E119.72625
G1 X69.0 Y71.0 E119.77625
G1 X68.0 Y72.0 E119.84696
G1 X70.0 Y76.0 E120.071465
G1 X69.0 Y77.0 E120.14495
G1 X67.0 Y77.0 E120.24495
G1 X66.0 Y76.0 E120.31566
G1 X68.0 Y72.0 E120.54016
G1 X67.0 Y71.0 E120.61365
G1 X66.0 Y71.0 E120.66365
G1 X65.0 Y71.0 E120.71365
G1 X64.0 Y72.0 E120.78436
G1 X66.0 Y76.0 E121.008865
G1 X65.0 Y77.0 E121.08235
G1 X63.0 Y77.0 E121.18235
G1 X62.0 Y76.0 E121.25306
G1 X64.0 Y72.0 E121.47756
G1 X63.0 Y71.0 E121.55105
G1 X62.0 Y71.0 E121.60105
G1 X61.0 Y71.0 E121.651054
G1 X60.0 Y72.0 E121.72176
G1 X62.0 Y76.0 E121.946266
G1 X61.0 Y77.0 E122.01975
G1 X59.0 Y77.0 E122.11975
G1 X58.0 Y76.0 E122.19046
G1 X60.0 Y72.0 E122.41496
G1 X59.0 Y71.0 E122.48845
G1 X58.0 Y71.0 E122.53845
G1 X57.0 Y71.0 E122.588455
G1 X56.0 Y72.0 E122.659164
G1 X58.0 Y76.0 E122.88367
G1 X57.0 Y77.0 E122.95715
G1 X55.0 Y77.0 E123.05715
G1 X54.0 Y76.0 E123.12786
G1 X56.0 Y72.0 E123.35236
G1 X55.0 Y71.0 E123.42585
G1 X54.0 Y71.0 E123.47585
G1 X53.0 Y71.0 E123.525856
G1 X52.0 Y72.0 E123.596565
G1 X54.0 Y76.0 E123.82107
G1 X53.0 Y77.0 E123.894554
G1 X51.0 Y77.0 E123.99455
G1 X50.0 Y76.0 E124.06526
G1 X52.0 Y72.0 E124.289764
G1 X51.0 Y71.0 E124.36325
G1 X50.0 Y71.0 E124.41325
G1 X50.0 Y74.0 E124.56358
G1 X50.0 Y74.0 E124.573586
G1 X51.0 Y74.0 E124.62359
G1 X52.0 Y75.0 E124.6943
G1 X50.0 Y79.0 E124.9188
G1 X51.0 Y80.0 E124.99229
G1 X53.0 Y80.0 E125.092285
G1 X54.0 Y79.0 E125.162994
G1 X52.0 Y75.0 E125.3875
G1 X53.0 Y74.0 E125.46098
G1 X54.0 Y74.0 E125.51099
G1 X55.0 Y74.0 E125.56099
G1 X56.0 Y75.0 E125.6317
G1 X54.0 Y79.0 E125.8562
G1 X55.0 Y80.0 E125.92969
G1 X57.0 Y80.0 E126.029686
G1 X58.0 Y79.0 E126.100395
G1 X56.0 Y75.0 E126.3249
G1 X57.0 Y74.0 E126.398384
G1 X58.0 Y74.0 E126.44839
G1 X58.0 Y74.0 E126.46838
G1 X59.0 Y74.0 E126.51839
G1 X60.0 Y75.0 E126.589096
G1 X58.0 Y79.0 E126.8136
G1 X59.0 Y80.0 E126.887085
G1 X61.0 Y80.0 E126.98708
G1 X62.0 Y79.0 E127.05779
G1 X60.0 Y75.0 E127.282295
G1 X61.0 Y74.0 E127.35578
G1 X62.0 Y74.0 E127.405785
G1 X63.0 Y74.0 E127.45579
G1 X64.0 Y75.0 E127.5265
G1 X62.0 Y79.0 E127.751
G1 X63.0 Y80.0 E127.824486
G1 X65.0 Y80.0 E127.924484
G1 X66.0 Y79.0 E127.99519
G1 X64.0 Y75.0 E128.2197
G1 X65.0 Y74.0 E128.29318
G1 X66.0 Y74.0 E128.34319
G1 X66.0 Y74.0 E128.36319
G1 X67.0 Y74.0 E128.4132
G1 X68.0 Y75.0 E128.4839
G1 X66.0 Y79.0 E128.7084
G1 X67.0 Y80.0 E128.78189
G1 X69.0 Y80.0 E128.8819
G1 X70.0 Y79.0 E128.9526
G1 X68.0 Y75.0 E129.17711
G1 X69.0 Y74.0 E129.2506
G1 X70.0 Y74.0 E129.3006
G1 X71.0 Y74.0 E129.3506
G1 X72.0 Y75.0 E129.42131
G1 X70.0 Y79.0 E129.64581
G1 X71.0 Y80.0 E129.7193
G1 X73.0 Y80.0 E129.8193
G1 X74.0 Y79.0 E129.89001
G1 X72.0 Y75.0 E130.11452
G1 X73.0 Y74.0 E130.188
G1 X74.0 Y74.0 E130.238
G1 X74.0 Y74.0 E130.25801
G1 X75.0 Y74.0 E130.30801
G1 X76.0 Y75.0 E130.37872
G1 X74.0 Y79.0 E130.60323
G1 X75.0 Y80.0 E130.67671
G1 X77.0 Y80.0 E130.77672
G1 X78.0 Y79.0 E130.84743
G1 X76.0 Y75.0 E131.07193
G1 X77.0 Y74.0 E131.14542
G1 X78.0 Y74.0 E131.19542
G1 X79.0 Y74.0 E131.24542
G1 X80.0 Y75.0 E131.31613
G1 X78.0 Y79.0 E131.54063
G1 X79.0 Y80.0 E131.61412
G1 X81.0 Y80.0 E131.71413
G1 X82.0 Y79.0 E131.78484
G1 X80.0 Y75.0 E132.00934
G1 X81.0 Y74.0 E132.08282
G1 X82.0 Y74.0 E132.13283
G1 X82.0 Y74.0 E132.15283
G1 X83.0 Y74.0 E132.20284
G1 X84.0 Y75.0 E132.27354
G1 X82.0 Y79.0 E132.49805
G1 X83.0 Y80.0 E132.57153
G1 X85.0 Y80.0 E132.67154
G1 X86.0 Y79.0 E132.74225
G1 X84.0 Y75.0 E132.96675
G1 X85.0 Y74.0 E133.04024
G1 X86.0 Y74.0 E133.09024
G1 X87.0 Y74.0 E133.14024
G1 X88.0 Y75.0 E133.21095
G1 X86.0 Y79.0 E133.43546
G1 X87.0 Y80.0 E133.50894
G1 X89.0 Y80.0 E133.60895
G1 X90.0 Y79.0 E133.67966
G1 X88.0 Y75.0 E133.90416
G1 X89.0 Y74.0 E133.97765
G1 X90.0 Y74.0 E134.02765
G1 X91.0 Y74.0 E134.07765
G1 X92.0 Y75.0 E134.14836
G1 X90.0 Y79.0 E134.37286
G1 X91.0 Y80.0 E134.44635
G1 X93.0 Y80.0 E134.54636
G1 X94.0 Y79.0 E134.61707
G1 X92.0 Y75.0 E134.84157
G1 X93.0 Y74.0 E134.91505
G1 X94.0 Y74.0 E134.96506
G1 X94.0 Y77.0 E135.11539
G1 X94.0 Y77.0 E135.12538
G1 X93.0 Y77.0 E135.17538
G1 X92.0 Y78.0 E135.2461
G1 X94.0 Y82.0 E135.4706
G1 X93.0 Y83.0 E135.54408
G1 X91.0 Y83.0 E135.64409
G1 X90.0 Y82.0 E135.7148
G1 X92.0 Y78.0 E135.9393
G1 X91.0 Y77.0 E136.01279
G1 X90.0 Y77.0 E136.06279
G1 X89.0 Y77.0 E136.1128
G1 X88.0 Y78.0 E136.1835
G1 X90.0 Y82.0 E136.408
G1 X89.0 Y83.0 E136.48149
G1 X87.0 Y83.0 E136.5815
G1 X86.0 Y82.0 E136.6522
G1 X88.0 Y78.0 E136.87671
G1 X87.0 Y77.0 E136.9502
G1 X86.0 Y77.0 E137.0002
G1 X85.0 Y77.0 E137.0502
G1 X84.0 Y78.0 E137.12091
G1 X86.0 Y82.0 E137.34541
G1 X85.0 Y83.0 E137.4189
G1 X83.0 Y83.0 E137.5189
G1 X82.0 Y82.0 E137.58961
G1 X84.0 Y78.0 E137.81412
G1 X83.0 Y77.0 E137.8876
G1 X82.0 Y77.0 E137.9376
G1 X81.0 Y77.0 E137.98761
G1 X80.0 Y78.0 E138.05832
G1 X82.0 Y82.0 E138.28282
G1 X81.0 Y83.0 E138.35631
G1 X79.0 Y83.0 E138.45631
G1 X78.0 Y82.0 E138.52702
G1 X80.0 Y78.0 E138.75153
G1 X79.0 Y77.0 E138.82501
G1 X78.0 Y77.0 E138.87502
G1 X77.0 Y77.0 E138.92502
G1 X76.0 Y78.0 E138.99573
G1 X78.0 Y82.0 E139.22023
G1 X77.0 Y83.0 E139.29372
G1 X75.0 Y83.0 E139.39372
G1 X74.0 Y82.0 E139.46443
G1 X76.0 Y78.0 E139.68893
G1 X75.0 Y77.0 E139.76242
G1 X74.0 Y77.0 E139.81242
G1 X73.0 Y77.0 E139.86243
G1 X72.0 Y78.0 E139.93314
G1 X74.0 Y82.0 E140.15764
G1 X73.0 Y83.0 E140.23112
G1 X71.0 Y83.0 E140.33113
G1 X70.0 Y82.0 E140.40184
G1 X72.0 Y78.0 E140.62634
G1 X71.0 Y77.0 E140.69983
G1 X70.0 Y77.0 E140.74983
G1 X69.0 Y77.0 E140.79984
G1 X68.0 Y78.0 E140.87054
G1 X70.0 Y82.0 E141.09505
G1 X69.0 Y83.0 E141.16853
G1 X67.0 Y83.0 E141.26854
G1 X66.0 Y82.0 E141.33925
G1 X68.0 Y78.0 E141.56375
G1 X67.0 Y77.0 E141.63724
G1 X66.0 Y77.0 E141.68724
G1 X65.0 Y77.0 E141.73724
G1 X64.0 Y78.0 E141.80795
G1 X66.0 Y82.0 E142.03246
G1 X65.0 Y83.0 E142.10594
G1 X63.0 Y83.0 E142.20595
G1 X62.0 Y82.0 E142.27666
G1 X64.0 Y78.0 E142.50116
G1 X63.0 Y77.0 E142.57465
G1 X62.0 Y77.0 E142.62465
G1 X61.0 Y77.0 E142.67465
G1 X60.0 Y78.0 E142.74536
G1 X62.0 Y82.0 E142.96986
G1 X61.0 Y83.0 E143.04335
G1 X59.0 Y83.0 E143.14336
G1 X58.0 Y82.0 E143.21407
G1 X60.0 Y78.0 E143.43857
G1 X59.0 Y77.0 E143.51205
G1 X58.0 Y77.0 E143.56206
G1 X57.0 Y77.0 E143.61206
G1 X56.0 Y78.0 E143.68277
G1 X58.0 Y82.0 E143.90727
G1 X57.0 Y83.0 E143.98076
G1 X55.0 Y83.0 E144.08076
G1 X54.0 Y82.0 E144.15147
G1 X56.0 Y78.0 E144.37598
G1 X55.0 Y77.0 E144.44946
G1 X54.0 Y77.0 E144.49947
G1 X53.0 Y77.0 E144.54947
G1 X52.0 Y78.0 E144.62018
G1 X54.0 Y82.0 E144.84468
G1 X53.0 Y83.0 E144.91817
G1 X51.0 Y83.0 E145.01817
G1 X50.0 Y82.0 E145.08888
G1 X52.0 Y78.0 E145.31339
G1 X51.0 Y77.0 E145.38687
G1 X50.0 Y77.0 E145.43687
G1 X50.0 Y80.0 E145.5872
G1 X50.0 Y80.0 E145.5972
G1 X51.0 Y80.0 E145.6472
G1 X52.0 Y81.0 E145.71791
G1 X50.0 Y85.0 E145.94241
G1 X51.0 Y86.0 E146.0159
G1 X53.0 Y86.0 E146.1159
G1 X54.0 Y85.0 E146.18661
G1 X52.0 Y81.0 E146.41112
G1 X53.0 Y80.0 E146.4846
G1 X54.0 Y80.0 E146.5346
G1 X55.0 Y80.0 E146.58461
G1 X56.0 Y81.0 E146.65532
G1 X54.0 Y85.0 E146.87982
G1 X55.0 Y86.0 E146.95331
G1 X57.0 Y86.0 E147.05331
G1 X58.0 Y85.0 E147.12402
G1 X56.0 Y81.0 E147.34853
G1 X57.0 Y80.0 E147.42201
G1 X58.0 Y80.0 E147.47202
G1 X58.0 Y80.0 E147.49202
G1 X59.0 Y80.0 E147.54202
G1 X60.0 Y81.0 E147.61273
G1 X58.0 Y85.0 E147.83723
G1 X59.0 Y86.0 E147.91072
G1 X61.0 Y86.0 E148.01073
G1 X62.0 Y85.0 E148.08144
G1 X60.0 Y81.0 E148.30594
G1 X61.0 Y80.0 E148.37943
G1 X62.0 Y80.0 E148.42943
G1 X63.0 Y80.0 E148.47943
G1 X64.0 Y81.0 E148.55014
G1 X62.0 Y85.0 E148.77464
G1 X63.0 Y86.0 E148.84813
G1 X65.0 Y86.0 E148.94814
G1 X66.0 Y85.0 E149.01884
G1 X64.0 Y81.0 E149.24335
G1 X65.0 Y80.0 E149.31683
G1 X66.0 Y80.0 E149.36684
G1 X66.0 Y80.0 E149.38684
G1 X67.0 Y80.0 E149.43684
G1 X68.0 Y81.0 E149.50755
G1 X66.0 Y85.0 E149.73206
G1 X67.0 Y86.0 E149.80554
G1 X69.0 Y86.0 E149.90555
G1 X70.0 Y85.0 E149.97626
G1 X68.0 Y81.0 E150.20076
G1 X69.0 Y80.0 E150.27425
G1 X70.0 Y80.0 E150.32425
G1 X71.0 Y80.0 E150.37425
G1 X72.0 Y81.0 E150.44496
G1 X70.0 Y85.0 E150.66946
G1 X71.0 Y86.0 E150.74295
G1 X73.0 Y86.0 E150.84296
G1 X74.0 Y85.0 E150.91367
G1 X72.0 Y81.0 E151.13817
G1 X73.0 Y80.0 E151.21165
G1 X74.0 Y80.0 E151.26166
G1 X74.0 Y80.0 E151.28166
G1 X75.0 Y80.0 E151.33167
G1 X76.0 Y81.0 E151.40237
G1 X74.0 Y85.0 E151.62688
G1 X75.0 Y86.0 E151.70036
G1 X77.0 Y86.0 E151.80037
G1 X78.0 Y85.0 E151.87108
G1 X76.0 Y81.0 E152.09558
G1 X77.0 Y80.0 E152.16907
G1 X78.0 Y80.0 E152.21907
G1 X79.0 Y80.0 E152.26907
G1 X80.0 Y81.0 E152.33978
G1 X78.0 Y85.0 E152.56429
G1 X79.0 Y86.0 E152.63777
G1 X81.0 Y86.0 E152.73778
G1 X82.0 Y85.0 E152.80849
G1 X80.0 Y81.0 E153.03299
G1 X81.0 Y80.0 E153.10648
G1 X82.0 Y80.0 E153.15648
G1 X82.0 Y80.0 E153.17648
G1 X83.0 Y80.0 E153.22649
G1 X84.0 Y81.0 E153.2972
G1 X82.0 Y85.0 E153.5217
G1 X83.0 Y86.0 E153.59518
G1 X85.0 Y86.0 E153.69519
G1 X86.0 Y85.0 E153.7659
G1 X84.0 Y81.0 E153.9904
G1 X85.0 Y80.0 E154.06389
G1 X86.0 Y80.0 E154.11389
G1 X87.0 Y80.0 E154.1639
G1 X88.0 Y81.0 E154.2346
G1 X86.0 Y85.0 E154.4591
G1 X87.0 Y86.0 E154.5326
G1 X89.0 Y86.0 E154.6326
G1 X90.0 Y85.0 E154.70331
G1 X88.0 Y81.0 E154.92781
G1 X89.0 Y80.0 E155.0013
G1 X90.0 Y80.0 E155.0513
G1 X90.0 Y80.0 E155.0713
G1 X91.0 Y80.0 E155.1213
G1 X92.0 Y81.0 E155.19202
G1 X90.0 Y85.0 E155.41652
G1 X91.0 Y86.0 E155.49
G1 X93.0 Y86.0 E155.59001
G1 X94.0 Y85.0 E155.66072
G1 X92.0 Y81.0 E155.88522
G1 X93.0 Y80.0 E155.95871
G1 X94.0 Y80.0 E156.00871
G1 X94.0 Y83.0 E156.15904
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning