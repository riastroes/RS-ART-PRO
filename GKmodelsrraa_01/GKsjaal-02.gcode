;Project: Generate Knitting
;Ria Stroes
;start code
M140 S70.000000
M109 T0 S210.000000
T0
M190 S70          ;bed temperature on
M109 S220          ;extruder temperature on
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
G1 X11.6 Y11.6
G1 X11.6 Y172.40001 E16.08
G1 X12.400001 Y172.40001 E16.16
G1 X12.400001 Y11.6 E32.239998
G1 X11.8 Y11.8 E32.30324
G1 X11.8 Y172.2 E48.343243
G1 X12.2 Y172.2 E48.383244
G1 X12.2 Y11.8 E64.42325
G1 X12.0 Y12.0 E64.45153
G1 F1200.0
G1 Z1
G1 Z0.25 X0.0 Y0.0
;start knitting
G1 F800.0
G1 Z0.35 X0.0 Y0.0
G1 Z0.35 X1.0 Y1.0
G1 Z0.35 X20.0 Y20.0 E68.29861
G1 Z0.35 X24.0 Y24.0 E69.09057
G1 Z0.35 X20.0 Y32.0 E70.342766
G1 Z0.35 X24.0 Y36.0 E71.13473
G1 Z0.35 X28.0 Y32.0 E71.92669
G1 Z0.35 X24.0 Y24.0 E73.17889
G1 Z0.35 X28.0 Y20.0 E73.97085
G1 Z0.35 X32.0 Y24.0 E74.76281
G1 Z0.35 X28.0 Y32.0 E76.01501
G1 Z0.35 X32.0 Y36.0 E76.80697
G1 Z0.35 X36.0 Y32.0 E77.59893
G1 Z0.35 X32.0 Y24.0 E78.85113
G1 Z0.35 X36.0 Y20.0 E79.64309
G1 Z0.35 X40.0 Y24.0 E80.43505
G1 Z0.35 X36.0 Y32.0 E81.68725
G1 Z0.35 X40.0 Y36.0 E82.47921
G1 Z0.35 X44.0 Y32.0 E83.27117
G1 Z0.35 X40.0 Y24.0 E84.52337
G1 Z0.35 X44.0 Y20.0 E85.31533
G1 Z0.35 X48.0 Y24.0 E86.10729
G1 Z0.35 X44.0 Y32.0 E87.35949
G1 Z0.35 X48.0 Y36.0 E88.15145
G1 Z0.35 X52.0 Y32.0 E88.94341
G1 Z0.35 X48.0 Y24.0 E90.19561
G1 Z0.35 X52.0 Y20.0 E90.98757
G1 Z0.35 X56.0 Y24.0 E91.77953
G1 Z0.35 X52.0 Y32.0 E93.03173
G1 Z0.35 X56.0 Y36.0 E93.82369
G1 Z0.35 X60.0 Y32.0 E94.615654
G1 Z0.35 X56.0 Y24.0 E95.86785
G1 Z0.35 X60.0 Y20.0 E96.65981
G1 Z0.35 X64.0 Y24.0 E97.451775
G1 Z0.35 X60.0 Y32.0 E98.70397
G1 Z0.35 X64.0 Y36.0 E99.49593
G1 Z0.35 X68.0 Y32.0 E100.287895
G1 Z0.35 X64.0 Y24.0 E101.54009
G1 Z0.35 X68.0 Y20.0 E102.332054
G1 Z0.35 X72.0 Y24.0 E103.124016
G1 Z0.35 X68.0 Y32.0 E104.37621
G1 Z0.35 X72.0 Y36.0 E105.168175
G1 Z0.35 X76.0 Y32.0 E105.96014
G1 Z0.35 X72.0 Y24.0 E107.21233
G1 Z0.35 X76.0 Y20.0 E108.004295
G1 Z0.35 X80.0 Y24.0 E108.79626
G1 Z0.35 X76.0 Y32.0 E110.048454
G1 Z0.35 X80.0 Y36.0 E110.840416
G1 Z0.35 X84.0 Y32.0 E111.63238
G1 Z0.35 X80.0 Y24.0 E112.884575
G1 Z0.35 X84.0 Y20.0 E113.67654
G1 Z0.35 X84.0 Y28.0 E114.79654
G1 Z0.35 X80.0 Y32.0 E115.5885
G1 Z0.35 X84.0 Y40.0 E116.8407
G1 Z0.35 X80.0 Y44.0 E117.63266
G1 Z0.35 X76.0 Y40.0 E118.42462
G1 Z0.35 X80.0 Y32.0 E119.67682
G1 Z0.35 X76.0 Y28.0 E120.46878
G1 Z0.35 X72.0 Y32.0 E121.26074
G1 Z0.35 X76.0 Y40.0 E122.51294
G1 Z0.35 X72.0 Y44.0 E123.3049
G1 Z0.35 X68.0 Y40.0 E124.09686
G1 Z0.35 X72.0 Y32.0 E125.34906
G1 Z0.35 X68.0 Y28.0 E126.14102
G1 Z0.35 X64.0 Y32.0 E126.93298
G1 Z0.35 X68.0 Y40.0 E128.18518
G1 Z0.35 X64.0 Y44.0 E128.97714
G1 Z0.35 X60.0 Y40.0 E129.7691
G1 Z0.35 X64.0 Y32.0 E131.0213
G1 Z0.35 X60.0 Y28.0 E131.81326
G1 Z0.35 X56.0 Y32.0 E132.60522
G1 Z0.35 X60.0 Y40.0 E133.85742
G1 Z0.35 X56.0 Y44.0 E134.64938
G1 Z0.35 X52.0 Y40.0 E135.44135
G1 Z0.35 X56.0 Y32.0 E136.69354
G1 Z0.35 X52.0 Y28.0 E137.4855
G1 Z0.35 X48.0 Y32.0 E138.27747
G1 Z0.35 X52.0 Y40.0 E139.52966
G1 Z0.35 X48.0 Y44.0 E140.32162
G1 Z0.35 X44.0 Y40.0 E141.11359
G1 Z0.35 X48.0 Y32.0 E142.36578
G1 Z0.35 X44.0 Y28.0 E143.15775
G1 Z0.35 X40.0 Y32.0 E143.9497
G1 Z0.35 X44.0 Y40.0 E145.2019
G1 Z0.35 X40.0 Y44.0 E145.99387
G1 Z0.35 X36.0 Y40.0 E146.78583
G1 Z0.35 X40.0 Y32.0 E148.03802
G1 Z0.35 X36.0 Y28.0 E148.82999
G1 Z0.35 X32.0 Y32.0 E149.62195
G1 Z0.35 X36.0 Y40.0 E150.87415
G1 Z0.35 X32.0 Y44.0 E151.6661
G1 Z0.35 X28.0 Y40.0 E152.45807
G1 Z0.35 X32.0 Y32.0 E153.71027
G1 Z0.35 X28.0 Y28.0 E154.50223
G1 Z0.35 X24.0 Y32.0 E155.29419
G1 Z0.35 X28.0 Y40.0 E156.54639
G1 Z0.35 X24.0 Y44.0 E157.33835
G1 Z0.35 X20.0 Y40.0 E158.13031
G1 Z0.35 X24.0 Y32.0 E159.3825
G1 Z0.35 X20.0 Y28.0 E160.17447
G1 Z0.35 X20.0 Y36.0 E161.29446
G1 Z0.35 X24.0 Y40.0 E162.08643
G1 Z0.35 X20.0 Y48.0 E163.33862
G1 Z0.35 X24.0 Y52.0 E164.13058
G1 Z0.35 X28.0 Y48.0 E164.92255
G1 Z0.35 X24.0 Y40.0 E166.17474
G1 Z0.35 X28.0 Y36.0 E166.9667
G1 Z0.35 X32.0 Y40.0 E167.75867
G1 Z0.35 X28.0 Y48.0 E169.01086
G1 Z0.35 X32.0 Y52.0 E169.80283
G1 Z0.35 X36.0 Y48.0 E170.59479
G1 Z0.35 X32.0 Y40.0 E171.84698
G1 Z0.35 X36.0 Y36.0 E172.63895
G1 Z0.35 X40.0 Y40.0 E173.43091
G1 Z0.35 X36.0 Y48.0 E174.6831
G1 Z0.35 X40.0 Y52.0 E175.47507
G1 Z0.35 X44.0 Y48.0 E176.26703
G1 Z0.35 X40.0 Y40.0 E177.51923
G1 Z0.35 X44.0 Y36.0 E178.31119
G1 Z0.35 X48.0 Y40.0 E179.10315
G1 Z0.35 X44.0 Y48.0 E180.35535
G1 Z0.35 X48.0 Y52.0 E181.14731
G1 Z0.35 X52.0 Y48.0 E181.93927
G1 Z0.35 X48.0 Y40.0 E183.19147
G1 Z0.35 X52.0 Y36.0 E183.98343
G1 Z0.35 X56.0 Y40.0 E184.77539
G1 Z0.35 X52.0 Y48.0 E186.02759
G1 Z0.35 X56.0 Y52.0 E186.81955
G1 Z0.35 X60.0 Y48.0 E187.61151
G1 Z0.35 X56.0 Y40.0 E188.86371
G1 Z0.35 X60.0 Y36.0 E189.65567
G1 Z0.35 X64.0 Y40.0 E190.44763
G1 Z0.35 X60.0 Y48.0 E191.69983
G1 Z0.35 X64.0 Y52.0 E192.49179
G1 Z0.35 X68.0 Y48.0 E193.28375
G1 Z0.35 X64.0 Y40.0 E194.53595
G1 Z0.35 X68.0 Y36.0 E195.32791
G1 Z0.35 X72.0 Y40.0 E196.11987
G1 Z0.35 X68.0 Y48.0 E197.37207
G1 Z0.35 X72.0 Y52.0 E198.16403
G1 Z0.35 X76.0 Y48.0 E198.956
G1 Z0.35 X72.0 Y40.0 E200.20819
G1 Z0.35 X76.0 Y36.0 E201.00015
G1 Z0.35 X80.0 Y40.0 E201.79211
G1 Z0.35 X76.0 Y48.0 E203.04431
G1 Z0.35 X80.0 Y52.0 E203.83627
G1 Z0.35 X84.0 Y48.0 E204.62823
G1 Z0.35 X80.0 Y40.0 E205.88043
G1 Z0.35 X84.0 Y36.0 E206.6724
G1 Z0.35 X84.0 Y44.0 E207.79239
G1 Z0.35 X80.0 Y48.0 E208.58435
G1 Z0.35 X84.0 Y56.0 E209.83655
G1 Z0.35 X80.0 Y60.0 E210.62851
G1 Z0.35 X76.0 Y56.0 E211.42047
G1 Z0.35 X80.0 Y48.0 E212.67267
G1 Z0.35 X76.0 Y44.0 E213.46463
G1 Z0.35 X72.0 Y48.0 E214.25659
G1 Z0.35 X76.0 Y56.0 E215.50879
G1 Z0.35 X72.0 Y60.0 E216.30075
G1 Z0.35 X68.0 Y56.0 E217.09271
G1 Z0.35 X72.0 Y48.0 E218.34491
G1 Z0.35 X68.0 Y44.0 E219.13687
G1 Z0.35 X64.0 Y48.0 E219.92883
G1 Z0.35 X68.0 Y56.0 E221.18103
G1 Z0.35 X64.0 Y60.0 E221.97299
G1 Z0.35 X60.0 Y56.0 E222.76495
G1 Z0.35 X64.0 Y48.0 E224.01715
G1 Z0.35 X60.0 Y44.0 E224.80911
G1 Z0.35 X56.0 Y48.0 E225.60107
G1 Z0.35 X60.0 Y56.0 E226.85327
G1 Z0.35 X56.0 Y60.0 E227.64523
G1 Z0.35 X52.0 Y56.0 E228.4372
G1 Z0.35 X56.0 Y48.0 E229.68939
G1 Z0.35 X52.0 Y44.0 E230.48135
G1 Z0.35 X48.0 Y48.0 E231.27332
G1 Z0.35 X52.0 Y56.0 E232.52551
G1 Z0.35 X48.0 Y60.0 E233.31747
G1 Z0.35 X44.0 Y56.0 E234.10944
G1 Z0.35 X48.0 Y48.0 E235.36163
G1 Z0.35 X44.0 Y44.0 E236.1536
G1 Z0.35 X40.0 Y48.0 E236.94556
G1 Z0.35 X44.0 Y56.0 E238.19775
G1 Z0.35 X40.0 Y60.0 E238.98972
G1 Z0.35 X36.0 Y56.0 E239.78168
G1 Z0.35 X40.0 Y48.0 E241.03387
G1 Z0.35 X36.0 Y44.0 E241.82584
G1 Z0.35 X32.0 Y48.0 E242.6178
G1 Z0.35 X36.0 Y56.0 E243.87
G1 Z0.35 X32.0 Y60.0 E244.66196
G1 Z0.35 X28.0 Y56.0 E245.45392
G1 Z0.35 X32.0 Y48.0 E246.70612
G1 Z0.35 X28.0 Y44.0 E247.49808
G1 Z0.35 X24.0 Y48.0 E248.29004
G1 Z0.35 X28.0 Y56.0 E249.54224
G1 Z0.35 X24.0 Y60.0 E250.3342
G1 Z0.35 X20.0 Y56.0 E251.12616
G1 Z0.35 X24.0 Y48.0 E252.37836
G1 Z0.35 X20.0 Y44.0 E253.17032
G1 Z0.35 X20.0 Y52.0 E254.29031
G1 Z0.35 X24.0 Y56.0 E255.08228
G1 Z0.35 X20.0 Y64.0 E256.33447
G1 Z0.35 X24.0 Y68.0 E257.12643
G1 Z0.35 X28.0 Y64.0 E257.9184
G1 Z0.35 X24.0 Y56.0 E259.1706
G1 Z0.35 X28.0 Y52.0 E259.96255
G1 Z0.35 X32.0 Y56.0 E260.75452
G1 Z0.35 X28.0 Y64.0 E262.0067
G1 Z0.35 X32.0 Y68.0 E262.79868
G1 Z0.35 X36.0 Y64.0 E263.59064
G1 Z0.35 X32.0 Y56.0 E264.84283
G1 Z0.35 X36.0 Y52.0 E265.6348
G1 Z0.35 X40.0 Y56.0 E266.42676
G1 Z0.35 X36.0 Y64.0 E267.67896
G1 Z0.35 X40.0 Y68.0 E268.47092
G1 Z0.35 X44.0 Y64.0 E269.26288
G1 Z0.35 X40.0 Y56.0 E270.51508
G1 Z0.35 X44.0 Y52.0 E271.30704
G1 Z0.35 X48.0 Y56.0 E272.099
G1 Z0.35 X44.0 Y64.0 E273.3512
G1 Z0.35 X48.0 Y68.0 E274.14316
G1 Z0.35 X52.0 Y64.0 E274.93512
G1 Z0.35 X48.0 Y56.0 E276.18732
G1 Z0.35 X52.0 Y52.0 E276.97928
G1 Z0.35 X56.0 Y56.0 E277.77124
G1 Z0.35 X52.0 Y64.0 E279.02344
G1 Z0.35 X56.0 Y68.0 E279.8154
G1 Z0.35 X60.0 Y64.0 E280.60736
G1 Z0.35 X56.0 Y56.0 E281.85956
G1 Z0.35 X60.0 Y52.0 E282.65152
G1 Z0.35 X64.0 Y56.0 E283.44348
G1 Z0.35 X60.0 Y64.0 E284.69568
G1 Z0.35 X64.0 Y68.0 E285.48764
G1 Z0.35 X68.0 Y64.0 E286.2796
G1 Z0.35 X64.0 Y56.0 E287.5318
G1 Z0.35 X68.0 Y52.0 E288.32376
G1 Z0.35 X72.0 Y56.0 E289.11572
G1 Z0.35 X68.0 Y64.0 E290.36792
G1 Z0.35 X72.0 Y68.0 E291.15988
G1 Z0.35 X76.0 Y64.0 E291.95184
G1 Z0.35 X72.0 Y56.0 E293.20404
G1 Z0.35 X76.0 Y52.0 E293.996
G1 Z0.35 X80.0 Y56.0 E294.78796
G1 Z0.35 X76.0 Y64.0 E296.04016
G1 Z0.35 X80.0 Y68.0 E296.83212
G1 Z0.35 X84.0 Y64.0 E297.62408
G1 Z0.35 X80.0 Y56.0 E298.87628
G1 Z0.35 X84.0 Y52.0 E299.66824
G1 Z0.35 X84.0 Y60.0 E300.78824
G1 Z0.35 X80.0 Y64.0 E301.5802
G1 Z0.35 X84.0 Y72.0 E302.8324
G1 Z0.35 X80.0 Y76.0 E303.62436
G1 Z0.35 X76.0 Y72.0 E304.41632
G1 Z0.35 X80.0 Y64.0 E305.66852
G1 Z0.35 X76.0 Y60.0 E306.46048
G1 Z0.35 X72.0 Y64.0 E307.25244
G1 Z0.35 X76.0 Y72.0 E308.50464
G1 Z0.35 X72.0 Y76.0 E309.2966
G1 Z0.35 X68.0 Y72.0 E310.08856
G1 Z0.35 X72.0 Y64.0 E311.34076
G1 Z0.35 X68.0 Y60.0 E312.13272
G1 Z0.35 X64.0 Y64.0 E312.92468
G1 Z0.35 X68.0 Y72.0 E314.17688
G1 Z0.35 X64.0 Y76.0 E314.96884
G1 Z0.35 X60.0 Y72.0 E315.7608
G1 Z0.35 X64.0 Y64.0 E317.013
G1 Z0.35 X60.0 Y60.0 E317.80496
G1 Z0.35 X56.0 Y64.0 E318.59692
G1 Z0.35 X60.0 Y72.0 E319.84912
G1 Z0.35 X56.0 Y76.0 E320.64108
G1 Z0.35 X52.0 Y72.0 E321.43304
G1 Z0.35 X56.0 Y64.0 E322.68524
G1 Z0.35 X52.0 Y60.0 E323.4772
G1 Z0.35 X48.0 Y64.0 E324.26917
G1 Z0.35 X52.0 Y72.0 E325.52136
G1 Z0.35 X48.0 Y76.0 E326.31332
G1 Z0.35 X44.0 Y72.0 E327.1053
G1 Z0.35 X48.0 Y64.0 E328.35748
G1 Z0.35 X44.0 Y60.0 E329.14944
G1 Z0.35 X40.0 Y64.0 E329.9414
G1 Z0.35 X44.0 Y72.0 E331.1936
G1 Z0.35 X40.0 Y76.0 E331.98557
G1 Z0.35 X36.0 Y72.0 E332.77753
G1 Z0.35 X40.0 Y64.0 E334.02972
G1 Z0.35 X36.0 Y60.0 E334.8217
G1 Z0.35 X32.0 Y64.0 E335.61365
G1 Z0.35 X36.0 Y72.0 E336.86584
G1 Z0.35 X32.0 Y76.0 E337.6578
G1 Z0.35 X28.0 Y72.0 E338.44977
G1 Z0.35 X32.0 Y64.0 E339.70197
G1 Z0.35 X28.0 Y60.0 E340.49393
G1 Z0.35 X24.0 Y64.0 E341.2859
G1 Z0.35 X28.0 Y72.0 E342.5381
G1 Z0.35 X24.0 Y76.0 E343.33005
G1 Z0.35 X20.0 Y72.0 E344.122
G1 Z0.35 X24.0 Y64.0 E345.3742
G1 Z0.35 X20.0 Y60.0 E346.16617
G1 Z0.35 X20.0 Y68.0 E347.28616
G1 Z0.35 X24.0 Y72.0 E348.07812
G1 Z0.35 X20.0 Y80.0 E349.33032
G1 Z0.35 X24.0 Y84.0 E350.12228
G1 Z0.35 X28.0 Y80.0 E350.91425
G1 Z0.35 X24.0 Y72.0 E352.16644
G1 Z0.35 X28.0 Y68.0 E352.9584
G1 Z0.35 X32.0 Y72.0 E353.75037
G1 Z0.35 X28.0 Y80.0 E355.00256
G1 Z0.35 X32.0 Y84.0 E355.79453
G1 Z0.35 X36.0 Y80.0 E356.5865
G1 Z0.35 X32.0 Y72.0 E357.83868
G1 Z0.35 X36.0 Y68.0 E358.63065
G1 Z0.35 X40.0 Y72.0 E359.4226
G1 Z0.35 X36.0 Y80.0 E360.6748
G1 Z0.35 X40.0 Y84.0 E361.46677
G1 Z0.35 X44.0 Y80.0 E362.25873
G1 Z0.35 X40.0 Y72.0 E363.51093
G1 Z0.35 X44.0 Y68.0 E364.3029
G1 Z0.35 X48.0 Y72.0 E365.09485
G1 Z0.35 X44.0 Y80.0 E366.34705
G1 Z0.35 X48.0 Y84.0 E367.139
G1 Z0.35 X52.0 Y80.0 E367.93097
G1 Z0.35 X48.0 Y72.0 E369.18317
G1 Z0.35 X52.0 Y68.0 E369.97513
G1 Z0.35 X56.0 Y72.0 E370.7671
G1 Z0.35 X52.0 Y80.0 E372.0193
G1 Z0.35 X56.0 Y84.0 E372.81125
G1 Z0.35 X60.0 Y80.0 E373.6032
G1 Z0.35 X56.0 Y72.0 E374.8554
G1 Z0.35 X60.0 Y68.0 E375.64737
G1 Z0.35 X64.0 Y72.0 E376.43933
G1 Z0.35 X60.0 Y80.0 E377.69153
G1 Z0.35 X64.0 Y84.0 E378.4835
G1 Z0.35 X68.0 Y80.0 E379.27545
G1 Z0.35 X64.0 Y72.0 E380.52765
G1 Z0.35 X68.0 Y68.0 E381.3196
G1 Z0.35 X72.0 Y72.0 E382.11157
G1 Z0.35 X68.0 Y80.0 E383.36377
G1 Z0.35 X72.0 Y84.0 E384.15573
G1 Z0.35 X76.0 Y80.0 E384.9477
G1 Z0.35 X72.0 Y72.0 E386.1999
G1 Z0.35 X76.0 Y68.0 E386.99185
G1 Z0.35 X80.0 Y72.0 E387.7838
G1 Z0.35 X76.0 Y80.0 E389.036
G1 Z0.35 X80.0 Y84.0 E389.82797
G1 Z0.35 X84.0 Y80.0 E390.61993
G1 Z0.35 X80.0 Y72.0 E391.87213
G1 Z0.35 X84.0 Y68.0 E392.6641
G1 Z0.35 X84.0 Y76.0 E393.7841
G1 Z0.35 X80.0 Y80.0 E394.57605
G1 Z0.35 X84.0 Y88.0 E395.82825
G1 Z0.35 X80.0 Y92.0 E396.6202
G1 Z0.35 X76.0 Y88.0 E397.41217
G1 Z0.35 X80.0 Y80.0 E398.66437
G1 Z0.35 X76.0 Y76.0 E399.45633
G1 Z0.35 X72.0 Y80.0 E400.2483
G1 Z0.35 X76.0 Y88.0 E401.5005
G1 Z0.35 X72.0 Y92.0 E402.29245
G1 Z0.35 X68.0 Y88.0 E403.0844
G1 Z0.35 X72.0 Y80.0 E404.3366
G1 Z0.35 X68.0 Y76.0 E405.12857
G1 Z0.35 X64.0 Y80.0 E405.92053
G1 Z0.35 X68.0 Y88.0 E407.17273
G1 Z0.35 X64.0 Y92.0 E407.9647
G1 Z0.35 X60.0 Y88.0 E408.75665
G1 Z0.35 X64.0 Y80.0 E410.00885
G1 Z0.35 X60.0 Y76.0 E410.8008
G1 Z0.35 X56.0 Y80.0 E411.59277
G1 Z0.35 X60.0 Y88.0 E412.84497
G1 Z0.35 X56.0 Y92.0 E413.63693
G1 Z0.35 X52.0 Y88.0 E414.4289
G1 Z0.35 X56.0 Y80.0 E415.6811
G1 Z0.35 X52.0 Y76.0 E416.47305
G1 Z0.35 X48.0 Y80.0 E417.265
G1 Z0.35 X52.0 Y88.0 E418.5172
G1 Z0.35 X48.0 Y92.0 E419.30917
G1 Z0.35 X44.0 Y88.0 E420.10114
G1 Z0.35 X48.0 Y80.0 E421.35333
G1 Z0.35 X44.0 Y76.0 E422.1453
G1 Z0.35 X40.0 Y80.0 E422.93726
G1 Z0.35 X44.0 Y88.0 E424.18945
G1 Z0.35 X40.0 Y92.0 E424.9814
G1 Z0.35 X36.0 Y88.0 E425.77338
G1 Z0.35 X40.0 Y80.0 E427.02557
G1 Z0.35 X36.0 Y76.0 E427.81754
G1 Z0.35 X32.0 Y80.0 E428.6095
G1 Z0.35 X36.0 Y88.0 E429.8617
G1 Z0.35 X32.0 Y92.0 E430.65366
G1 Z0.35 X28.0 Y88.0 E431.44562
G1 Z0.35 X32.0 Y80.0 E432.6978
G1 Z0.35 X28.0 Y76.0 E433.48978
G1 Z0.35 X24.0 Y80.0 E434.28174
G1 Z0.35 X28.0 Y88.0 E435.53394
G1 Z0.35 X24.0 Y92.0 E436.3259
G1 Z0.35 X20.0 Y88.0 E437.11786
G1 Z0.35 X24.0 Y80.0 E438.37006
G1 Z0.35 X20.0 Y76.0 E439.16202
G1 Z0.35 X20.0 Y84.0 E440.282
G1 Z0.35 X24.0 Y88.0 E441.07397
G1 Z0.35 X20.0 Y96.0 E442.32617
G1 Z0.35 X24.0 Y100.0 E443.11813
G1 Z0.35 X28.0 Y96.0 E443.9101
G1 Z0.35 X24.0 Y88.0 E445.1623
G1 Z0.35 X28.0 Y84.0 E445.95425
G1 Z0.35 X32.0 Y88.0 E446.74622
G1 Z0.35 X28.0 Y96.0 E447.9984
G1 Z0.35 X32.0 Y100.0 E448.79037
G1 Z0.35 X36.0 Y96.0 E449.58234
G1 Z0.35 X32.0 Y88.0 E450.83453
G1 Z0.35 X36.0 Y84.0 E451.6265
G1 Z0.35 X40.0 Y88.0 E452.41846
G1 Z0.35 X36.0 Y96.0 E453.67065
G1 Z0.35 X40.0 Y100.0 E454.46262
G1 Z0.35 X44.0 Y96.0 E455.25458
G1 Z0.35 X40.0 Y88.0 E456.50677
G1 Z0.35 X44.0 Y84.0 E457.29874
G1 Z0.35 X48.0 Y88.0 E458.0907
G1 Z0.35 X44.0 Y96.0 E459.3429
G1 Z0.35 X48.0 Y100.0 E460.13486
G1 Z0.35 X52.0 Y96.0 E460.92682
G1 Z0.35 X48.0 Y88.0 E462.17902
G1 Z0.35 X52.0 Y84.0 E462.97098
G1 Z0.35 X56.0 Y88.0 E463.76294
G1 Z0.35 X52.0 Y96.0 E465.01514
G1 Z0.35 X56.0 Y100.0 E465.8071
G1 Z0.35 X60.0 Y96.0 E466.59906
G1 Z0.35 X56.0 Y88.0 E467.85126
G1 Z0.35 X60.0 Y84.0 E468.64322
G1 Z0.35 X64.0 Y88.0 E469.43518
G1 Z0.35 X60.0 Y96.0 E470.68738
G1 Z0.35 X64.0 Y100.0 E471.47934
G1 Z0.35 X68.0 Y96.0 E472.2713
G1 Z0.35 X64.0 Y88.0 E473.5235
G1 Z0.35 X68.0 Y84.0 E474.31546
G1 Z0.35 X72.0 Y88.0 E475.10742
G1 Z0.35 X68.0 Y96.0 E476.35962
G1 Z0.35 X72.0 Y100.0 E477.15158
G1 Z0.35 X76.0 Y96.0 E477.94354
G1 Z0.35 X72.0 Y88.0 E479.19574
G1 Z0.35 X76.0 Y84.0 E479.9877
G1 Z0.35 X80.0 Y88.0 E480.77966
G1 Z0.35 X76.0 Y96.0 E482.03186
G1 Z0.35 X80.0 Y100.0 E482.82382
G1 Z0.35 X84.0 Y96.0 E483.61578
G1 Z0.35 X80.0 Y88.0 E484.86798
G1 Z0.35 X84.0 Y84.0 E485.65994
G1 Z0.35 X84.0 Y92.0 E486.77994
G1 Z0.35 X80.0 Y96.0 E487.5719
G1 Z0.35 X84.0 Y104.0 E488.8241
G1 Z0.35 X80.0 Y108.0 E489.61606
G1 Z0.35 X76.0 Y104.0 E490.40802
G1 Z0.35 X80.0 Y96.0 E491.66022
G1 Z0.35 X76.0 Y92.0 E492.45218
G1 Z0.35 X72.0 Y96.0 E493.24414
G1 Z0.35 X76.0 Y104.0 E494.49634
G1 Z0.35 X72.0 Y108.0 E495.2883
G1 Z0.35 X68.0 Y104.0 E496.08026
G1 Z0.35 X72.0 Y96.0 E497.33246
G1 Z0.35 X68.0 Y92.0 E498.12442
G1 Z0.35 X64.0 Y96.0 E498.91638
G1 Z0.35 X68.0 Y104.0 E500.16858
G1 Z0.35 X64.0 Y108.0 E500.96054
G1 Z0.35 X60.0 Y104.0 E501.7525
G1 Z0.35 X64.0 Y96.0 E503.0047
G1 Z0.35 X60.0 Y92.0 E503.79666
G1 Z0.35 X56.0 Y96.0 E504.58862
G1 Z0.35 X60.0 Y104.0 E505.84082
G1 Z0.35 X56.0 Y108.0 E506.63278
G1 Z0.35 X52.0 Y104.0 E507.42474
G1 Z0.35 X56.0 Y96.0 E508.67694
G1 Z0.35 X52.0 Y92.0 E509.4689
G1 Z0.35 X48.0 Y96.0 E510.26086
G1 Z0.35 X52.0 Y104.0 E511.51306
G1 Z0.35 X48.0 Y108.0 E512.305
G1 Z0.35 X44.0 Y104.0 E513.0969
G1 Z0.35 X48.0 Y96.0 E514.3491
G1 Z0.35 X44.0 Y92.0 E515.14105
G1 Z0.35 X40.0 Y96.0 E515.933
G1 Z0.35 X44.0 Y104.0 E517.1852
G1 Z0.35 X40.0 Y108.0 E517.9771
G1 Z0.35 X36.0 Y104.0 E518.76904
G1 Z0.35 X40.0 Y96.0 E520.02124
G1 Z0.35 X36.0 Y92.0 E520.8132
G1 Z0.35 X32.0 Y96.0 E521.6051
G1 Z0.35 X36.0 Y104.0 E522.8573
G1 Z0.35 X32.0 Y108.0 E523.64923
G1 Z0.35 X28.0 Y104.0 E524.44116
G1 Z0.35 X32.0 Y96.0 E525.69336
G1 Z0.35 X28.0 Y92.0 E526.4853
G1 Z0.35 X24.0 Y96.0 E527.2772
G1 Z0.35 X28.0 Y104.0 E528.5294
G1 Z0.35 X24.0 Y108.0 E529.32135
G1 Z0.35 X20.0 Y104.0 E530.1133
G1 Z0.35 X24.0 Y96.0 E531.3655
G1 Z0.35 X20.0 Y92.0 E532.1574
G1 Z0.35 X20.0 Y100.0 E533.2774
G1 Z0.35 X24.0 Y104.0 E534.06934
G1 Z0.35 X20.0 Y112.0 E535.32153
G1 Z0.35 X24.0 Y116.0 E536.11346
G1 Z0.35 X28.0 Y112.0 E536.9054
G1 Z0.35 X24.0 Y104.0 E538.1576
G1 Z0.35 X28.0 Y100.0 E538.9495
G1 Z0.35 X32.0 Y104.0 E539.74146
G1 Z0.35 X28.0 Y112.0 E540.99365
G1 Z0.35 X32.0 Y116.0 E541.7856
G1 Z0.35 X36.0 Y112.0 E542.5775
G1 Z0.35 X32.0 Y104.0 E543.8297
G1 Z0.35 X36.0 Y100.0 E544.62164
G1 Z0.35 X40.0 Y104.0 E545.4136
G1 Z0.35 X36.0 Y112.0 E546.6658
G1 Z0.35 X40.0 Y116.0 E547.4577
G1 Z0.35 X44.0 Y112.0 E548.24963
G1 Z0.35 X40.0 Y104.0 E549.50183
G1 Z0.35 X44.0 Y100.0 E550.29376
G1 Z0.35 X48.0 Y104.0 E551.0857
G1 Z0.35 X44.0 Y112.0 E552.3379
G1 Z0.35 X48.0 Y116.0 E553.1298
G1 Z0.35 X52.0 Y112.0 E553.92175
G1 Z0.35 X48.0 Y104.0 E555.17395
G1 Z0.35 X52.0 Y100.0 E555.9659
G1 Z0.35 X56.0 Y104.0 E556.7578
G1 Z0.35 X52.0 Y112.0 E558.01
G1 Z0.35 X56.0 Y116.0 E558.80194
G1 Z0.35 X60.0 Y112.0 E559.5939
G1 Z0.35 X56.0 Y104.0 E560.84607
G1 Z0.35 X60.0 Y100.0 E561.638
G1 Z0.35 X64.0 Y104.0 E562.42993
G1 Z0.35 X60.0 Y112.0 E563.6821
G1 Z0.35 X64.0 Y116.0 E564.47406
G1 Z0.35 X68.0 Y112.0 E565.266
G1 Z0.35 X64.0 Y104.0 E566.5182
G1 Z0.35 X68.0 Y100.0 E567.3101
G1 Z0.35 X72.0 Y104.0 E568.10205
G1 Z0.35 X68.0 Y112.0 E569.35425
G1 Z0.35 X72.0 Y116.0 E570.1462
G1 Z0.35 X76.0 Y112.0 E570.9381
G1 Z0.35 X72.0 Y104.0 E572.1903
G1 Z0.35 X76.0 Y100.0 E572.98224
G1 Z0.35 X80.0 Y104.0 E573.7742
G1 Z0.35 X76.0 Y112.0 E575.02637
G1 Z0.35 X80.0 Y116.0 E575.8183
G1 Z0.35 X84.0 Y112.0 E576.6102
G1 Z0.35 X80.0 Y104.0 E577.8624
G1 Z0.35 X84.0 Y100.0 E578.65436
G1 Z0.35 X84.0 Y108.0 E579.77435
G1 Z0.35 X80.0 Y112.0 E580.5663
G1 Z0.35 X84.0 Y120.0 E581.8185
G1 Z0.35 X80.0 Y124.0 E582.6104
G1 Z0.35 X76.0 Y120.0 E583.40234
G1 Z0.35 X80.0 Y112.0 E584.65454
G1 Z0.35 X76.0 Y108.0 E585.4465
G1 Z0.35 X72.0 Y112.0 E586.2384
G1 Z0.35 X76.0 Y120.0 E587.4906
G1 Z0.35 X72.0 Y124.0 E588.28253
G1 Z0.35 X68.0 Y120.0 E589.07446
G1 Z0.35 X72.0 Y112.0 E590.32666
G1 Z0.35 X68.0 Y108.0 E591.1186
G1 Z0.35 X64.0 Y112.0 E591.9105
G1 Z0.35 X68.0 Y120.0 E593.1627
G1 Z0.35 X64.0 Y124.0 E593.95465
G1 Z0.35 X60.0 Y120.0 E594.7466
G1 Z0.35 X64.0 Y112.0 E595.9988
G1 Z0.35 X60.0 Y108.0 E596.7907
G1 Z0.35 X56.0 Y112.0 E597.58264
G1 Z0.35 X60.0 Y120.0 E598.83484
G1 Z0.35 X56.0 Y124.0 E599.6268
G1 Z0.35 X52.0 Y120.0 E600.4187
G1 Z0.35 X56.0 Y112.0 E601.6709
G1 Z0.35 X52.0 Y108.0 E602.4628
G1 Z0.35 X48.0 Y112.0 E603.25476
G1 Z0.35 X52.0 Y120.0 E604.50696
G1 Z0.35 X48.0 Y124.0 E605.2989
G1 Z0.35 X44.0 Y120.0 E606.0908
G1 Z0.35 X48.0 Y112.0 E607.343
G1 Z0.35 X44.0 Y108.0 E608.13495
G1 Z0.35 X40.0 Y112.0 E608.9269
G1 Z0.35 X44.0 Y120.0 E610.1791
G1 Z0.35 X40.0 Y124.0 E610.971
G1 Z0.35 X36.0 Y120.0 E611.76294
G1 Z0.35 X40.0 Y112.0 E613.01514
G1 Z0.35 X36.0 Y108.0 E613.80707
G1 Z0.35 X32.0 Y112.0 E614.599
G1 Z0.35 X36.0 Y120.0 E615.8512
G1 Z0.35 X32.0 Y124.0 E616.6431
G1 Z0.35 X28.0 Y120.0 E617.43506
G1 Z0.35 X32.0 Y112.0 E618.68726
G1 Z0.35 X28.0 Y108.0 E619.4792
G1 Z0.35 X24.0 Y112.0 E620.2711
G1 Z0.35 X28.0 Y120.0 E621.5233
G1 Z0.35 X24.0 Y124.0 E622.31525
G1 Z0.35 X20.0 Y120.0 E623.1072
G1 Z0.35 X24.0 Y112.0 E624.3594
G1 Z0.35 X20.0 Y108.0 E625.1513
G1 Z0.35 X20.0 Y116.0 E626.2713
G1 Z0.35 X24.0 Y120.0 E627.06323
G1 Z0.35 X20.0 Y128.0 E628.3154
G1 Z0.35 X24.0 Y132.0 E629.10736
G1 Z0.35 X28.0 Y128.0 E629.8993
G1 Z0.35 X24.0 Y120.0 E631.1515
G1 Z0.35 X28.0 Y116.0 E631.9434
G1 Z0.35 X32.0 Y120.0 E632.73535
G1 Z0.35 X28.0 Y128.0 E633.98755
G1 Z0.35 X32.0 Y132.0 E634.7795
G1 Z0.35 X36.0 Y128.0 E635.5714
G1 Z0.35 X32.0 Y120.0 E636.8236
G1 Z0.35 X36.0 Y116.0 E637.61554
G1 Z0.35 X40.0 Y120.0 E638.4075
G1 Z0.35 X36.0 Y128.0 E639.65967
G1 Z0.35 X40.0 Y132.0 E640.4516
G1 Z0.35 X44.0 Y128.0 E641.2435
G1 Z0.35 X40.0 Y120.0 E642.4957
G1 Z0.35 X44.0 Y116.0 E643.28766
G1 Z0.35 X48.0 Y120.0 E644.0796
G1 Z0.35 X44.0 Y128.0 E645.3318
G1 Z0.35 X48.0 Y132.0 E646.1237
G1 Z0.35 X52.0 Y128.0 E646.91565
G1 Z0.35 X48.0 Y120.0 E648.16785
G1 Z0.35 X52.0 Y116.0 E648.9598
G1 Z0.35 X56.0 Y120.0 E649.7517
G1 Z0.35 X52.0 Y128.0 E651.0039
G1 Z0.35 X56.0 Y132.0 E651.79584
G1 Z0.35 X60.0 Y128.0 E652.58777
G1 Z0.35 X56.0 Y120.0 E653.83997
G1 Z0.35 X60.0 Y116.0 E654.6319
G1 Z0.35 X64.0 Y120.0 E655.4238
G1 Z0.35 X60.0 Y128.0 E656.676
G1 Z0.35 X64.0 Y132.0 E657.46796
G1 Z0.35 X68.0 Y128.0 E658.2599
G1 Z0.35 X64.0 Y120.0 E659.5121
G1 Z0.35 X68.0 Y116.0 E660.304
G1 Z0.35 X72.0 Y120.0 E661.09595
G1 Z0.35 X68.0 Y128.0 E662.34814
G1 Z0.35 X72.0 Y132.0 E663.1401
G1 Z0.35 X76.0 Y128.0 E663.932
G1 Z0.35 X72.0 Y120.0 E665.1842
G1 Z0.35 X76.0 Y116.0 E665.97614
G1 Z0.35 X80.0 Y120.0 E666.76807
G1 Z0.35 X76.0 Y128.0 E668.02026
G1 Z0.35 X80.0 Y132.0 E668.8122
G1 Z0.35 X84.0 Y128.0 E669.6041
G1 Z0.35 X80.0 Y120.0 E670.8563
G1 Z0.35 X84.0 Y116.0 E671.64825
G1 Z0.35 X84.0 Y124.0 E672.76825
G1 Z0.35 X80.0 Y128.0 E673.5602
G1 Z0.35 X84.0 Y136.0 E674.8124
G1 Z0.35 X80.0 Y140.0 E675.6043
G1 Z0.35 X76.0 Y136.0 E676.39624
G1 Z0.35 X80.0 Y128.0 E677.64844
G1 Z0.35 X76.0 Y124.0 E678.44037
G1 Z0.35 X72.0 Y128.0 E679.2323
G1 Z0.35 X76.0 Y136.0 E680.4845
G1 Z0.35 X72.0 Y140.0 E681.2764
G1 Z0.35 X68.0 Y136.0 E682.06836
G1 Z0.35 X72.0 Y128.0 E683.32056
G1 Z0.35 X68.0 Y124.0 E684.1125
G1 Z0.35 X64.0 Y128.0 E684.9044
G1 Z0.35 X68.0 Y136.0 E686.1566
G1 Z0.35 X64.0 Y140.0 E686.94855
G1 Z0.35 X60.0 Y136.0 E687.7405
G1 Z0.35 X64.0 Y128.0 E688.9927
G1 Z0.35 X60.0 Y124.0 E689.7846
G1 Z0.35 X56.0 Y128.0 E690.57654
G1 Z0.35 X60.0 Y136.0 E691.82874
G1 Z0.35 X56.0 Y140.0 E692.62067
G1 Z0.35 X52.0 Y136.0 E693.4126
G1 Z0.35 X56.0 Y128.0 E694.6648
G1 Z0.35 X52.0 Y124.0 E695.4567
G1 Z0.35 X48.0 Y128.0 E696.24866
G1 Z0.35 X52.0 Y136.0 E697.50085
G1 Z0.35 X48.0 Y140.0 E698.2928
G1 Z0.35 X44.0 Y136.0 E699.0847
G1 Z0.35 X48.0 Y128.0 E700.3369
G1 Z0.35 X44.0 Y124.0 E701.12885
G1 Z0.35 X40.0 Y128.0 E701.9208
G1 Z0.35 X44.0 Y136.0 E703.173
G1 Z0.35 X40.0 Y140.0 E703.9649
G1 Z0.35 X36.0 Y136.0 E704.75684
G1 Z0.35 X40.0 Y128.0 E706.00903
G1 Z0.35 X36.0 Y124.0 E706.80096
G1 Z0.35 X32.0 Y128.0 E707.5929
G1 Z0.35 X36.0 Y136.0 E708.8451
G1 Z0.35 X32.0 Y140.0 E709.637
G1 Z0.35 X28.0 Y136.0 E710.42896
G1 Z0.35 X32.0 Y128.0 E711.68115
G1 Z0.35 X28.0 Y124.0 E712.4731
G1 Z0.35 X24.0 Y128.0 E713.265
G1 Z0.35 X28.0 Y136.0 E714.5172
G1 Z0.35 X24.0 Y140.0 E715.30914
G1 Z0.35 X20.0 Y136.0 E716.1011
G1 Z0.35 X24.0 Y128.0 E717.3533
G1 Z0.35 X20.0 Y124.0 E718.1452
G1 Z0.35 X20.0 Y132.0 E719.2652
G1 Z0.35 X24.0 Y136.0 E720.0571
G1 Z0.35 X20.0 Y144.0 E721.3093
G1 Z0.35 X24.0 Y148.0 E722.10126
G1 Z0.35 X28.0 Y144.0 E722.8932
G1 Z0.35 X24.0 Y136.0 E724.1454
G1 Z0.35 X28.0 Y132.0 E724.9373
G1 Z0.35 X32.0 Y136.0 E725.72925
G1 Z0.35 X28.0 Y144.0 E726.98145
G1 Z0.35 X32.0 Y148.0 E727.7734
G1 Z0.35 X36.0 Y144.0 E728.5653
G1 Z0.35 X32.0 Y136.0 E729.8175
G1 Z0.35 X36.0 Y132.0 E730.60944
G1 Z0.35 X40.0 Y136.0 E731.40137
G1 Z0.35 X36.0 Y144.0 E732.65356
G1 Z0.35 X40.0 Y148.0 E733.4455
G1 Z0.35 X44.0 Y144.0 E734.2374
G1 Z0.35 X40.0 Y136.0 E735.4896
G1 Z0.35 X44.0 Y132.0 E736.28156
G1 Z0.35 X48.0 Y136.0 E737.0735
G1 Z0.35 X44.0 Y144.0 E738.3257
G1 Z0.35 X48.0 Y148.0 E739.1176
G1 Z0.35 X52.0 Y144.0 E739.90955
G1 Z0.35 X48.0 Y136.0 E741.16174
G1 Z0.35 X52.0 Y132.0 E741.9537
G1 Z0.35 X56.0 Y136.0 E742.7456
G1 Z0.35 X52.0 Y144.0 E743.9978
G1 Z0.35 X56.0 Y148.0 E744.78973
G1 Z0.35 X60.0 Y144.0 E745.58167
G1 Z0.35 X56.0 Y136.0 E746.83386
G1 Z0.35 X60.0 Y132.0 E747.6258
G1 Z0.35 X64.0 Y136.0 E748.4177
G1 Z0.35 X60.0 Y144.0 E749.6699
G1 Z0.35 X64.0 Y148.0 E750.46185
G1 Z0.35 X68.0 Y144.0 E751.2538
G1 Z0.35 X64.0 Y136.0 E752.506
G1 Z0.35 X68.0 Y132.0 E753.2979
G1 Z0.35 X72.0 Y136.0 E754.08984
G1 Z0.35 X68.0 Y144.0 E755.34204
G1 Z0.35 X72.0 Y148.0 E756.134
G1 Z0.35 X76.0 Y144.0 E756.9259
G1 Z0.35 X72.0 Y136.0 E758.1781
G1 Z0.35 X76.0 Y132.0 E758.97003
G1 Z0.35 X80.0 Y136.0 E759.76196
G1 Z0.35 X76.0 Y144.0 E761.01416
G1 Z0.35 X80.0 Y148.0 E761.8061
G1 Z0.35 X84.0 Y144.0 E762.598
G1 Z0.35 X80.0 Y136.0 E763.8502
G1 Z0.35 X84.0 Y132.0 E764.64215
G1 Z0.35 X84.0 Y140.0 E765.76215
G1 Z0.35 X80.0 Y144.0 E766.5541
G1 Z0.35 X84.0 Y152.0 E767.8063
G1 Z0.35 X80.0 Y156.0 E768.5982
G1 Z0.35 X76.0 Y152.0 E769.39014
G1 Z0.35 X80.0 Y144.0 E770.64233
G1 Z0.35 X76.0 Y140.0 E771.43427
G1 Z0.35 X72.0 Y144.0 E772.2262
G1 Z0.35 X76.0 Y152.0 E773.4784
G1 Z0.35 X72.0 Y156.0 E774.2703
G1 Z0.35 X68.0 Y152.0 E775.06226
G1 Z0.35 X72.0 Y144.0 E776.31445
G1 Z0.35 X68.0 Y140.0 E777.1064
G1 Z0.35 X64.0 Y144.0 E777.8983
G1 Z0.35 X68.0 Y152.0 E779.1505
G1 Z0.35 X64.0 Y156.0 E779.94244
G1 Z0.35 X60.0 Y152.0 E780.7344
G1 Z0.35 X64.0 Y144.0 E781.9866
G1 Z0.35 X60.0 Y140.0 E782.7785
G1 Z0.35 X56.0 Y144.0 E783.57043
G1 Z0.35 X60.0 Y152.0 E784.82263
G1 Z0.35 X56.0 Y156.0 E785.61456
G1 Z0.35 X52.0 Y152.0 E786.4065
G1 Z0.35 X56.0 Y144.0 E787.6587
G1 Z0.35 X52.0 Y140.0 E788.4506
G1 Z0.35 X48.0 Y144.0 E789.24255
G1 Z0.35 X52.0 Y152.0 E790.49475
G1 Z0.35 X48.0 Y156.0 E791.2867
G1 Z0.35 X44.0 Y152.0 E792.0786
G1 Z0.35 X48.0 Y144.0 E793.3308
G1 Z0.35 X44.0 Y140.0 E794.12274
G1 Z0.35 X40.0 Y144.0 E794.9147
G1 Z0.35 X44.0 Y152.0 E796.1669
G1 Z0.35 X40.0 Y156.0 E796.9588
G1 Z0.35 X36.0 Y152.0 E797.75073
G1 Z0.35 X40.0 Y144.0 E799.0029
G1 Z0.35 X36.0 Y140.0 E799.79486
G1 Z0.35 X32.0 Y144.0 E800.5868
G1 Z0.35 X36.0 Y152.0 E801.839
G1 Z0.35 X32.0 Y156.0 E802.6309
G1 Z0.35 X28.0 Y152.0 E803.42285
G1 Z0.35 X32.0 Y144.0 E804.67505
G1 Z0.35 X28.0 Y140.0 E805.467
G1 Z0.35 X24.0 Y144.0 E806.2589
G1 Z0.35 X28.0 Y152.0 E807.5111
G1 Z0.35 X24.0 Y156.0 E808.30304
G1 Z0.35 X20.0 Y152.0 E809.095
G1 Z0.35 X24.0 Y144.0 E810.34717
G1 Z0.35 X20.0 Y140.0 E811.1391
G1 Z0.35 X20.0 Y148.0 E812.2591
G1 Z0.35 X24.0 Y152.0 E813.051
G1 Z0.35 X20.0 Y160.0 E814.3032
G1 Z0.35 X24.0 Y164.0 E815.09515
G1 Z0.35 X28.0 Y160.0 E815.8871
G1 Z0.35 X24.0 Y152.0 E817.1393
G1 Z0.35 X28.0 Y148.0 E817.9312
G1 Z0.35 X32.0 Y152.0 E818.72314
G1 Z0.35 X28.0 Y160.0 E819.97534
G1 Z0.35 X32.0 Y164.0 E820.7673
G1 Z0.35 X36.0 Y160.0 E821.5592
G1 Z0.35 X32.0 Y152.0 E822.8114
G1 Z0.35 X36.0 Y148.0 E823.60333
G1 Z0.35 X40.0 Y152.0 E824.39526
G1 Z0.35 X36.0 Y160.0 E825.64746
G1 Z0.35 X40.0 Y164.0 E826.4394
G1 Z0.35 X44.0 Y160.0 E827.2313
G1 Z0.35 X40.0 Y152.0 E828.4835
G1 Z0.35 X44.0 Y148.0 E829.27545
G1 Z0.35 X48.0 Y152.0 E830.0674
G1 Z0.35 X44.0 Y160.0 E831.3196
G1 Z0.35 X48.0 Y164.0 E832.1115
G1 Z0.35 X52.0 Y160.0 E832.90344
G1 Z0.35 X48.0 Y152.0 E834.15564
G1 Z0.35 X52.0 Y148.0 E834.9476
G1 Z0.35 X56.0 Y152.0 E835.7395
G1 Z0.35 X52.0 Y160.0 E836.9917
G1 Z0.35 X56.0 Y164.0 E837.7836
G1 Z0.35 X60.0 Y160.0 E838.57556
G1 Z0.35 X56.0 Y152.0 E839.82776
G1 Z0.35 X60.0 Y148.0 E840.6197
G1 Z0.35 X64.0 Y152.0 E841.4116
G1 Z0.35 X60.0 Y160.0 E842.6638
G1 Z0.35 X64.0 Y164.0 E843.45575
G1 Z0.35 X68.0 Y160.0 E844.2477
G1 Z0.35 X64.0 Y152.0 E845.4999
G1 Z0.35 X68.0 Y148.0 E846.2918
G1 Z0.35 X72.0 Y152.0 E847.08374
G1 Z0.35 X68.0 Y160.0 E848.33594
G1 Z0.35 X72.0 Y164.0 E849.12787
G1 Z0.35 X76.0 Y160.0 E849.9198
G1 Z0.35 X72.0 Y152.0 E851.172
G1 Z0.35 X76.0 Y148.0 E851.9639
G1 Z0.35 X80.0 Y152.0 E852.75586
G1 Z0.35 X76.0 Y160.0 E854.00806
G1 Z0.35 X80.0 Y164.0 E854.8
G1 Z0.35 X84.0 Y160.0 E855.5919
G1 Z0.35 X80.0 Y152.0 E856.8441
G1 Z0.35 X84.0 Y148.0 E857.63605
G1 Z0.35 X84.0 Y156.0 E858.75604
G1 Z0.35 X80.0 Y160.0 E859.548
G1 Z0.35 X84.0 Y168.0 E860.8002
G1 Z0.35 X80.0 Y172.0 E861.5921
G1 Z0.35 X76.0 Y168.0 E862.38403
G1 Z0.35 X80.0 Y160.0 E863.6362
G1 Z0.35 X76.0 Y156.0 E864.42816
G1 Z0.35 X72.0 Y160.0 E865.2201
G1 Z0.35 X76.0 Y168.0 E866.4723
G1 Z0.35 X72.0 Y172.0 E867.2642
G1 Z0.35 X68.0 Y168.0 E868.05615
G1 Z0.35 X72.0 Y160.0 E869.30835
G1 Z0.35 X68.0 Y156.0 E870.1003
G1 Z0.35 X64.0 Y160.0 E870.8922
G1 Z0.35 X68.0 Y168.0 E872.1444
G1 Z0.35 X64.0 Y172.0 E872.93634
G1 Z0.35 X60.0 Y168.0 E873.7283
G1 Z0.35 X64.0 Y160.0 E874.98047
G1 Z0.35 X60.0 Y156.0 E875.7724
G1 Z0.35 X56.0 Y160.0 E876.56433
G1 Z0.35 X60.0 Y168.0 E877.8165
G1 Z0.35 X56.0 Y172.0 E878.60846
G1 Z0.35 X52.0 Y168.0 E879.4004
G1 Z0.35 X56.0 Y160.0 E880.6526
G1 Z0.35 X52.0 Y156.0 E881.4445
G1 Z0.35 X48.0 Y160.0 E882.23645
G1 Z0.35 X52.0 Y168.0 E883.48865
G1 Z0.35 X48.0 Y172.0 E884.2806
G1 Z0.35 X44.0 Y168.0 E885.0725
G1 Z0.35 X48.0 Y160.0 E886.3247
G1 Z0.35 X44.0 Y156.0 E887.11664
G1 Z0.35 X40.0 Y160.0 E887.90857
G1 Z0.35 X44.0 Y168.0 E889.16077
G1 Z0.35 X40.0 Y172.0 E889.9527
G1 Z0.35 X36.0 Y168.0 E890.7446
G1 Z0.35 X40.0 Y160.0 E891.9968
G1 Z0.35 X36.0 Y156.0 E892.78876
G1 Z0.35 X32.0 Y160.0 E893.5807
G1 Z0.35 X36.0 Y168.0 E894.8329
G1 Z0.35 X32.0 Y172.0 E895.6248
G1 Z0.35 X28.0 Y168.0 E896.41675
G1 Z0.35 X32.0 Y160.0 E897.66895
G1 Z0.35 X28.0 Y156.0 E898.4609
G1 Z0.35 X24.0 Y160.0 E899.2528
G1 Z0.35 X28.0 Y168.0 E900.505
G1 Z0.35 X24.0 Y172.0 E901.29694
G1 Z0.35 X20.0 Y168.0 E902.08887
G1 Z0.35 X24.0 Y160.0 E903.34106
G1 Z0.35 X20.0 Y156.0 E904.133
G1 Z0.35 X20.0 Y164.0 E905.253
G1 Z0.35 X24.0 Y168.0 E906.0449
G1 Z0.35 X20.0 Y176.0 E907.2971
G1 Z0.35 X24.0 Y180.0 E908.08905
G1 Z0.35 X28.0 Y176.0 E908.881
G1 Z0.35 X24.0 Y168.0 E910.1332
G1 Z0.35 X28.0 Y164.0 E910.9251
G1 Z0.35 X32.0 Y168.0 E911.71704
G1 Z0.35 X28.0 Y176.0 E912.96924
G1 Z0.35 X32.0 Y180.0 E913.76117
G1 Z0.35 X36.0 Y176.0 E914.5531
G1 Z0.35 X32.0 Y168.0 E915.8053
G1 Z0.35 X36.0 Y164.0 E916.5972
G1 Z0.35 X40.0 Y168.0 E917.38916
G1 Z0.35 X36.0 Y176.0 E918.64136
G1 Z0.35 X40.0 Y180.0 E919.4333
G1 Z0.35 X44.0 Y176.0 E920.2252
G1 Z0.35 X40.0 Y168.0 E921.4774
G1 Z0.35 X44.0 Y164.0 E922.26935
G1 Z0.35 X48.0 Y168.0 E923.0613
G1 Z0.35 X44.0 Y176.0 E924.3135
G1 Z0.35 X48.0 Y180.0 E925.1054
G1 Z0.35 X52.0 Y176.0 E925.89734
G1 Z0.35 X48.0 Y168.0 E927.14954
G1 Z0.35 X52.0 Y164.0 E927.94147
G1 Z0.35 X56.0 Y168.0 E928.7334
G1 Z0.35 X52.0 Y176.0 E929.9856
G1 Z0.35 X56.0 Y180.0 E930.7775
G1 Z0.35 X60.0 Y176.0 E931.56946
G1 Z0.35 X56.0 Y168.0 E932.82166
G1 Z0.35 X60.0 Y164.0 E933.6136
G1 Z0.35 X64.0 Y168.0 E934.4055
G1 Z0.35 X60.0 Y176.0 E935.6577
G1 Z0.35 X64.0 Y180.0 E936.44965
G1 Z0.35 X68.0 Y176.0 E937.2416
G1 Z0.35 X64.0 Y168.0 E938.4938
G1 Z0.35 X68.0 Y164.0 E939.2857
G1 Z0.35 X72.0 Y168.0 E940.07764
G1 Z0.35 X68.0 Y176.0 E941.32983
G1 Z0.35 X72.0 Y180.0 E942.12177
G1 Z0.35 X76.0 Y176.0 E942.9137
G1 Z0.35 X72.0 Y168.0 E944.1659
G1 Z0.35 X76.0 Y164.0 E944.9578
G1 Z0.35 X80.0 Y168.0 E945.74976
G1 Z0.35 X76.0 Y176.0 E947.00195
G1 Z0.35 X80.0 Y180.0 E947.7939
G1 Z0.35 X84.0 Y176.0 E948.5858
G1 Z0.35 X80.0 Y168.0 E949.838
G1 Z0.35 X84.0 Y164.0 E950.62994
G1 Z0.35 X84.0 Y172.0 E951.74994
G1 Z0.35 X80.0 Y176.0 E952.5419
G1 Z0.35 X84.0 Y184.0 E953.79407
G1 Z0.35 X80.0 Y188.0 E954.586
G1 Z0.35 X76.0 Y184.0 E955.3779
G1 Z0.35 X80.0 Y176.0 E956.6301
G1 Z0.35 X76.0 Y172.0 E957.42206
G1 Z0.35 X72.0 Y176.0 E958.214
G1 Z0.35 X76.0 Y184.0 E959.4662
G1 Z0.35 X72.0 Y188.0 E960.2581
G1 Z0.35 X68.0 Y184.0 E961.05005
G1 Z0.35 X72.0 Y176.0 E962.30225
G1 Z0.35 X68.0 Y172.0 E963.0942
G1 Z0.35 X64.0 Y176.0 E963.8861
G1 Z0.35 X68.0 Y184.0 E965.1383
G1 Z0.35 X64.0 Y188.0 E965.93024
G1 Z0.35 X60.0 Y184.0 E966.72217
G1 Z0.35 X64.0 Y176.0 E967.97437
G1 Z0.35 X60.0 Y172.0 E968.7663
G1 Z0.35 X56.0 Y176.0 E969.5582
G1 Z0.35 X60.0 Y184.0 E970.8104
G1 Z0.35 X56.0 Y188.0 E971.60236
G1 Z0.35 X52.0 Y184.0 E972.3943
G1 Z0.35 X56.0 Y176.0 E973.6465
G1 Z0.35 X52.0 Y172.0 E974.4384
G1 Z0.35 X48.0 Y176.0 E975.23035
G1 Z0.35 X52.0 Y184.0 E976.48254
G1 Z0.35 X48.0 Y188.0 E977.2745
G1 Z0.35 X44.0 Y184.0 E978.0664
G1 Z0.35 X48.0 Y176.0 E979.3186
G1 Z0.35 X44.0 Y172.0 E980.11053
G1 Z0.35 X40.0 Y176.0 E980.90247
G1 Z0.35 X44.0 Y184.0 E982.15466
G1 Z0.35 X40.0 Y188.0 E982.9466
G1 Z0.35 X36.0 Y184.0 E983.7385
G1 Z0.35 X40.0 Y176.0 E984.9907
G1 Z0.35 X36.0 Y172.0 E985.78265
G1 Z0.35 X32.0 Y176.0 E986.5746
G1 Z0.35 X36.0 Y184.0 E987.8268
G1 Z0.35 X32.0 Y188.0 E988.6187
G1 Z0.35 X28.0 Y184.0 E989.41064
G1 Z0.35 X32.0 Y176.0 E990.66284
G1 Z0.35 X28.0 Y172.0 E991.4548
G1 Z0.35 X24.0 Y176.0 E992.2467
G1 Z0.35 X28.0 Y184.0 E993.4989
G1 Z0.35 X24.0 Y188.0 E994.29083
G1 Z0.35 X20.0 Y184.0 E995.08276
G1 Z0.35 X24.0 Y176.0 E996.33496
G1 Z0.35 X20.0 Y172.0 E997.1269
G1 Z0.35 X20.0 Y180.0 E998.2469
G1 Z0.35 X24.0 Y184.0 E999.0388
G1 Z0.35 X20.0 Y192.0 E1000.291
G1 Z0.35 X24.0 Y196.0 E1001.08295
G1 Z0.35 X28.0 Y192.0 E1001.8749
G1 Z0.35 X24.0 Y184.0 E1003.1271
G1 Z0.35 X28.0 Y180.0 E1003.919
G1 Z0.35 X32.0 Y184.0 E1004.71094
G1 Z0.35 X28.0 Y192.0 E1005.96313
G1 Z0.35 X32.0 Y196.0 E1006.75507
G1 Z0.35 X36.0 Y192.0 E1007.547
G1 Z0.35 X32.0 Y184.0 E1008.7992
G1 Z0.35 X36.0 Y180.0 E1009.5911
G1 Z0.35 X40.0 Y184.0 E1010.38306
G1 Z0.35 X36.0 Y192.0 E1011.63525
G1 Z0.35 X40.0 Y196.0 E1012.4272
G1 Z0.35 X44.0 Y192.0 E1013.2191
G1 Z0.35 X40.0 Y184.0 E1014.4713
G1 Z0.35 X44.0 Y180.0 E1015.26324
G1 Z0.35 X48.0 Y184.0 E1016.0552
G1 Z0.35 X44.0 Y192.0 E1017.3074
G1 Z0.35 X48.0 Y196.0 E1018.0993
G1 Z0.35 X52.0 Y192.0 E1018.89124
G1 Z0.35 X48.0 Y184.0 E1020.14343
G1 Z0.35 X52.0 Y180.0 E1020.93536
G1 Z0.35 X56.0 Y184.0 E1021.7273
G1 Z0.35 X52.0 Y192.0 E1022.9795
G1 Z0.35 X56.0 Y196.0 E1023.7714
G1 Z0.35 X60.0 Y192.0 E1024.5634
G1 Z0.35 X56.0 Y184.0 E1025.8156
G1 Z0.35 X60.0 Y180.0 E1026.6075
G1 Z0.35 X64.0 Y184.0 E1027.3995
G1 Z0.35 X60.0 Y192.0 E1028.6517
G1 Z0.35 X64.0 Y196.0 E1029.4437
G1 Z0.35 X68.0 Y192.0 E1030.2357
G1 Z0.35 X64.0 Y184.0 E1031.4879
G1 Z0.35 X68.0 Y180.0 E1032.2799
G1 Z0.35 X72.0 Y184.0 E1033.0719
G1 Z0.35 X68.0 Y192.0 E1034.3241
G1 Z0.35 X72.0 Y196.0 E1035.1161
G1 Z0.35 X76.0 Y192.0 E1035.9081
G1 Z0.35 X72.0 Y184.0 E1037.1603
G1 Z0.35 X76.0 Y180.0 E1037.9523
G1 Z0.35 X80.0 Y184.0 E1038.7443
G1 Z0.35 X76.0 Y192.0 E1039.9965
G1 Z0.35 X80.0 Y196.0 E1040.7885
G1 Z0.35 X84.0 Y192.0 E1041.5804
G1 Z0.35 X80.0 Y184.0 E1042.8326
G1 Z0.35 X84.0 Y180.0 E1043.6246
;end code
G91                      ;relative positioning
G1 F300                  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
M104 S0                      ;extruder heater off
M140 S0                      ;heated bed heater off
G1 Z+2 F2000                 ;move Z up a bit and retract filament even more
G28 X0 Y0                    ;move X/Y to min endstops, so the head is out of the way
M84                          ;steppers off
G90                          ;absolute positioning