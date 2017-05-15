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
G1 F1200.0
G1 Z0.2
G1 X51.0 Y50.0 E40.556694
G1 X52.0 Y51.0 E40.698116
G1 X50.0 Y55.0 E40.922615
G1 X51.0 Y56.0 E41.069584
G1 X53.0 Y56.0 E41.269585
G1 X54.0 Y55.0 E41.411007
G1 X52.0 Y51.0 E41.635506
G1 X53.0 Y50.0 E41.782475
G1 X54.0 Y50.0 E41.882473
G1 X54.0 Y50.0
G1 X55.0 Y50.0 E41.999092
G1 X56.0 Y51.0 E42.140514
G1 X54.0 Y55.0 E42.365013
G1 X55.0 Y56.0 E42.511982
G1 X57.0 Y56.0 E42.711983
G1 X58.0 Y55.0 E42.853405
G1 X56.0 Y51.0 E43.077904
G1 X57.0 Y50.0 E43.224873
G1 X58.0 Y50.0 E43.32487
G1 X58.0 Y50.0
G1 X59.0 Y50.0 E43.44149
G1 X60.0 Y51.0 E43.582912
G1 X58.0 Y55.0 E43.80741
G1 X59.0 Y56.0 E43.95438
G1 X61.0 Y56.0 E44.15438
G1 X62.0 Y55.0 E44.295803
G1 X60.0 Y51.0 E44.5203
G1 X61.0 Y50.0 E44.66727
G1 X62.0 Y50.0 E44.76727
G1 X62.0 Y50.0
G1 X63.0 Y50.0 E44.88389
G1 X64.0 Y51.0 E45.02531
G1 X62.0 Y55.0 E45.24981
G1 X63.0 Y56.0 E45.39678
G1 X65.0 Y56.0 E45.59678
G1 X66.0 Y55.0 E45.7382
G1 X64.0 Y51.0 E45.9627
G1 X65.0 Y50.0 E46.10967
G1 X66.0 Y50.0 E46.209667
G1 X66.0 Y50.0
G1 X67.0 Y50.0 E46.326286
G1 X68.0 Y51.0 E46.46771
G1 X66.0 Y55.0 E46.692207
G1 X67.0 Y56.0 E46.839176
G1 X69.0 Y56.0 E47.039177
G1 X70.0 Y55.0 E47.1806
G1 X68.0 Y51.0 E47.405098
G1 X69.0 Y50.0 E47.552067
G1 X70.0 Y50.0 E47.652065
G1 X70.0 Y50.0
G1 X71.0 Y50.0 E47.768684
G1 X72.0 Y51.0 E47.910107
G1 X70.0 Y55.0 E48.134605
G1 X71.0 Y56.0 E48.281574
G1 X73.0 Y56.0 E48.481575
G1 X74.0 Y55.0 E48.622997
G1 X72.0 Y51.0 E48.847496
G1 X73.0 Y50.0 E48.994465
G1 X74.0 Y50.0 E49.094463
G1 X74.0 Y50.0
G1 X75.0 Y50.0 E49.211082
G1 X76.0 Y51.0 E49.352505
G1 X74.0 Y55.0 E49.577003
G1 X75.0 Y56.0 E49.723972
G1 X77.0 Y56.0 E49.923973
G1 X78.0 Y55.0 E50.065395
G1 X76.0 Y51.0 E50.289894
G1 X77.0 Y50.0 E50.436863
G1 X78.0 Y50.0 E50.53686
G1 X78.0 Y50.0
G1 X79.0 Y50.0 E50.65348
G1 X80.0 Y51.0 E50.794903
G1 X78.0 Y55.0 E51.0194
G1 X79.0 Y56.0 E51.16637
G1 X81.0 Y56.0 E51.36637
G1 X82.0 Y55.0 E51.507793
G1 X80.0 Y51.0 E51.732292
G1 X81.0 Y50.0 E51.87926
G1 X82.0 Y50.0 E51.97926
G1 X82.0 Y50.0
G1 X83.0 Y50.0 E52.09588
G1 X84.0 Y51.0 E52.2373
G1 X82.0 Y55.0 E52.4618
G1 X83.0 Y56.0 E52.60877
G1 X85.0 Y56.0 E52.80877
G1 X86.0 Y55.0 E52.95019
G1 X84.0 Y51.0 E53.17469
G1 X85.0 Y50.0 E53.32166
G1 X86.0 Y50.0 E53.421658
G1 X86.0 Y50.0
G1 X87.0 Y50.0 E53.538277
G1 X88.0 Y51.0 E53.6797
G1 X86.0 Y55.0 E53.904198
G1 X87.0 Y56.0 E54.051167
G1 X89.0 Y56.0 E54.251167
G1 X90.0 Y55.0 E54.39259
G1 X88.0 Y51.0 E54.61709
G1 X89.0 Y50.0 E54.764057
G1 X90.0 Y50.0 E54.864056
G1 X90.0 Y50.0
G1 X91.0 Y50.0 E54.980675
G1 X92.0 Y51.0 E55.122097
G1 X90.0 Y55.0 E55.346596
G1 X91.0 Y56.0 E55.493565
G1 X93.0 Y56.0 E55.693565
G1 X94.0 Y55.0 E55.834988
G1 X92.0 Y51.0 E56.059486
G1 X93.0 Y50.0 E56.206455
G1 X94.0 Y50.0 E56.306454
G1 X94.0 Y53.0 E56.456787
G1 X94.0 Y53.0
G1 X93.0 Y53.0 E56.573406
G1 X92.0 Y54.0 E56.71483
G1 X94.0 Y58.0 E56.939327
G1 X93.0 Y59.0 E57.086296
G1 X91.0 Y59.0 E57.286297
G1 X90.0 Y58.0 E57.42772
G1 X92.0 Y54.0 E57.652218
G1 X91.0 Y53.0 E57.799187
G1 X90.0 Y53.0 E57.899185
G1 X90.0 Y53.0
G1 X89.0 Y53.0 E58.015804
G1 X88.0 Y54.0 E58.157227
G1 X90.0 Y58.0 E58.381725
G1 X89.0 Y59.0 E58.528694
G1 X87.0 Y59.0 E58.728695
G1 X86.0 Y58.0 E58.870117
G1 X88.0 Y54.0 E59.094616
G1 X87.0 Y53.0 E59.241585
G1 X86.0 Y53.0 E59.341583
G1 X86.0 Y53.0
G1 X85.0 Y53.0 E59.458202
G1 X84.0 Y54.0 E59.599625
G1 X86.0 Y58.0 E59.824123
G1 X85.0 Y59.0 E59.971092
G1 X83.0 Y59.0 E60.171093
G1 X82.0 Y58.0 E60.312515
G1 X84.0 Y54.0 E60.537014
G1 X83.0 Y53.0 E60.683983
G1 X82.0 Y53.0 E60.78398
G1 X82.0 Y53.0
G1 X81.0 Y53.0 E60.9006
G1 X80.0 Y54.0 E61.042023
G1 X82.0 Y58.0 E61.26652
G1 X81.0 Y59.0 E61.41349
G1 X79.0 Y59.0 E61.61349
G1 X78.0 Y58.0 E61.754913
G1 X80.0 Y54.0 E61.979412
G1 X79.0 Y53.0 E62.12638
G1 X78.0 Y53.0 E62.22638
G1 X78.0 Y53.0
G1 X77.0 Y53.0 E62.343
G1 X76.0 Y54.0 E62.48442
G1 X78.0 Y58.0 E62.70892
G1 X77.0 Y59.0 E62.85589
G1 X75.0 Y59.0 E63.05589
G1 X74.0 Y58.0 E63.19731
G1 X76.0 Y54.0 E63.42181
G1 X75.0 Y53.0 E63.56878
G1 X74.0 Y53.0 E63.668777
G1 X74.0 Y53.0
G1 X73.0 Y53.0 E63.785397
G1 X72.0 Y54.0 E63.92682
G1 X74.0 Y58.0 E64.15132
G1 X73.0 Y59.0 E64.298294
G1 X71.0 Y59.0 E64.49829
G1 X70.0 Y58.0 E64.63971
G1 X72.0 Y54.0 E64.86421
G1 X71.0 Y53.0 E65.011185
G1 X70.0 Y53.0 E65.11118
G1 X70.0 Y53.0
G1 X69.0 Y53.0 E65.2278
G1 X68.0 Y54.0 E65.36922
G1 X70.0 Y58.0 E65.59372
G1 X69.0 Y59.0 E65.74069
G1 X67.0 Y59.0 E65.94069
G1 X66.0 Y58.0 E66.08211
G1 X68.0 Y54.0 E66.30661
G1 X67.0 Y53.0 E66.45358
G1 X66.0 Y53.0 E66.55358
G1 X66.0 Y53.0
G1 X65.0 Y53.0 E66.6702
G1 X64.0 Y54.0 E66.811615
G1 X66.0 Y58.0 E67.03612
G1 X65.0 Y59.0 E67.18309
G1 X63.0 Y59.0 E67.38309
G1 X62.0 Y58.0 E67.524506
G1 X64.0 Y54.0 E67.74901
G1 X63.0 Y53.0 E67.89598
G1 X62.0 Y53.0 E67.99598
G1 X62.0 Y53.0
G1 X61.0 Y53.0 E68.112595
G1 X60.0 Y54.0 E68.25401
G1 X62.0 Y58.0 E68.478516
G1 X61.0 Y59.0 E68.62549
G1 X59.0 Y59.0 E68.825485
G1 X58.0 Y58.0 E68.9669
G1 X60.0 Y54.0 E69.19141
G1 X59.0 Y53.0 E69.33838
G1 X58.0 Y53.0 E69.43838
G1 X58.0 Y53.0
G1 X57.0 Y53.0 E69.55499
G1 X56.0 Y54.0 E69.69641
G1 X58.0 Y58.0 E69.92091
G1 X57.0 Y59.0 E70.06789
G1 X55.0 Y59.0 E70.26788
G1 X54.0 Y58.0 E70.4093
G1 X56.0 Y54.0 E70.633804
G1 X55.0 Y53.0 E70.78078
G1 X54.0 Y53.0 E70.880775
G1 X54.0 Y53.0
G1 X53.0 Y53.0 E70.99739
G1 X52.0 Y54.0 E71.13881
G1 X54.0 Y58.0 E71.36331
G1 X53.0 Y59.0 E71.510284
G1 X51.0 Y59.0 E71.71028
G1 X50.0 Y58.0 E71.8517
G1 X52.0 Y54.0 E72.0762
G1 X51.0 Y53.0 E72.223175
G1 X50.0 Y53.0 E72.32317
G1 X50.0 Y56.0 E72.4735
G1 X50.0 Y56.0
G1 X51.0 Y56.0 E72.59012
G1 X52.0 Y57.0 E72.73154
G1 X50.0 Y61.0 E72.95604
G1 X51.0 Y62.0 E73.10301
G1 X53.0 Y62.0 E73.30301
G1 X54.0 Y61.0 E73.44443
G1 X52.0 Y57.0 E73.66893
G1 X53.0 Y56.0 E73.8159
G1 X54.0 Y56.0 E73.9159
G1 X54.0 Y56.0
G1 X55.0 Y56.0 E74.03252
G1 X56.0 Y57.0 E74.173935
G1 X54.0 Y61.0 E74.39844
G1 X55.0 Y62.0 E74.54541
G1 X57.0 Y62.0 E74.74541
G1 X58.0 Y61.0 E74.886826
G1 X56.0 Y57.0 E75.11133
G1 X57.0 Y56.0 E75.2583
G1 X58.0 Y56.0 E75.3583
G1 X58.0 Y56.0
G1 X59.0 Y56.0 E75.474915
G1 X60.0 Y57.0 E75.61633
G1 X58.0 Y61.0 E75.840836
G1 X59.0 Y62.0 E75.98781
G1 X61.0 Y62.0 E76.187805
G1 X62.0 Y61.0 E76.32922
G1 X60.0 Y57.0 E76.55373
G1 X61.0 Y56.0 E76.7007
G1 X62.0 Y56.0 E76.8007
G1 X62.0 Y56.0
G1 X63.0 Y56.0 E76.91731
G1 X64.0 Y57.0 E77.05873
G1 X62.0 Y61.0 E77.28323
G1 X63.0 Y62.0 E77.43021
G1 X65.0 Y62.0 E77.6302
G1 X66.0 Y61.0 E77.77162
G1 X64.0 Y57.0 E77.996124
G1 X65.0 Y56.0 E78.1431
G1 X66.0 Y56.0 E78.243095
G1 X66.0 Y56.0
G1 X67.0 Y56.0 E78.35971
G1 X68.0 Y57.0 E78.50113
G1 X66.0 Y61.0 E78.72563
G1 X67.0 Y62.0 E78.872604
G1 X69.0 Y62.0 E79.0726
G1 X70.0 Y61.0 E79.21402
G1 X68.0 Y57.0 E79.43852
G1 X69.0 Y56.0 E79.585495
G1 X70.0 Y56.0 E79.68549
G1 X70.0 Y56.0
G1 X71.0 Y56.0 E79.80211
G1 X72.0 Y57.0 E79.94353
G1 X70.0 Y61.0 E80.16803
G1 X71.0 Y62.0 E80.315
G1 X73.0 Y62.0 E80.515
G1 X74.0 Y61.0 E80.65642
G1 X72.0 Y57.0 E80.88092
G1 X73.0 Y56.0 E81.02789
G1 X74.0 Y56.0 E81.12789
G1 X74.0 Y56.0
G1 X75.0 Y56.0 E81.24451
G1 X76.0 Y57.0 E81.385925
G1 X74.0 Y61.0 E81.61043
G1 X75.0 Y62.0 E81.7574
G1 X77.0 Y62.0 E81.9574
G1 X78.0 Y61.0 E82.098816
G1 X76.0 Y57.0 E82.32332
G1 X77.0 Y56.0 E82.47029
G1 X78.0 Y56.0 E82.57029
G1 X78.0 Y56.0
G1 X79.0 Y56.0 E82.686905
G1 X80.0 Y57.0 E82.82832
G1 X78.0 Y61.0 E83.052826
G1 X79.0 Y62.0 E83.1998
G1 X81.0 Y62.0 E83.399796
G1 X82.0 Y61.0 E83.541214
G1 X80.0 Y57.0 E83.76572
G1 X81.0 Y56.0 E83.91269
G1 X82.0 Y56.0 E84.01269
G1 X82.0 Y56.0
G1 X83.0 Y56.0 E84.1293
G1 X84.0 Y57.0 E84.27072
G1 X82.0 Y61.0 E84.495224
G1 X83.0 Y62.0 E84.6422
G1 X85.0 Y62.0 E84.84219
G1 X86.0 Y61.0 E84.98361
G1 X84.0 Y57.0 E85.208115
G1 X85.0 Y56.0 E85.35509
G1 X86.0 Y56.0 E85.455086
G1 X86.0 Y56.0
G1 X87.0 Y56.0 E85.5717
G1 X88.0 Y57.0 E85.71312
G1 X86.0 Y61.0 E85.93762
G1 X87.0 Y62.0 E86.084595
G1 X89.0 Y62.0 E86.28459
G1 X90.0 Y61.0 E86.42601
G1 X88.0 Y57.0 E86.65051
G1 X89.0 Y56.0 E86.797485
G1 X90.0 Y56.0 E86.897484
G1 X90.0 Y56.0
G1 X91.0 Y56.0 E87.0141
G1 X92.0 Y57.0 E87.15552
G1 X90.0 Y61.0 E87.38002
G1 X91.0 Y62.0 E87.52699
G1 X93.0 Y62.0 E87.72699
G1 X94.0 Y61.0 E87.86841
G1 X92.0 Y57.0 E88.09291
G1 X93.0 Y56.0 E88.23988
G1 X94.0 Y56.0 E88.33988
G1 X94.0 Y59.0 E88.49021
G1 X94.0 Y59.0
G1 X93.0 Y59.0 E88.60683
G1 X92.0 Y60.0 E88.748245
G1 X94.0 Y64.0 E88.97275
G1 X93.0 Y65.0 E89.11972
G1 X91.0 Y65.0 E89.31972
G1 X90.0 Y64.0 E89.461136
G1 X92.0 Y60.0 E89.68564
G1 X91.0 Y59.0 E89.83261
G1 X90.0 Y59.0 E89.93261
G1 X90.0 Y59.0
G1 X89.0 Y59.0 E90.049225
G1 X88.0 Y60.0 E90.19064
G1 X90.0 Y64.0 E90.415146
G1 X89.0 Y65.0 E90.56212
G1 X87.0 Y65.0 E90.762115
G1 X86.0 Y64.0 E90.903534
G1 X88.0 Y60.0 E91.12804
G1 X87.0 Y59.0 E91.27501
G1 X86.0 Y59.0 E91.37501
G1 X86.0 Y59.0
G1 X85.0 Y59.0 E91.49162
G1 X84.0 Y60.0 E91.63304
G1 X86.0 Y64.0 E91.857544
G1 X85.0 Y65.0 E92.00452
G1 X83.0 Y65.0 E92.20451
G1 X82.0 Y64.0 E92.34593
G1 X84.0 Y60.0 E92.570435
G1 X83.0 Y59.0 E92.71741
G1 X82.0 Y59.0 E92.817406
G1 X82.0 Y59.0
G1 X81.0 Y59.0 E92.93402
G1 X80.0 Y60.0 E93.07544
G1 X82.0 Y64.0 E93.29994
G1 X81.0 Y65.0 E93.446915
G1 X79.0 Y65.0 E93.64691
G1 X78.0 Y64.0 E93.78833
G1 X80.0 Y60.0 E94.01283
G1 X79.0 Y59.0 E94.159805
G1 X78.0 Y59.0 E94.2598
G1 X78.0 Y59.0
G1 X77.0 Y59.0 E94.37642
G1 X76.0 Y60.0 E94.51784
G1 X78.0 Y64.0 E94.74234
G1 X77.0 Y65.0 E94.88931
G1 X75.0 Y65.0 E95.08931
G1 X74.0 Y64.0 E95.23073
G1 X76.0 Y60.0 E95.45523
G1 X75.0 Y59.0 E95.6022
G1 X74.0 Y59.0 E95.7022
G1 X74.0 Y59.0
G1 X73.0 Y59.0 E95.81882
G1 X72.0 Y60.0 E95.960236
G1 X74.0 Y64.0 E96.18474
G1 X73.0 Y65.0 E96.33171
G1 X71.0 Y65.0 E96.53171
G1 X70.0 Y64.0 E96.67313
G1 X72.0 Y60.0 E96.89763
G1 X71.0 Y59.0 E97.0446
G1 X70.0 Y59.0 E97.1446
G1 X70.0 Y59.0
G1 X69.0 Y59.0 E97.261215
G1 X68.0 Y60.0 E97.40263
G1 X70.0 Y64.0 E97.62714
G1 X69.0 Y65.0 E97.77411
G1 X67.0 Y65.0 E97.974106
G1 X66.0 Y64.0 E98.115524
G1 X68.0 Y60.0 E98.34003
G1 X67.0 Y59.0 E98.487
G1 X66.0 Y59.0 E98.587
G1 X66.0 Y59.0
G1 X65.0 Y59.0 E98.70361
G1 X64.0 Y60.0 E98.84503
G1 X66.0 Y64.0 E99.069534
G1 X65.0 Y65.0 E99.21651
G1 X63.0 Y65.0 E99.416504
G1 X62.0 Y64.0 E99.55792
G1 X64.0 Y60.0 E99.782425
G1 X63.0 Y59.0 E99.9294
G1 X62.0 Y59.0 E100.029396
G1 X62.0 Y59.0
G1 X61.0 Y59.0 E100.14601
G1 X60.0 Y60.0 E100.28743
G1 X62.0 Y64.0 E100.51193
G1 X61.0 Y65.0 E100.658905
G1 X59.0 Y65.0 E100.8589
G1 X58.0 Y64.0 E101.00032
G1 X60.0 Y60.0 E101.22482
G1 X59.0 Y59.0 E101.371796
G1 X58.0 Y59.0 E101.471794
G1 X58.0 Y59.0
G1 X57.0 Y59.0 E101.58841
G1 X56.0 Y60.0 E101.72983
G1 X58.0 Y64.0 E101.95433
G1 X57.0 Y65.0 E102.1013
G1 X55.0 Y65.0 E102.3013
G1 X54.0 Y64.0 E102.44272
G1 X56.0 Y60.0 E102.66722
G1 X55.0 Y59.0 E102.81419
G1 X54.0 Y59.0 E102.91419
G1 X54.0 Y59.0
G1 X53.0 Y59.0 E103.03081
G1 X52.0 Y60.0 E103.172226
G1 X54.0 Y64.0 E103.39673
G1 X53.0 Y65.0 E103.5437
G1 X51.0 Y65.0 E103.7437
G1 X50.0 Y64.0 E103.88512
G1 X52.0 Y60.0 E104.10962
G1 X51.0 Y59.0 E104.25659
G1 X50.0 Y59.0 E104.35659
G1 X50.0 Y62.0 E104.50692
G1 X50.0 Y62.0
G1 X51.0 Y62.0 E104.623535
G1 X52.0 Y63.0 E104.76495
G1 X50.0 Y67.0 E104.989456
G1 X51.0 Y68.0 E105.13643
G1 X53.0 Y68.0 E105.336426
G1 X54.0 Y67.0 E105.477844
G1 X52.0 Y63.0 E105.70235
G1 X53.0 Y62.0 E105.84932
G1 X54.0 Y62.0 E105.94932
G1 X54.0 Y62.0
G1 X55.0 Y62.0 E106.06593
G1 X56.0 Y63.0 E106.20735
G1 X54.0 Y67.0 E106.431854
G1 X55.0 Y68.0 E106.57883
G1 X57.0 Y68.0 E106.778824
G1 X58.0 Y67.0 E106.92024
G1 X56.0 Y63.0 E107.144745
G1 X57.0 Y62.0 E107.29172
G1 X58.0 Y62.0 E107.391716
G1 X58.0 Y62.0
G1 X59.0 Y62.0 E107.50833
G1 X60.0 Y63.0 E107.64975
G1 X58.0 Y67.0 E107.87425
G1 X59.0 Y68.0 E108.021225
G1 X61.0 Y68.0 E108.22122
G1 X62.0 Y67.0 E108.36264
G1 X60.0 Y63.0 E108.58714
G1 X61.0 Y62.0 E108.734116
G1 X62.0 Y62.0 E108.834114
G1 X62.0 Y62.0
G1 X63.0 Y62.0 E108.95073
G1 X64.0 Y63.0 E109.09215
G1 X62.0 Y67.0 E109.31665
G1 X63.0 Y68.0 E109.46362
G1 X65.0 Y68.0 E109.66362
G1 X66.0 Y67.0 E109.80504
G1 X64.0 Y63.0 E110.02954
G1 X65.0 Y62.0 E110.17651
G1 X66.0 Y62.0 E110.27651
G1 X66.0 Y62.0
G1 X67.0 Y62.0 E110.39313
G1 X68.0 Y63.0 E110.534546
G1 X66.0 Y67.0 E110.75905
G1 X67.0 Y68.0 E110.90602
G1 X69.0 Y68.0 E111.10602
G1 X70.0 Y67.0 E111.24744
G1 X68.0 Y63.0 E111.47194
G1 X69.0 Y62.0 E111.61891
G1 X70.0 Y62.0 E111.71891
G1 X70.0 Y62.0
G1 X71.0 Y62.0 E111.835526
G1 X72.0 Y63.0 E111.976944
G1 X70.0 Y67.0 E112.20145
G1 X71.0 Y68.0 E112.34842
G1 X73.0 Y68.0 E112.548416
G1 X74.0 Y67.0 E112.689835
G1 X72.0 Y63.0 E112.91434
G1 X73.0 Y62.0 E113.06131
G1 X74.0 Y62.0 E113.16131
G1 X74.0 Y62.0
G1 X75.0 Y62.0 E113.27792
G1 X76.0 Y63.0 E113.41934
G1 X74.0 Y67.0 E113.643845
G1 X75.0 Y68.0 E113.79082
G1 X77.0 Y68.0 E113.990814
G1 X78.0 Y67.0 E114.13223
G1 X76.0 Y63.0 E114.356735
G1 X77.0 Y62.0 E114.50371
G1 X78.0 Y62.0 E114.60371
G1 X78.0 Y62.0
G1 X79.0 Y62.0 E114.72032
G1 X80.0 Y63.0 E114.86174
G1 X78.0 Y67.0 E115.08624
G1 X79.0 Y68.0 E115.233215
G1 X81.0 Y68.0 E115.43321
G1 X82.0 Y67.0 E115.57463
G1 X80.0 Y63.0 E115.79913
G1 X81.0 Y62.0 E115.946106
G1 X82.0 Y62.0 E116.046104
G1 X82.0 Y62.0
G1 X83.0 Y62.0 E116.16272
G1 X84.0 Y63.0 E116.30414
G1 X82.0 Y67.0 E116.52864
G1 X83.0 Y68.0 E116.67561
G1 X85.0 Y68.0 E116.87561
G1 X86.0 Y67.0 E117.01703
G1 X84.0 Y63.0 E117.24153
G1 X85.0 Y62.0 E117.388504
G1 X86.0 Y62.0 E117.4885
G1 X86.0 Y62.0
G1 X87.0 Y62.0 E117.60512
G1 X88.0 Y63.0 E117.74654
G1 X86.0 Y67.0 E117.97104
G1 X87.0 Y68.0 E118.11801
G1 X89.0 Y68.0 E118.31801
G1 X90.0 Y67.0 E118.45943
G1 X88.0 Y63.0 E118.68393
G1 X89.0 Y62.0 E118.8309
G1 X90.0 Y62.0 E118.9309
G1 X90.0 Y62.0
G1 X91.0 Y62.0 E119.047516
G1 X92.0 Y63.0 E119.188934
G1 X90.0 Y67.0 E119.41344
G1 X91.0 Y68.0 E119.56041
G1 X93.0 Y68.0 E119.76041
G1 X94.0 Y67.0 E119.901825
G1 X92.0 Y63.0 E120.12633
G1 X93.0 Y62.0 E120.2733
G1 X94.0 Y62.0 E120.3733
G1 X94.0 Y65.0 E120.52363
G1 X94.0 Y65.0
G1 X93.0 Y65.0 E120.64024
G1 X92.0 Y66.0 E120.78166
G1 X94.0 Y70.0 E121.006165
G1 X93.0 Y71.0 E121.15314
G1 X91.0 Y71.0 E121.353134
G1 X90.0 Y70.0 E121.49455
G1 X92.0 Y66.0 E121.719055
G1 X91.0 Y65.0 E121.86603
G1 X90.0 Y65.0 E121.96603
G1 X90.0 Y65.0
G1 X89.0 Y65.0 E122.08264
G1 X88.0 Y66.0 E122.22406
G1 X90.0 Y70.0 E122.44856
G1 X89.0 Y71.0 E122.595535
G1 X87.0 Y71.0 E122.79553
G1 X86.0 Y70.0 E122.93695
G1 X88.0 Y66.0 E123.16145
G1 X87.0 Y65.0 E123.308426
G1 X86.0 Y65.0 E123.408424
G1 X86.0 Y65.0
G1 X85.0 Y65.0 E123.52504
G1 X84.0 Y66.0 E123.66646
G1 X86.0 Y70.0 E123.89096
G1 X85.0 Y71.0 E124.03793
G1 X83.0 Y71.0 E124.23793
G1 X82.0 Y70.0 E124.37935
G1 X84.0 Y66.0 E124.60385
G1 X83.0 Y65.0 E124.750824
G1 X82.0 Y65.0 E124.85082
G1 X82.0 Y65.0
G1 X81.0 Y65.0 E124.96744
G1 X80.0 Y66.0 E125.10886
G1 X82.0 Y70.0 E125.33336
G1 X81.0 Y71.0 E125.48033
G1 X79.0 Y71.0 E125.68033
G1 X78.0 Y70.0 E125.82175
G1 X80.0 Y66.0 E126.04625
G1 X79.0 Y65.0 E126.19322
G1 X78.0 Y65.0 E126.29322
G1 X78.0 Y65.0
G1 X77.0 Y65.0 E126.409836
G1 X76.0 Y66.0 E126.551254
G1 X78.0 Y70.0 E126.77576
G1 X77.0 Y71.0 E126.92273
G1 X75.0 Y71.0 E127.12273
G1 X74.0 Y70.0 E127.264145
G1 X76.0 Y66.0 E127.48865
G1 X75.0 Y65.0 E127.63562
G1 X74.0 Y65.0 E127.73562
G1 X74.0 Y65.0
G1 X73.0 Y65.0 E127.852234
G1 X72.0 Y66.0 E127.99365
G1 X74.0 Y70.0 E128.21815
G1 X73.0 Y71.0 E128.36513
G1 X71.0 Y71.0 E128.56512
G1 X70.0 Y70.0 E128.70654
G1 X72.0 Y66.0 E128.93105
G1 X71.0 Y65.0 E129.07802
G1 X70.0 Y65.0 E129.17802
G1 X70.0 Y65.0
G1 X69.0 Y65.0 E129.29465
G1 X68.0 Y66.0 E129.43607
G1 X70.0 Y70.0 E129.66057
G1 X69.0 Y71.0 E129.80754
G1 X67.0 Y71.0 E130.00754
G1 X66.0 Y70.0 E130.14896
G1 X68.0 Y66.0 E130.37346
G1 X67.0 Y65.0 E130.52043
G1 X66.0 Y65.0 E130.62044
G1 X66.0 Y65.0
G1 X65.0 Y65.0 E130.73706
G1 X64.0 Y66.0 E130.87848
G1 X66.0 Y70.0 E131.10298
G1 X65.0 Y71.0 E131.24995
G1 X63.0 Y71.0 E131.44995
G1 X62.0 Y70.0 E131.59137
G1 X64.0 Y66.0 E131.81587
G1 X63.0 Y65.0 E131.96284
G1 X62.0 Y65.0 E132.06285
G1 X62.0 Y65.0
G1 X61.0 Y65.0 E132.17947
G1 X60.0 Y66.0 E132.32089
G1 X62.0 Y70.0 E132.5454
G1 X61.0 Y71.0 E132.69237
G1 X59.0 Y71.0 E132.89236
G1 X58.0 Y70.0 E133.03378
G1 X60.0 Y66.0 E133.25829
G1 X59.0 Y65.0 E133.40526
G1 X58.0 Y65.0 E133.50526
G1 X58.0 Y65.0
G1 X57.0 Y65.0 E133.62189
G1 X56.0 Y66.0 E133.7633
G1 X58.0 Y70.0 E133.98781
G1 X57.0 Y71.0 E134.13478
G1 X55.0 Y71.0 E134.33478
G1 X54.0 Y70.0 E134.4762
G1 X56.0 Y66.0 E134.7007
G1 X55.0 Y65.0 E134.84767
G1 X54.0 Y65.0 E134.94768
G1 X54.0 Y65.0
G1 X53.0 Y65.0 E135.0643
G1 X52.0 Y66.0 E135.20572
G1 X54.0 Y70.0 E135.43022
G1 X53.0 Y71.0 E135.5772
G1 X51.0 Y71.0 E135.77719
G1 X50.0 Y70.0 E135.91861
G1 X52.0 Y66.0 E136.14311
G1 X51.0 Y65.0 E136.29008
G1 X50.0 Y65.0 E136.39009
G1 X50.0 Y68.0 E136.54042
G1 X50.0 Y68.0
G1 X51.0 Y68.0 E136.65704
G1 X52.0 Y69.0 E136.79846
G1 X50.0 Y73.0 E137.02296
G1 X51.0 Y74.0 E137.16994
G1 X53.0 Y74.0 E137.36993
G1 X54.0 Y73.0 E137.51135
G1 X52.0 Y69.0 E137.73586
G1 X53.0 Y68.0 E137.88283
G1 X54.0 Y68.0 E137.98283
G1 X54.0 Y68.0
G1 X55.0 Y68.0 E138.09946
G1 X56.0 Y69.0 E138.24088
G1 X54.0 Y73.0 E138.46538
G1 X55.0 Y74.0 E138.61235
G1 X57.0 Y74.0 E138.81235
G1 X58.0 Y73.0 E138.95377
G1 X56.0 Y69.0 E139.17827
G1 X57.0 Y68.0 E139.32524
G1 X58.0 Y68.0 E139.42525
G1 X58.0 Y68.0
G1 X59.0 Y68.0 E139.54187
G1 X60.0 Y69.0 E139.68329
G1 X58.0 Y73.0 E139.90779
G1 X59.0 Y74.0 E140.05476
G1 X61.0 Y74.0 E140.25476
G1 X62.0 Y73.0 E140.39618
G1 X60.0 Y69.0 E140.62068
G1 X61.0 Y68.0 E140.76765
G1 X62.0 Y68.0 E140.86766
G1 X62.0 Y68.0
G1 X63.0 Y68.0 E140.98428
G1 X64.0 Y69.0 E141.1257
G1 X62.0 Y73.0 E141.3502
G1 X63.0 Y74.0 E141.49718
G1 X65.0 Y74.0 E141.69717
G1 X66.0 Y73.0 E141.8386
G1 X64.0 Y69.0 E142.0631
G1 X65.0 Y68.0 E142.21007
G1 X66.0 Y68.0 E142.31007
G1 X66.0 Y68.0
G1 X67.0 Y68.0 E142.4267
G1 X68.0 Y69.0 E142.56812
G1 X66.0 Y73.0 E142.79262
G1 X67.0 Y74.0 E142.93959
G1 X69.0 Y74.0 E143.13959
G1 X70.0 Y73.0 E143.281
G1 X68.0 Y69.0 E143.50551
G1 X69.0 Y68.0 E143.65248
G1 X70.0 Y68.0 E143.75249
G1 X70.0 Y68.0
G1 X71.0 Y68.0 E143.86911
G1 X72.0 Y69.0 E144.01053
G1 X70.0 Y73.0 E144.23503
G1 X71.0 Y74.0 E144.382
G1 X73.0 Y74.0 E144.582
G1 X74.0 Y73.0 E144.72342
G1 X72.0 Y69.0 E144.94792
G1 X73.0 Y68.0 E145.0949
G1 X74.0 Y68.0 E145.1949
G1 X74.0 Y68.0
G1 X75.0 Y68.0 E145.31152
G1 X76.0 Y69.0 E145.45294
G1 X74.0 Y73.0 E145.67744
G1 X75.0 Y74.0 E145.82442
G1 X77.0 Y74.0 E146.02441
G1 X78.0 Y73.0 E146.16583
G1 X76.0 Y69.0 E146.39034
G1 X77.0 Y68.0 E146.53731
G1 X78.0 Y68.0 E146.63731
G1 X78.0 Y68.0
G1 X79.0 Y68.0 E146.75394
G1 X80.0 Y69.0 E146.89536
G1 X78.0 Y73.0 E147.11986
G1 X79.0 Y74.0 E147.26683
G1 X81.0 Y74.0 E147.46683
G1 X82.0 Y73.0 E147.60825
G1 X80.0 Y69.0 E147.83275
G1 X81.0 Y68.0 E147.97972
G1 X82.0 Y68.0 E148.07973
G1 X82.0 Y68.0
G1 X83.0 Y68.0 E148.19635
G1 X84.0 Y69.0 E148.33777
G1 X82.0 Y73.0 E148.56227
G1 X83.0 Y74.0 E148.70924
G1 X85.0 Y74.0 E148.90924
G1 X86.0 Y73.0 E149.05066
G1 X84.0 Y69.0 E149.27516
G1 X85.0 Y68.0 E149.42213
G1 X86.0 Y68.0 E149.52214
G1 X86.0 Y68.0
G1 X87.0 Y68.0 E149.63876
G1 X88.0 Y69.0 E149.78018
G1 X86.0 Y73.0 E150.00468
G1 X87.0 Y74.0 E150.15166
G1 X89.0 Y74.0 E150.35165
G1 X90.0 Y73.0 E150.49307
G1 X88.0 Y69.0 E150.71758
G1 X89.0 Y68.0 E150.86455
G1 X90.0 Y68.0 E150.96455
G1 X90.0 Y68.0
G1 X91.0 Y68.0 E151.08118
G1 X92.0 Y69.0 E151.2226
G1 X90.0 Y73.0 E151.4471
G1 X91.0 Y74.0 E151.59407
G1 X93.0 Y74.0 E151.79407
G1 X94.0 Y73.0 E151.93549
G1 X92.0 Y69.0 E152.15999
G1 X93.0 Y68.0 E152.30696
G1 X94.0 Y68.0 E152.40697
G1 X94.0 Y71.0 E152.5573
G1 X94.0 Y71.0
G1 X93.0 Y71.0 E152.67392
G1 X92.0 Y72.0 E152.81534
G1 X94.0 Y76.0 E153.03984
G1 X93.0 Y77.0 E153.18681
G1 X91.0 Y77.0 E153.38681
G1 X90.0 Y76.0 E153.52823
G1 X92.0 Y72.0 E153.75273
G1 X91.0 Y71.0 E153.8997
G1 X90.0 Y71.0 E153.99971
G1 X90.0 Y71.0
G1 X89.0 Y71.0 E154.11633
G1 X88.0 Y72.0 E154.25775
G1 X90.0 Y76.0 E154.48225
G1 X89.0 Y77.0 E154.62923
G1 X87.0 Y77.0 E154.82922
G1 X86.0 Y76.0 E154.97064
G1 X88.0 Y72.0 E155.19514
G1 X87.0 Y71.0 E155.34212
G1 X86.0 Y71.0 E155.44212
G1 X86.0 Y71.0
G1 X85.0 Y71.0 E155.55875
G1 X84.0 Y72.0 E155.70016
G1 X86.0 Y76.0 E155.92467
G1 X85.0 Y77.0 E156.07164
G1 X83.0 Y77.0 E156.27164
G1 X82.0 Y76.0 E156.41306
G1 X84.0 Y72.0 E156.63756
G1 X83.0 Y71.0 E156.78453
G1 X82.0 Y71.0 E156.88454
G1 X82.0 Y71.0
G1 X81.0 Y71.0 E157.00116
G1 X80.0 Y72.0 E157.14258
G1 X82.0 Y76.0 E157.36708
G1 X81.0 Y77.0 E157.51405
G1 X79.0 Y77.0 E157.71405
G1 X78.0 Y76.0 E157.85547
G1 X80.0 Y72.0 E158.07997
G1 X79.0 Y71.0 E158.22694
G1 X78.0 Y71.0 E158.32695
G1 X78.0 Y71.0
G1 X77.0 Y71.0 E158.44357
G1 X76.0 Y72.0 E158.58499
G1 X78.0 Y76.0 E158.8095
G1 X77.0 Y77.0 E158.95647
G1 X75.0 Y77.0 E159.15646
G1 X74.0 Y76.0 E159.29788
G1 X76.0 Y72.0 E159.52238
G1 X75.0 Y71.0 E159.66936
G1 X74.0 Y71.0 E159.76936
G1 X74.0 Y71.0
G1 X73.0 Y71.0 E159.88599
G1 X72.0 Y72.0 E160.0274
G1 X74.0 Y76.0 E160.2519
G1 X73.0 Y77.0 E160.39888
G1 X71.0 Y77.0 E160.59888
G1 X70.0 Y76.0 E160.7403
G1 X72.0 Y72.0 E160.9648
G1 X71.0 Y71.0 E161.11177
G1 X70.0 Y71.0 E161.21178
G1 X70.0 Y71.0
G1 X69.0 Y71.0 E161.3284
G1 X68.0 Y72.0 E161.46982
G1 X70.0 Y76.0 E161.69432
G1 X69.0 Y77.0 E161.8413
G1 X67.0 Y77.0 E162.04129
G1 X66.0 Y76.0 E162.18271
G1 X68.0 Y72.0 E162.40721
G1 X67.0 Y71.0 E162.55418
G1 X66.0 Y71.0 E162.65419
G1 X66.0 Y71.0
G1 X65.0 Y71.0 E162.77081
G1 X64.0 Y72.0 E162.91223
G1 X66.0 Y76.0 E163.13673
G1 X65.0 Y77.0 E163.2837
G1 X63.0 Y77.0 E163.4837
G1 X62.0 Y76.0 E163.62512
G1 X64.0 Y72.0 E163.84962
G1 X63.0 Y71.0 E163.9966
G1 X62.0 Y71.0 E164.0966
G1 X62.0 Y71.0
G1 X61.0 Y71.0 E164.21323
G1 X60.0 Y72.0 E164.35464
G1 X62.0 Y76.0 E164.57915
G1 X61.0 Y77.0 E164.72612
G1 X59.0 Y77.0 E164.92612
G1 X58.0 Y76.0 E165.06754
G1 X60.0 Y72.0 E165.29204
G1 X59.0 Y71.0 E165.43901
G1 X58.0 Y71.0 E165.53902
G1 X58.0 Y71.0
G1 X57.0 Y71.0 E165.65564
G1 X56.0 Y72.0 E165.79706
G1 X58.0 Y76.0 E166.02156
G1 X57.0 Y77.0 E166.16853
G1 X55.0 Y77.0 E166.36853
G1 X54.0 Y76.0 E166.50995
G1 X56.0 Y72.0 E166.73445
G1 X55.0 Y71.0 E166.88142
G1 X54.0 Y71.0 E166.98143
G1 X54.0 Y71.0
G1 X53.0 Y71.0 E167.09805
G1 X52.0 Y72.0 E167.23947
G1 X54.0 Y76.0 E167.46397
G1 X53.0 Y77.0 E167.61095
G1 X51.0 Y77.0 E167.81094
G1 X50.0 Y76.0 E167.95236
G1 X52.0 Y72.0 E168.17686
G1 X51.0 Y71.0 E168.32384
G1 X50.0 Y71.0 E168.42384
G1 X50.0 Y74.0 E168.57417
G1 X50.0 Y74.0
G1 X51.0 Y74.0 E168.6908
G1 X52.0 Y75.0 E168.83221
G1 X50.0 Y79.0 E169.05672
G1 X51.0 Y80.0 E169.20369
G1 X53.0 Y80.0 E169.40369
G1 X54.0 Y79.0 E169.5451
G1 X52.0 Y75.0 E169.7696
G1 X53.0 Y74.0 E169.91658
G1 X54.0 Y74.0 E170.01659
G1 X54.0 Y74.0
G1 X55.0 Y74.0 E170.13321
G1 X56.0 Y75.0 E170.27463
G1 X54.0 Y79.0 E170.49913
G1 X55.0 Y80.0 E170.6461
G1 X57.0 Y80.0 E170.8461
G1 X58.0 Y79.0 E170.98752
G1 X56.0 Y75.0 E171.21202
G1 X57.0 Y74.0 E171.359
G1 X58.0 Y74.0 E171.459
G1 X58.0 Y74.0
G1 X59.0 Y74.0 E171.57562
G1 X60.0 Y75.0 E171.71704
G1 X58.0 Y79.0 E171.94154
G1 X59.0 Y80.0 E172.08852
G1 X61.0 Y80.0 E172.28851
G1 X62.0 Y79.0 E172.42993
G1 X60.0 Y75.0 E172.65443
G1 X61.0 Y74.0 E172.8014
G1 X62.0 Y74.0 E172.90141
G1 X62.0 Y74.0
G1 X63.0 Y74.0 E173.01804
G1 X64.0 Y75.0 E173.15945
G1 X62.0 Y79.0 E173.38396
G1 X63.0 Y80.0 E173.53093
G1 X65.0 Y80.0 E173.73093
G1 X66.0 Y79.0 E173.87234
G1 X64.0 Y75.0 E174.09685
G1 X65.0 Y74.0 E174.24382
G1 X66.0 Y74.0 E174.34383
G1 X66.0 Y74.0
G1 X67.0 Y74.0 E174.46045
G1 X68.0 Y75.0 E174.60187
G1 X66.0 Y79.0 E174.82637
G1 X67.0 Y80.0 E174.97334
G1 X69.0 Y80.0 E175.17334
G1 X70.0 Y79.0 E175.31476
G1 X68.0 Y75.0 E175.53926
G1 X69.0 Y74.0 E175.68623
G1 X70.0 Y74.0 E175.78624
G1 X70.0 Y74.0
G1 X71.0 Y74.0 E175.90286
G1 X72.0 Y75.0 E176.04428
G1 X70.0 Y79.0 E176.26878
G1 X71.0 Y80.0 E176.41576
G1 X73.0 Y80.0 E176.61575
G1 X74.0 Y79.0 E176.75717
G1 X72.0 Y75.0 E176.98167
G1 X73.0 Y74.0 E177.12865
G1 X74.0 Y74.0 E177.22865
G1 X74.0 Y74.0
G1 X75.0 Y74.0 E177.34528
G1 X76.0 Y75.0 E177.4867
G1 X74.0 Y79.0 E177.7112
G1 X75.0 Y80.0 E177.85817
G1 X77.0 Y80.0 E178.05817
G1 X78.0 Y79.0 E178.19958
G1 X76.0 Y75.0 E178.42409
G1 X77.0 Y74.0 E178.57106
G1 X78.0 Y74.0 E178.67107
G1 X78.0 Y74.0
G1 X79.0 Y74.0 E178.78769
G1 X80.0 Y75.0 E178.92911
G1 X78.0 Y79.0 E179.15361
G1 X79.0 Y80.0 E179.30058
G1 X81.0 Y80.0 E179.50058
G1 X82.0 Y79.0 E179.642
G1 X80.0 Y75.0 E179.8665
G1 X81.0 Y74.0 E180.01347
G1 X82.0 Y74.0 E180.11348
G1 X82.0 Y74.0
G1 X83.0 Y74.0 E180.2301
G1 X84.0 Y75.0 E180.37152
G1 X82.0 Y79.0 E180.59602
G1 X83.0 Y80.0 E180.743
G1 X85.0 Y80.0 E180.943
G1 X86.0 Y79.0 E181.08441
G1 X84.0 Y75.0 E181.30891
G1 X85.0 Y74.0 E181.45589
G1 X86.0 Y74.0 E181.5559
G1 X86.0 Y74.0
G1 X87.0 Y74.0 E181.67252
G1 X88.0 Y75.0 E181.81393
G1 X86.0 Y79.0 E182.03844
G1 X87.0 Y80.0 E182.18541
G1 X89.0 Y80.0 E182.3854
G1 X90.0 Y79.0 E182.52682
G1 X88.0 Y75.0 E182.75133
G1 X89.0 Y74.0 E182.8983
G1 X90.0 Y74.0 E182.9983
G1 X90.0 Y74.0
G1 X91.0 Y74.0 E183.11493
G1 X92.0 Y75.0 E183.25635
G1 X90.0 Y79.0 E183.48085
G1 X91.0 Y80.0 E183.62782
G1 X93.0 Y80.0 E183.82782
G1 X94.0 Y79.0 E183.96924
G1 X92.0 Y75.0 E184.19374
G1 X93.0 Y74.0 E184.34071
G1 X94.0 Y74.0 E184.44072
G1 X94.0 Y77.0 E184.59105
G1 X94.0 Y77.0
G1 X93.0 Y77.0 E184.70767
G1 X92.0 Y78.0 E184.84909
G1 X94.0 Y82.0 E185.0736
G1 X93.0 Y83.0 E185.22057
G1 X91.0 Y83.0 E185.42056
G1 X90.0 Y82.0 E185.56198
G1 X92.0 Y78.0 E185.78648
G1 X91.0 Y77.0 E185.93346
G1 X90.0 Y77.0 E186.03346
G1 X90.0 Y77.0
G1 X89.0 Y77.0 E186.15009
G1 X88.0 Y78.0 E186.2915
G1 X90.0 Y82.0 E186.516
G1 X89.0 Y83.0 E186.66298
G1 X87.0 Y83.0 E186.86298
G1 X86.0 Y82.0 E187.0044
G1 X88.0 Y78.0 E187.2289
G1 X87.0 Y77.0 E187.37587
G1 X86.0 Y77.0 E187.47588
G1 X86.0 Y77.0
G1 X85.0 Y77.0 E187.5925
G1 X84.0 Y78.0 E187.73392
G1 X86.0 Y82.0 E187.95842
G1 X85.0 Y83.0 E188.1054
G1 X83.0 Y83.0 E188.30539
G1 X82.0 Y82.0 E188.44681
G1 X84.0 Y78.0 E188.67131
G1 X83.0 Y77.0 E188.81828
G1 X82.0 Y77.0 E188.91829
G1 X82.0 Y77.0
G1 X81.0 Y77.0 E189.03491
G1 X80.0 Y78.0 E189.17633
G1 X82.0 Y82.0 E189.40083
G1 X81.0 Y83.0 E189.5478
G1 X79.0 Y83.0 E189.7478
G1 X78.0 Y82.0 E189.88922
G1 X80.0 Y78.0 E190.11372
G1 X79.0 Y77.0 E190.2607
G1 X78.0 Y77.0 E190.3607
G1 X78.0 Y77.0
G1 X77.0 Y77.0 E190.47733
G1 X76.0 Y78.0 E190.61874
G1 X78.0 Y82.0 E190.84325
G1 X77.0 Y83.0 E190.99022
G1 X75.0 Y83.0 E191.19022
G1 X74.0 Y82.0 E191.33163
G1 X76.0 Y78.0 E191.55614
G1 X75.0 Y77.0 E191.70311
G1 X74.0 Y77.0 E191.80312
G1 X74.0 Y77.0
G1 X73.0 Y77.0 E191.91974
G1 X72.0 Y78.0 E192.06116
G1 X74.0 Y82.0 E192.28566
G1 X73.0 Y83.0 E192.43263
G1 X71.0 Y83.0 E192.63263
G1 X70.0 Y82.0 E192.77405
G1 X72.0 Y78.0 E192.99855
G1 X71.0 Y77.0 E193.14552
G1 X70.0 Y77.0 E193.24553
G1 X70.0 Y77.0
G1 X69.0 Y77.0 E193.36215
G1 X68.0 Y78.0 E193.50357
G1 X70.0 Y82.0 E193.72807
G1 X69.0 Y83.0 E193.87505
G1 X67.0 Y83.0 E194.07504
G1 X66.0 Y82.0 E194.21646
G1 X68.0 Y78.0 E194.44096
G1 X67.0 Y77.0 E194.58794
G1 X66.0 Y77.0 E194.68794
G1 X66.0 Y77.0
G1 X65.0 Y77.0 E194.80457
G1 X64.0 Y78.0 E194.94598
G1 X66.0 Y82.0 E195.17049
G1 X65.0 Y83.0 E195.31746
G1 X63.0 Y83.0 E195.51746
G1 X62.0 Y82.0 E195.65887
G1 X64.0 Y78.0 E195.88338
G1 X63.0 Y77.0 E196.03035
G1 X62.0 Y77.0 E196.13036
G1 X62.0 Y77.0
G1 X61.0 Y77.0 E196.24698
G1 X60.0 Y78.0 E196.3884
G1 X62.0 Y82.0 E196.6129
G1 X61.0 Y83.0 E196.75987
G1 X59.0 Y83.0 E196.95987
G1 X58.0 Y82.0 E197.10129
G1 X60.0 Y78.0 E197.32579
G1 X59.0 Y77.0 E197.47276
G1 X58.0 Y77.0 E197.57277
G1 X58.0 Y77.0
G1 X57.0 Y77.0 E197.68939
G1 X56.0 Y78.0 E197.83081
G1 X58.0 Y82.0 E198.05531
G1 X57.0 Y83.0 E198.20229
G1 X55.0 Y83.0 E198.40228
G1 X54.0 Y82.0 E198.5437
G1 X56.0 Y78.0 E198.7682
G1 X55.0 Y77.0 E198.91518
G1 X54.0 Y77.0 E199.01518
G1 X54.0 Y77.0
G1 X53.0 Y77.0 E199.1318
G1 X52.0 Y78.0 E199.27322
G1 X54.0 Y82.0 E199.49773
G1 X53.0 Y83.0 E199.6447
G1 X51.0 Y83.0 E199.8447
G1 X50.0 Y82.0 E199.98611
G1 X52.0 Y78.0 E200.21062
G1 X51.0 Y77.0 E200.35759
G1 X50.0 Y77.0 E200.4576
G1 X50.0 Y80.0 E200.60793
G1 X50.0 Y80.0
G1 X51.0 Y80.0 E200.72455
G1 X52.0 Y81.0 E200.86597
G1 X50.0 Y85.0 E201.09047
G1 X51.0 Y86.0 E201.23744
G1 X53.0 Y86.0 E201.43744
G1 X54.0 Y85.0 E201.57886
G1 X52.0 Y81.0 E201.80336
G1 X53.0 Y80.0 E201.95033
G1 X54.0 Y80.0 E202.05034
G1 X54.0 Y80.0
G1 X55.0 Y80.0 E202.16696
G1 X56.0 Y81.0 E202.30838
G1 X54.0 Y85.0 E202.53288
G1 X55.0 Y86.0 E202.67986
G1 X57.0 Y86.0 E202.87985
G1 X58.0 Y85.0 E203.02127
G1 X56.0 Y81.0 E203.24577
G1 X57.0 Y80.0 E203.39275
G1 X58.0 Y80.0 E203.49275
G1 X58.0 Y80.0
G1 X59.0 Y80.0 E203.60938
G1 X60.0 Y81.0 E203.7508
G1 X58.0 Y85.0 E203.9753
G1 X59.0 Y86.0 E204.12227
G1 X61.0 Y86.0 E204.32227
G1 X62.0 Y85.0 E204.46368
G1 X60.0 Y81.0 E204.68819
G1 X61.0 Y80.0 E204.83516
G1 X62.0 Y80.0 E204.93517
G1 X62.0 Y80.0
G1 X63.0 Y80.0 E205.05179
G1 X64.0 Y81.0 E205.1932
G1 X62.0 Y85.0 E205.41771
G1 X63.0 Y86.0 E205.56468
G1 X65.0 Y86.0 E205.76468
G1 X66.0 Y85.0 E205.9061
G1 X64.0 Y81.0 E206.1306
G1 X65.0 Y80.0 E206.27757
G1 X66.0 Y80.0 E206.37758
G1 X66.0 Y80.0
G1 X67.0 Y80.0 E206.4942
G1 X68.0 Y81.0 E206.63562
G1 X66.0 Y85.0 E206.86012
G1 X67.0 Y86.0 E207.0071
G1 X69.0 Y86.0 E207.20709
G1 X70.0 Y85.0 E207.34851
G1 X68.0 Y81.0 E207.57301
G1 X69.0 Y80.0 E207.71999
G1 X70.0 Y80.0 E207.81999
G1 X70.0 Y80.0
G1 X71.0 Y80.0 E207.93661
G1 X72.0 Y81.0 E208.07803
G1 X70.0 Y85.0 E208.30254
G1 X71.0 Y86.0 E208.44951
G1 X73.0 Y86.0 E208.6495
G1 X74.0 Y85.0 E208.79092
G1 X72.0 Y81.0 E209.01543
G1 X73.0 Y80.0 E209.1624
G1 X74.0 Y80.0 E209.2624
G1 X74.0 Y80.0
G1 X75.0 Y80.0 E209.37903
G1 X76.0 Y81.0 E209.52045
G1 X74.0 Y85.0 E209.74495
G1 X75.0 Y86.0 E209.89192
G1 X77.0 Y86.0 E210.09192
G1 X78.0 Y85.0 E210.23334
G1 X76.0 Y81.0 E210.45784
G1 X77.0 Y80.0 E210.60481
G1 X78.0 Y80.0 E210.70482
G1 X78.0 Y80.0
G1 X79.0 Y80.0 E210.82144
G1 X80.0 Y81.0 E210.96286
G1 X78.0 Y85.0 E211.18736
G1 X79.0 Y86.0 E211.33434
G1 X81.0 Y86.0 E211.53433
G1 X82.0 Y85.0 E211.67575
G1 X80.0 Y81.0 E211.90025
G1 X81.0 Y80.0 E212.04723
G1 X82.0 Y80.0 E212.14723
G1 X82.0 Y80.0
G1 X83.0 Y80.0 E212.26385
G1 X84.0 Y81.0 E212.40527
G1 X82.0 Y85.0 E212.62978
G1 X83.0 Y86.0 E212.77675
G1 X85.0 Y86.0 E212.97675
G1 X86.0 Y85.0 E213.11816
G1 X84.0 Y81.0 E213.34267
G1 X85.0 Y80.0 E213.48964
G1 X86.0 Y80.0 E213.58965
G1 X86.0 Y80.0
G1 X87.0 Y80.0 E213.70627
G1 X88.0 Y81.0 E213.84769
G1 X86.0 Y85.0 E214.07219
G1 X87.0 Y86.0 E214.21916
G1 X89.0 Y86.0 E214.41916
G1 X90.0 Y85.0 E214.56058
G1 X88.0 Y81.0 E214.78508
G1 X89.0 Y80.0 E214.93205
G1 X90.0 Y80.0 E215.03206
G1 X90.0 Y80.0
G1 X91.0 Y80.0 E215.14868
G1 X92.0 Y81.0 E215.2901
G1 X90.0 Y85.0 E215.5146
G1 X91.0 Y86.0 E215.66158
G1 X93.0 Y86.0 E215.86157
G1 X94.0 Y85.0 E216.00299
G1 X92.0 Y81.0 E216.2275
G1 X93.0 Y80.0 E216.37447
G1 X94.0 Y80.0 E216.47447
G1 X94.0 Y83.0 E216.6248
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning