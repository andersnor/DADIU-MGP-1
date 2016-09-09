//Maya ASCII 2015 scene
//Name: musicBox_VH_005.ma
//Last modified: Thu, Sep 08, 2016 03:23:53 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201408201531-928694";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 86.732790619379259 33.87733798108448 -11.078750172975305 ;
	setAttr ".r" -type "double3" -16.538352718618277 -978.9999999999701 0 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 2.6090241078691179e-015 -7.1054273576010019e-015 ;
	setAttr ".rpt" -type "double3" -6.8374561001676349e-015 -4.5224742261602262e-015 
		2.6124691702951939e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 102.33385511278635;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 10.749057120209958 1.7763568394002505e-015 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.050246365673428495 100.1 -0.71070256371702467 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.359138234277918;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.68383934616311737 10.240181703436525 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 26.17310510758298;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.38651857062925 2.8929624642531073 -1.34639862005828 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30.036369197602809;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "musicBox_grp";
createNode transform -n "musicBox_geo_grp" -p "musicBox_grp";
createNode transform -n "musicBox_geo" -p "musicBox_geo_grp";
createNode mesh -n "musicBox_geoShape" -p "musicBox_geo";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.14904046058654785 0.35380865633487701 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "musicBox_geoShapeOrig" -p "musicBox_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.50041699 0.26258641
		 0.37793803 0.26266453 0.377774 0.0069097281 0.50025415 0.0068304539 0.25545931 0.26274285
		 0.25529552 0.0069870949 0.13298035 0.26282114 0.13281751 0.0070644319 0.010501862
		 0.26289919 0.010338306 0.0071439445 0.99033213 0.26227343 0.86785269 0.26235151 0.86768985
		 0.0065953732 0.99016881 0.0065172911 0.74537396 0.26243013 0.74521089 0.0066742301
		 0.62289619 0.26250827 0.62273169 0.0067532659 0.4392724 0.41047007 0.29138803 0.34932557
		 0.291466 0.47180411 0.37812662 0.55835462 0.50060534 0.5582763 0.58715606 0.47161502
		 0.58707786 0.34913659 0.88864255 0.67472029 0.75277591 0.67471159 0.75970459 0.6567952
		 0.88099051 0.65696961 0.65212059 0.57748997 0.67033386 0.57001966 0.65053034 0.43687645
		 0.66912007 0.44407114 0.74996066 0.33702663 0.7581892 0.35492274 0.89124537 0.33705869
		 0.88385105 0.3552005 0.99081659 0.43717924 0.97234941 0.44442686 0.98911047 0.57774973
		 0.97080946 0.57032794 0.82043362 0.83443213 0.6607399 0.76977122 0.66264439 0.90057278
		 0.75527143 0.99217558 0.88541985 0.99226964 0.97818041 0.90081191 0.98023415 0.76997387
		 0.82065105 0.50658 0.19254422 0.9780277 0.093715191 0.9771136 0.13430333 0.88147354
		 0.1535871 0.88129377 0.024387121 0.90668511 0.12101436 0.86748719 0.025067568 0.80773211
		 0.1215992 0.84835696 0.095664501 0.73822749 0.13480854 0.83453131 0.19475436 0.73894656
		 0.15391755 0.83521688 0.26414537 0.80969429 0.16769433 0.84847713 0.2632308 0.90876901
		 0.16693878 0.8675828 0.14420724 0.85811138 0.19879031 0.99279511 0.08761096 0.9919467
		 0.0095448494 0.91277325 0.010239363 0.80163658 0.089475393 0.72343671 0.20085692
		 0.72412133 0.27895331 0.80354369 0.27805233 0.91489089 0.18823481 0.33365262 0.18823481
		 0.32499003 0.20235801 0.32499003 0.20235801 0.33365214 0.21648192 0.33203959 0.21648192
		 0.34300888 0.23060608 0.3397243 0.23060608 0.35658109 0.24472952 0.35658109 0.24472952
		 0.3397243 0.25885391 0.33203959 0.25885391 0.34300888 0.27297688 0.32499003 0.27297688
		 0.33365059 0.20235801 0.41511059 0.18823481 0.41511059 0.18823481 0.37852991 0.20235801
		 0.37852991 0.21648192 0.41511059 0.21648192 0.3859787 0.23060608 0.41511059 0.23060608
		 0.39236474 0.24472952 0.41511059 0.24472952 0.39236474 0.25885391 0.41511059 0.25885391
		 0.38597846 0.27297688 0.37852991 0.27297688 0.41511059 0.11757398 0.38513362 0.094458103
		 0.38513631 0.094450712 0.32248372 0.11756635 0.32248086 0.071342707 0.38513917 0.0713346
		 0.32248661 0.048226833 0.385142 0.048219681 0.32248932 0.025111675 0.38514471 0.025104046
		 0.32249203 0.16380525 0.38512808 0.14068985 0.38513076 0.14068198 0.32247823 0.16379762
		 0.32247537 0.1060183 0.40515375 0.082903147 0.40515637 0.094463348 0.42517376 0.11757874
		 0.42517096 0.12913442 0.40515095 0.10600615 0.30246368 0.082890034 0.30246648 0.094446182
		 0.28244641 0.1175611 0.28244355 0.12912178 0.30246103 0.20235801 0.36230147 0.21648192
		 0.3748908 0.18823481 0.36230147 0.25885391 0.3748908 0.27297688 0.36230147 0.24472952
		 0.3863517 0.23060608 0.3863517 0.21648192 0.28899765 0.23060608 0.28899765 0.24472952
		 0.28899765 0.25885391 0.28899765 0.27297688 0.28899765 0.18823481 0.28899765 0.20235801
		 0.28899765;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 110 ".vt[0:109]"  2.87012553 0 -6.92909575 -2.87012529 0 -6.92909575
		 -6.92909575 0 -2.87012553 -6.92909575 0 2.87012529 -2.87012553 0 6.92909575 2.87012553 0 6.92909622
		 6.92909622 0 2.87012577 6.9290967 0 -2.87012577 2.87012553 11.98658371 -6.92909575
		 -2.87012529 11.98658371 -6.92909575 -6.92909575 11.98658371 -2.87012553 -6.92909575 11.98658371 2.87012529
		 -2.87012553 11.98658371 6.92909575 2.87012553 11.98658371 6.92909622 6.92909622 11.98658371 2.87012577
		 6.9290967 11.98658371 -2.87012577 0 0 0 3.19911051 11.68455791 -7.72333574 -3.19911027 11.68455791 -7.72333574
		 -7.72333574 11.68455791 -3.19911051 -7.72333574 11.68455791 3.19911027 -3.19911051 11.68455791 7.72333574
		 3.19911051 11.68455791 7.72333622 7.72333622 11.68455791 3.19911075 7.7233367 11.68455791 -3.19911075
		 3.19911051 12.69896984 -7.72333574 -3.19911027 12.69896984 -7.72333574 -7.72333574 12.69896984 -3.19911051
		 -7.72333574 12.69896984 3.19911027 -3.19911051 12.69896984 7.72333574 3.19911051 12.69896984 7.72333622
		 7.72333622 12.69896984 3.19911075 7.7233367 12.69896984 -3.19911075 0 11.68455791 0
		 0 12.69896984 0 2.94120431 12.58010864 -7.10069513 -2.94120407 12.58010864 -7.10069513
		 -7.10069513 12.58010864 -2.94120431 -7.10069513 12.58010864 2.94120407 -2.94120431 12.58010864 7.10069513
		 2.94120431 12.58010864 7.10069561 7.10069561 12.58010864 2.94120455 7.10069609 12.58010864 -2.94120455
		 0.63889587 17.045249939 -1.54242635 -0.63889199 17.045249939 -1.54242635 -1.54242539 17.045249939 -0.63889223
		 -1.54242539 17.045249939 0.63889563 -0.63889492 17.045249939 1.54242682 0.63889587 17.045249939 1.54242682
		 1.5424273 17.045249939 0.63889563 1.54242635 17.045249939 -0.63889515 3.8250138e-007 17.045249939 1.9125069e-007
		 2.94120431 13.61633968 -7.10069513 -2.94120407 13.61633968 -7.10069513 -7.10069513 13.61633968 -2.94120431
		 -7.10069513 13.61633968 2.94120407 -2.94120431 13.61633968 7.10069513 2.94120431 13.61633968 7.10069561
		 7.10069561 13.61633968 2.94120455 7.10069609 13.61633968 -2.94120455 0.50722301 16.58189774 -0.87853551
		 -0.50722265 16.58189774 -0.87853575 -1.014445543 16.58189774 -1.5116417e-007 -0.50722289 16.58189774 0.87853563
		 0.50722277 16.58189774 0.87853569 1.014445543 16.58189774 0 0.50722301 23.9620018 -7.10276079
		 -0.50722265 23.9620018 -7.10276175 -1.014445543 23.9620018 -6.224226 -0.50722289 23.9620018 -5.34568977
		 0.50722277 23.9620018 -5.34568977 1.014445543 23.9620018 -6.224226 0.71844637 23.46619034 -7.46861076
		 -0.71844584 23.46619034 -7.46861124 -1.43689215 23.46619034 -6.224226 -0.71844625 23.46619034 -4.97984076
		 0.71844602 23.46619034 -4.97984076 1.43689215 23.46619034 -6.224226 0.71844637 27.36074829 -7.46861076
		 -0.71844584 27.36074829 -7.46861124 -1.43689215 27.36074829 -6.224226 -0.71844625 27.36074829 -4.97984076
		 0.71844602 27.36074829 -4.97984076 1.43689215 27.36074829 -6.224226 0 23.46619034 -6.224226
		 0 27.36074829 -6.224226 -1.014445782 20.62632942 -5.54195023 -0.50722283 19.74738693 -6.1726532
		 0.50722301 19.74738693 -6.1726532 1.014445782 20.62632942 -5.54195023 0.50722289 21.50352669 -4.91227245
		 -0.50722277 21.50352669 -4.91227245 -1.014445901 20.62572861 -0.68251437 -0.50722277 19.7473526 -1.28556001
		 0.50722295 19.7473526 -1.28555977 1.014445901 20.62572861 -0.68251437 0.50722295 21.50397873 -0.080466628
		 -0.50722283 21.50397873 -0.080466628 -1.014445901 19.9145813 0.00015884064 -0.50722283 20.47654152 0.87748837
		 0.50722295 20.47654152 0.87748837 1.014445901 19.9145813 0.00015886723 0.50722295 19.35282326 -0.87837428
		 -0.50722277 19.35282326 -0.87837458 0.50722301 20.59118652 -7.10276079 -0.50722277 20.59118652 -7.10276175
		 -1.014445782 21.21285629 -6.224226 -0.50722283 21.83298302 -5.34686136 0.50722289 21.83298302 -5.34686136
		 1.014445782 21.21285629 -6.224226;
	setAttr -s 216 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0
		 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1 16 7 1 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 17 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 25 0 17 25 0 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0
		 24 32 0 33 17 1 33 18 1 33 19 1 33 20 1 33 21 1 33 22 1 33 23 1 33 24 1 25 34 1 26 34 1
		 27 34 1 28 34 1 29 34 1 30 34 1 31 34 1 32 34 1 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 35 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 43 0
		 35 52 1 36 53 1 37 54 1 38 55 1 39 56 1 40 57 1 41 58 1 42 59 1 43 51 1 44 51 1 45 51 1
		 46 51 1 47 51 1 48 51 1 49 51 1 50 51 1 52 43 1 53 44 1 54 45 1 55 46 1 56 47 1 57 48 1
		 58 49 1 59 50 1 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 52 1 107 91 1
		 104 88 1 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 65 60 0 66 67 0 67 68 0 68 69 0
		 69 70 0 70 71 0 71 66 0 87 105 1 86 106 1 90 108 1 89 109 1 60 102 1 61 103 1 63 99 1
		 64 100 1 65 101 1 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 72 0 78 79 0 79 80 0
		 80 81 0 81 82 0 82 83 0 83 78 0 72 78 1 73 79 1 74 80 1 75 81 1 76 82 1 77 83 1 84 72 1
		 84 73 1 84 74 1 84 75 1 84 76 1;
	setAttr ".ed[166:215]" 84 77 1 78 85 1 79 85 1 80 85 1 81 85 1 82 85 1 83 85 1
		 86 92 1 87 93 1 88 94 1 89 95 1 90 96 1 91 97 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1
		 91 86 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 92 1 62 98 1 98 92 1 99 97 1 100 96 1
		 101 95 1 102 94 1 103 93 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 98 1
		 105 67 1 106 68 1 107 69 1 108 70 1 109 71 1 104 105 1 105 106 1 106 107 1 107 108 1
		 108 109 1 109 104 1 104 66 1;
	setAttr -s 112 -ch 404 ".fc[0:111]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 0 1 2 3
		f 4 1 18 -10 -18
		mu 0 4 1 4 5 2
		f 4 2 19 -11 -19
		mu 0 4 4 6 7 5
		f 4 3 20 -12 -20
		mu 0 4 6 8 9 7
		f 4 4 21 -13 -21
		mu 0 4 10 11 12 13
		f 4 5 22 -14 -22
		mu 0 4 11 14 15 12
		f 4 6 23 -15 -23
		mu 0 4 14 16 17 15
		f 4 7 16 -16 -24
		mu 0 4 16 0 3 17
		f 3 -1 -25 25
		mu 0 3 1 0 18
		f 3 -2 -26 26
		mu 0 3 19 1 18
		f 3 -3 -27 27
		mu 0 3 20 19 18
		f 3 -4 -28 28
		mu 0 3 21 20 18
		f 3 -5 -29 29
		mu 0 3 22 21 18
		f 3 -6 -30 30
		mu 0 3 23 22 18
		f 3 -7 -31 31
		mu 0 3 24 23 18
		f 3 -8 -32 24
		mu 0 3 0 24 18
		f 4 32 49 -41 -49
		mu 0 4 25 26 27 28
		f 4 33 50 -42 -50
		mu 0 4 26 29 30 27
		f 4 34 51 -43 -51
		mu 0 4 29 31 32 30
		f 4 35 52 -44 -52
		mu 0 4 31 33 34 32
		f 4 36 53 -45 -53
		mu 0 4 33 35 36 34
		f 4 37 54 -46 -54
		mu 0 4 35 37 38 36
		f 4 38 55 -47 -55
		mu 0 4 37 39 40 38
		f 4 39 48 -48 -56
		mu 0 4 39 25 28 40
		f 3 -33 -57 57
		mu 0 3 26 25 41
		f 3 -34 -58 58
		mu 0 3 42 26 41
		f 3 -35 -59 59
		mu 0 3 43 42 41
		f 3 -36 -60 60
		mu 0 3 44 43 41
		f 3 -37 -61 61
		mu 0 3 45 44 41
		f 3 -38 -62 62
		mu 0 3 46 45 41
		f 3 -39 -63 63
		mu 0 3 47 46 41
		f 3 -40 -64 56
		mu 0 3 25 47 41
		f 3 40 65 -65
		mu 0 3 28 27 48
		f 3 41 66 -66
		mu 0 3 27 30 48
		f 3 42 67 -67
		mu 0 3 30 32 48
		f 3 43 68 -68
		mu 0 3 32 34 48
		f 3 44 69 -69
		mu 0 3 34 36 48
		f 3 45 70 -70
		mu 0 3 36 38 48
		f 3 46 71 -71
		mu 0 3 38 40 48
		f 3 47 64 -72
		mu 0 3 40 28 48
		f 4 112 105 -81 -105
		mu 0 4 49 50 51 52
		f 4 113 106 -82 -106
		mu 0 4 50 53 54 51
		f 4 114 107 -83 -107
		mu 0 4 53 55 56 54
		f 4 115 108 -84 -108
		mu 0 4 55 57 58 56
		f 4 116 109 -85 -109
		mu 0 4 57 59 60 58
		f 4 117 110 -86 -110
		mu 0 4 59 61 62 60
		f 4 118 111 -87 -111
		mu 0 4 61 63 64 62
		f 4 119 104 -88 -112
		mu 0 4 63 49 52 64
		f 3 80 97 -97
		mu 0 3 52 51 65
		f 3 81 98 -98
		mu 0 3 51 54 65
		f 3 82 99 -99
		mu 0 3 54 56 65
		f 3 83 100 -100
		mu 0 3 56 58 65
		f 3 84 101 -101
		mu 0 3 58 60 65
		f 3 85 102 -102
		mu 0 3 60 62 65
		f 3 86 103 -103
		mu 0 3 62 64 65
		f 3 87 96 -104
		mu 0 3 64 52 65
		f 4 72 89 -113 -89
		mu 0 4 66 67 50 49
		f 4 73 90 -114 -90
		mu 0 4 67 68 53 50
		f 4 74 91 -115 -91
		mu 0 4 68 69 55 53
		f 4 75 92 -116 -92
		mu 0 4 69 70 57 55
		f 4 76 93 -117 -93
		mu 0 4 70 71 59 57
		f 4 77 94 -118 -94
		mu 0 4 71 72 61 59
		f 4 78 95 -119 -95
		mu 0 4 72 73 63 61
		f 4 79 88 -120 -96
		mu 0 4 73 66 49 63
		f 4 -197 202 197 186
		mu 0 4 74 75 76 77
		f 4 -198 203 192 185
		mu 0 4 77 76 78 79
		f 4 -193 198 193 190
		mu 0 4 79 78 80 81
		f 4 -195 200 195 188
		mu 0 4 82 83 84 85
		f 4 -196 201 196 187
		mu 0 4 85 84 86 87
		f 4 -129 -216 209 204
		mu 0 4 88 89 90 91
		f 4 -130 -205 210 205
		mu 0 4 92 88 91 93
		f 4 -131 -206 211 206
		mu 0 4 94 92 93 95
		f 4 -132 -207 212 207
		mu 0 4 96 94 95 97
		f 4 -133 -208 213 208
		mu 0 4 98 96 97 99
		f 4 215 -134 -209 214
		mu 0 4 100 101 98 99
		f 4 189 -194 199 194
		mu 0 4 82 81 80 83
		f 4 143 156 -150 -156
		mu 0 4 102 103 104 105
		f 4 144 157 -151 -157
		mu 0 4 103 106 107 104
		f 4 145 158 -152 -158
		mu 0 4 106 108 109 107
		f 4 146 159 -153 -159
		mu 0 4 108 110 111 109
		f 4 147 160 -154 -160
		mu 0 4 112 113 114 115
		f 4 148 155 -155 -161
		mu 0 4 113 102 105 114
		f 3 -144 -162 162
		mu 0 3 103 102 116
		f 3 -145 -163 163
		mu 0 3 117 103 116
		f 3 -146 -164 164
		mu 0 3 118 117 116
		f 3 -147 -165 165
		mu 0 3 119 118 116
		f 3 -148 -166 166
		mu 0 3 120 119 116
		f 3 -149 -167 161
		mu 0 3 102 120 116
		f 3 149 168 -168
		mu 0 3 105 104 121
		f 3 150 169 -169
		mu 0 3 104 122 121
		f 3 151 170 -170
		mu 0 3 122 123 121
		f 3 152 171 -171
		mu 0 3 123 124 121
		f 3 153 172 -172
		mu 0 3 124 125 121
		f 3 154 167 -173
		mu 0 3 125 105 121
		f 4 -180 135 -211 -135
		mu 0 4 126 127 93 91
		f 4 121 -181 134 -210
		mu 0 4 90 128 126 91
		f 4 -182 -122 -215 -138
		mu 0 4 129 130 100 99
		f 4 -183 137 -214 -137
		mu 0 4 131 129 99 97
		f 4 -185 -121 -212 -136
		mu 0 4 127 132 95 93
		f 4 179 174 -186 -174
		mu 0 4 127 126 77 79
		f 4 -187 -175 180 175
		mu 0 4 74 77 126 128
		f 4 181 176 -188 -176
		mu 0 4 130 129 85 87
		f 4 182 177 -189 -177
		mu 0 4 129 131 82 85
		f 4 183 178 -190 -178
		mu 0 4 131 132 81 82
		f 4 184 173 -191 -179
		mu 0 4 132 127 79 81
		f 4 -199 -192 124 140
		mu 0 4 80 78 133 134
		f 4 -200 -141 125 141
		mu 0 4 83 80 134 135
		f 4 -201 -142 126 142
		mu 0 4 84 83 135 136
		f 4 -202 -143 127 138
		mu 0 4 86 84 136 137
		f 4 -203 -139 122 139
		mu 0 4 76 75 138 139
		f 4 191 -204 -140 123
		mu 0 4 133 78 76 139
		f 4 136 -213 120 -184
		mu 0 4 131 97 95 132;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
	setAttr ".vcs" 2;
createNode transform -n "musicBox_ctrl_grp" -p "musicBox_grp";
createNode transform -n "master_ctrl_001" -p "musicBox_ctrl_grp";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "master_ctrl_001Shape" -p "master_ctrl_001";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 0.22392895220661571 0.44785790441323142 0.67178685661984705 0.89571580882646273
		 1.1196447610330784 1.3435737132396941 1.5675026654463098 1.7914316176529255 2.0153605698595412
		 2.2392895220661568 2.4632184742727725 2.6871474264793882 2.9110763786860039 3.1350053308926196
		 3.3589342830992353 3.5828632353058509 3.8067921875124666 4.0307211397190823 4.254650091925698
		 4.4785790441323137 4.7025079963389294 4.926436948545545 5.1503659007521607 5.3742948529587764
		 5.5982238051653921 5.8221527573720078 6.0460817095786235 6.2700106617852391
		29
		-7.9877762611748621e-015 0 -23.936923546638891
		-7.9789745155462999 0 -15.957949031092598
		-3.9894872577731495 0 -15.9579490310926
		-3.9894872577731517 -2.5609153386518497e-031 -11.968461773319451
		-11.968461773319451 -2.5609153386518497e-031 -3.9894872577731495
		-15.957949031092598 -2.5609153386518497e-031 -3.9894872577731495
		-15.957949031092598 -2.5609153386518497e-031 -7.9789745155463008
		-23.936923546638901 -1.9669690809591367e-031 0
		-15.957949031092598 -2.5609153386518497e-031 7.9789745155462999
		-15.957949031092598 -2.5609153386518497e-031 3.9894872577731495
		-11.968461773319451 -2.5609153386518497e-031 3.9894872577731517
		-3.9894872577731517 -2.5609153386518497e-031 11.968461773319451
		-3.9894872577731495 0 15.957949031092578
		-7.9789745155462999 0 15.957949031092578
		1.7759529330659926e-016 0 23.936923546638901
		7.9789745155462999 0 15.957949031092578
		3.9894872577731495 0 15.957949031092578
		3.9894872577731517 -2.5609153386518497e-031 11.968461773319451
		11.968461773319451 -2.5609153386518497e-031 3.9894872577731517
		15.957949031092598 -2.5609153386518497e-031 3.9894872577731495
		15.957949031092598 -2.5609153386518497e-031 7.9789745155462999
		23.936923546638901 -1.9669690809591367e-031 0
		15.957949031092598 -2.5609153386518497e-031 -7.9789745155463008
		15.957949031092602 -2.5609153386518497e-031 -3.9894872577731495
		11.968461773319451 -2.5609153386518497e-031 -3.9894872577731495
		3.9894872577731517 -2.5609153386518497e-031 -11.968461773319451
		3.9894872577731495 0 -15.9579490310926
		7.9789745155462999 0 -15.957949031092598
		8.7804948596144954e-015 0 -23.936923546638898
		;
createNode transform -n "offset_ctrl_001" -p "master_ctrl_001";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "offset_ctrl_00Shape1" -p "offset_ctrl_001";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 20 0 no 3
		21 0 0.31286893008046174 0.62573786016092336 0.93860679024138505 1.2514757203218467
		 1.5643446504023084 1.8772135804827701 2.1900825105632316 2.502951440643693 2.8158203707241545
		 3.1286893008046159 3.4415582308850774 3.7544271609655389 4.0672960910459999 4.3801650211264613
		 4.6930339512069228 5.0059028812873843 5.3187718113678457 5.6316407414483072 5.9445096715287686
		 6.2573786016092301
		21
		-4.2665525188457042e-015 2.9446376484587886e-031 -16.424195403103077
		-2.9862173460187402 0 -13.437978057084331
		-2.9862173460187402 0 -8.9586520380562202
		-8.9586520380562202 0 -2.9862173460187402
		-13.437978057084331 0 -2.9862173460187402
		-16.42419540310307 1.7865491507710596e-031 -2.9176561797490098e-015
		-13.437978057084331 0 2.9862173460187402
		-8.9586520380562202 0 2.9862173460187402
		-2.9862173460187402 0 8.9586520380562202
		-2.9862173460187402 0 13.437978057084331
		0 0 16.42419540310307
		2.9862173460187402 0 13.437978057084331
		2.9862173460187402 0 8.9586520380562202
		8.9586520380562202 0 2.9862173460187402
		13.437978057084331 0 2.9862173460187402
		14.931086730093702 0 0
		13.437978057084331 0 -2.9862173460187402
		8.9586520380562202 0 -2.9862173460187402
		2.9862173460187402 0 -8.9586520380562202
		2.9862173460187402 0 -13.437978057084331
		4.2665525188457042e-015 -2.9446376484587886e-031 -16.424195403103067
		;
createNode transform -n "base_ctrl_001" -p "offset_ctrl_001";
createNode nurbsCurve -n "base_ctrl_00Shape1" -p "base_ctrl_001";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.8992070884465253 4.8368693383340521e-016 -7.8992070884465129
		-1.2744964433071997e-015 13.897949319340441 -11.171165796474755
		-7.8992070884465182 4.8368693383340551e-016 -7.8992070884465182
		-11.171165796474755 13.897949319340441 -3.2371243673167417e-015
		-7.89920708844652 -4.8368693383340541e-016 7.8992070884465155
		-3.366090272271593e-015 13.897949319340441 11.171165796474758
		7.8992070884465129 -4.8368693383340561e-016 7.8992070884465191
		11.171165796474755 13.897949319340441 6.0000549412647366e-015
		7.8992070884465253 4.8368693383340521e-016 -7.8992070884465129
		-1.2744964433071997e-015 13.897949319340441 -11.171165796474755
		-7.8992070884465182 4.8368693383340551e-016 -7.8992070884465182
		;
createNode transform -n "handle_ctrl_001" -p "base_ctrl_001";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 19 0 ;
	setAttr ".sp" -type "double3" 0 19 0 ;
createNode nurbsCurve -n "handle_ctrl_00Shape1" -p "handle_ctrl_001";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.7569024900589829 19 -2.7569024900589785
		-4.4481203983929735e-016 15.644405590242226 -3.8988488915815673
		-2.7569024900589798 19 -2.7569024900589798
		-3.8988488915815673 15.644405590242226 -1.1297888672825303e-015
		-2.7569024900589811 19 2.7569024900589794
		-1.1747992614299078e-015 21.498114240419916 3.8988488915815678
		2.7569024900589785 19 2.7569024900589807
		3.8988488915815673 15.644405590242226 2.0940793452873706e-015
		2.7569024900589829 19 -2.7569024900589785
		-4.4481203983929735e-016 15.644405590242226 -3.8988488915815673
		-2.7569024900589798 19 -2.7569024900589798
		;
createNode transform -n "musicBox_jnt_grp" -p "musicBox_grp";
createNode joint -n "musicBoxBase_jnt_001" -p "musicBox_jnt_grp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0043281997413461976 0 0.019396274603072809 1;
	setAttr ".radi" 0.5;
createNode joint -n "musicBoxHandle_jnt_001" -p "musicBoxBase_jnt_001";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -0.0043281997413461976 17.045804554008292 0.019396274603072809 1;
	setAttr ".radi" 0.5;
createNode joint -n "musicBoxTop_jnt_001" -p "musicBoxHandle_jnt_001";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 9.9678534646657049 2.2126397936084174e-015 6.9388939039072284e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 -0.0043281997413461967 27.013658018674001 0.019396274603072815 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint2_parentConstraint1" -p "musicBoxHandle_jnt_001";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "handle_ctrl_001W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0043281997413461976 -1.9541954459917079 
		0.019396274603072809 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".rst" -type "double3" 17.045804554008289 3.7851666245813931e-015 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "musicBoxHandle_jnt_001_scaleConstraint1" -p "musicBoxHandle_jnt_001";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "handle_ctrl_001W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "musicBoxBase_jnt_001_parentConstraint1" -p "musicBoxBase_jnt_001";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0043281997413461976 0 0.019396274603072809 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".rst" -type "double3" -0.0043281997413461976 0 0.019396274603072809 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "musicBoxBase_jnt_001_scaleConstraint1" -p "musicBoxBase_jnt_001";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	setAttr -s 110 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[1]"  1;
	setAttr ".wl[61].w[1]"  1;
	setAttr ".wl[62].w[1]"  1;
	setAttr ".wl[63].w[1]"  1;
	setAttr ".wl[64].w[1]"  1;
	setAttr ".wl[65].w[1]"  1;
	setAttr ".wl[66].w[1]"  1;
	setAttr ".wl[67].w[1]"  1;
	setAttr ".wl[68].w[1]"  1;
	setAttr ".wl[69].w[1]"  1;
	setAttr ".wl[70].w[1]"  1;
	setAttr ".wl[71].w[1]"  1;
	setAttr ".wl[72].w[1]"  1;
	setAttr ".wl[73].w[1]"  1;
	setAttr ".wl[74].w[1]"  1;
	setAttr ".wl[75].w[1]"  1;
	setAttr ".wl[76].w[1]"  1;
	setAttr ".wl[77].w[1]"  1;
	setAttr ".wl[78].w[1]"  1;
	setAttr ".wl[79].w[1]"  1;
	setAttr ".wl[80].w[1]"  1;
	setAttr ".wl[81].w[1]"  1;
	setAttr ".wl[82].w[1]"  1;
	setAttr ".wl[83].w[1]"  1;
	setAttr ".wl[84].w[1]"  1;
	setAttr ".wl[85].w[1]"  1;
	setAttr ".wl[86].w[1]"  1;
	setAttr ".wl[87].w[1]"  1;
	setAttr ".wl[88].w[1]"  1;
	setAttr ".wl[89].w[1]"  1;
	setAttr ".wl[90].w[1]"  1;
	setAttr ".wl[91].w[1]"  1;
	setAttr ".wl[92].w[1]"  1;
	setAttr ".wl[93].w[1]"  1;
	setAttr ".wl[94].w[1]"  1;
	setAttr ".wl[95].w[1]"  1;
	setAttr ".wl[96].w[1]"  1;
	setAttr ".wl[97].w[1]"  1;
	setAttr ".wl[98].w[1]"  1;
	setAttr ".wl[99].w[1]"  1;
	setAttr ".wl[100].w[1]"  1;
	setAttr ".wl[101].w[1]"  1;
	setAttr ".wl[102].w[1]"  1;
	setAttr ".wl[103].w[1]"  1;
	setAttr ".wl[104].w[1]"  1;
	setAttr ".wl[105].w[1]"  1;
	setAttr ".wl[106].w[1]"  1;
	setAttr ".wl[107].w[1]"  1;
	setAttr ".wl[108].w[1]"  1;
	setAttr ".wl[109].w[1]"  1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 9.6105340160383875e-019 -0.0043281997413461967 -0.019396274603072809 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 -17.045804554008289 -0.0043281997413499819 -0.019396274603072809 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999956 0 0 0 0 0.99999999999999956 0 0
		 0 0 1 0 0.004328199741346195 -27.013658018673986 -0.019396274603072812 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:111]";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0043281997413461976
		 0 0.019396274603072809 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.045804554008289 3.7851666245813931e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.9678534646657049 2.2126397936084174e-015
		 6.9388939039072284e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1.og[0]" "musicBox_geoShape.i";
connectAttr "groupId1.id" "musicBox_geoShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "musicBox_geoShape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "musicBox_geoShape.iog.og[16].gid";
connectAttr "skinCluster1Set.mwc" "musicBox_geoShape.iog.og[16].gco";
connectAttr "musicBoxBase_jnt_001_scaleConstraint1.csx" "musicBoxBase_jnt_001.sx"
		;
connectAttr "musicBoxBase_jnt_001_scaleConstraint1.csy" "musicBoxBase_jnt_001.sy"
		;
connectAttr "musicBoxBase_jnt_001_scaleConstraint1.csz" "musicBoxBase_jnt_001.sz"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.ctx" "musicBoxBase_jnt_001.tx"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.cty" "musicBoxBase_jnt_001.ty"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.ctz" "musicBoxBase_jnt_001.tz"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.crx" "musicBoxBase_jnt_001.rx"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.cry" "musicBoxBase_jnt_001.ry"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.crz" "musicBoxBase_jnt_001.rz"
		;
connectAttr "musicBoxBase_jnt_001.s" "musicBoxHandle_jnt_001.is";
connectAttr "joint2_parentConstraint1.ctx" "musicBoxHandle_jnt_001.tx";
connectAttr "joint2_parentConstraint1.cty" "musicBoxHandle_jnt_001.ty";
connectAttr "joint2_parentConstraint1.ctz" "musicBoxHandle_jnt_001.tz";
connectAttr "joint2_parentConstraint1.crx" "musicBoxHandle_jnt_001.rx";
connectAttr "joint2_parentConstraint1.cry" "musicBoxHandle_jnt_001.ry";
connectAttr "joint2_parentConstraint1.crz" "musicBoxHandle_jnt_001.rz";
connectAttr "musicBoxHandle_jnt_001_scaleConstraint1.csx" "musicBoxHandle_jnt_001.sx"
		;
connectAttr "musicBoxHandle_jnt_001_scaleConstraint1.csy" "musicBoxHandle_jnt_001.sy"
		;
connectAttr "musicBoxHandle_jnt_001_scaleConstraint1.csz" "musicBoxHandle_jnt_001.sz"
		;
connectAttr "musicBoxHandle_jnt_001.s" "musicBoxTop_jnt_001.is";
connectAttr "musicBoxHandle_jnt_001.ro" "joint2_parentConstraint1.cro";
connectAttr "musicBoxHandle_jnt_001.pim" "joint2_parentConstraint1.cpim";
connectAttr "musicBoxHandle_jnt_001.rp" "joint2_parentConstraint1.crp";
connectAttr "musicBoxHandle_jnt_001.rpt" "joint2_parentConstraint1.crt";
connectAttr "musicBoxHandle_jnt_001.jo" "joint2_parentConstraint1.cjo";
connectAttr "handle_ctrl_001.t" "joint2_parentConstraint1.tg[0].tt";
connectAttr "handle_ctrl_001.rp" "joint2_parentConstraint1.tg[0].trp";
connectAttr "handle_ctrl_001.rpt" "joint2_parentConstraint1.tg[0].trt";
connectAttr "handle_ctrl_001.r" "joint2_parentConstraint1.tg[0].tr";
connectAttr "handle_ctrl_001.ro" "joint2_parentConstraint1.tg[0].tro";
connectAttr "handle_ctrl_001.s" "joint2_parentConstraint1.tg[0].ts";
connectAttr "handle_ctrl_001.pm" "joint2_parentConstraint1.tg[0].tpm";
connectAttr "joint2_parentConstraint1.w0" "joint2_parentConstraint1.tg[0].tw";
connectAttr "musicBoxHandle_jnt_001.ssc" "musicBoxHandle_jnt_001_scaleConstraint1.tsc"
		;
connectAttr "musicBoxHandle_jnt_001.pim" "musicBoxHandle_jnt_001_scaleConstraint1.cpim"
		;
connectAttr "handle_ctrl_001.s" "musicBoxHandle_jnt_001_scaleConstraint1.tg[0].ts"
		;
connectAttr "handle_ctrl_001.pm" "musicBoxHandle_jnt_001_scaleConstraint1.tg[0].tpm"
		;
connectAttr "musicBoxHandle_jnt_001_scaleConstraint1.w0" "musicBoxHandle_jnt_001_scaleConstraint1.tg[0].tw"
		;
connectAttr "musicBoxBase_jnt_001.ro" "musicBoxBase_jnt_001_parentConstraint1.cro"
		;
connectAttr "musicBoxBase_jnt_001.pim" "musicBoxBase_jnt_001_parentConstraint1.cpim"
		;
connectAttr "musicBoxBase_jnt_001.rp" "musicBoxBase_jnt_001_parentConstraint1.crp"
		;
connectAttr "musicBoxBase_jnt_001.rpt" "musicBoxBase_jnt_001_parentConstraint1.crt"
		;
connectAttr "musicBoxBase_jnt_001.jo" "musicBoxBase_jnt_001_parentConstraint1.cjo"
		;
connectAttr "base_ctrl_001.t" "musicBoxBase_jnt_001_parentConstraint1.tg[0].tt";
connectAttr "base_ctrl_001.rp" "musicBoxBase_jnt_001_parentConstraint1.tg[0].trp"
		;
connectAttr "base_ctrl_001.rpt" "musicBoxBase_jnt_001_parentConstraint1.tg[0].trt"
		;
connectAttr "base_ctrl_001.r" "musicBoxBase_jnt_001_parentConstraint1.tg[0].tr";
connectAttr "base_ctrl_001.ro" "musicBoxBase_jnt_001_parentConstraint1.tg[0].tro"
		;
connectAttr "base_ctrl_001.s" "musicBoxBase_jnt_001_parentConstraint1.tg[0].ts";
connectAttr "base_ctrl_001.pm" "musicBoxBase_jnt_001_parentConstraint1.tg[0].tpm"
		;
connectAttr "musicBoxBase_jnt_001_parentConstraint1.w0" "musicBoxBase_jnt_001_parentConstraint1.tg[0].tw"
		;
connectAttr "musicBoxBase_jnt_001.ssc" "musicBoxBase_jnt_001_scaleConstraint1.tsc"
		;
connectAttr "musicBoxBase_jnt_001.pim" "musicBoxBase_jnt_001_scaleConstraint1.cpim"
		;
connectAttr "base_ctrl_001.s" "musicBoxBase_jnt_001_scaleConstraint1.tg[0].ts";
connectAttr "base_ctrl_001.pm" "musicBoxBase_jnt_001_scaleConstraint1.tg[0].tpm"
		;
connectAttr "musicBoxBase_jnt_001_scaleConstraint1.w0" "musicBoxBase_jnt_001_scaleConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "musicBoxBase_jnt_001.wm" "skinCluster1.ma[0]";
connectAttr "musicBoxHandle_jnt_001.wm" "skinCluster1.ma[1]";
connectAttr "musicBoxTop_jnt_001.wm" "skinCluster1.ma[2]";
connectAttr "musicBoxBase_jnt_001.liw" "skinCluster1.lw[0]";
connectAttr "musicBoxHandle_jnt_001.liw" "skinCluster1.lw[1]";
connectAttr "musicBoxTop_jnt_001.liw" "skinCluster1.lw[2]";
connectAttr "musicBoxBase_jnt_001.obcc" "skinCluster1.ifcl[0]";
connectAttr "musicBoxHandle_jnt_001.obcc" "skinCluster1.ifcl[1]";
connectAttr "musicBoxTop_jnt_001.obcc" "skinCluster1.ifcl[2]";
connectAttr "musicBoxBase_jnt_001.msg" "skinCluster1.ptt";
connectAttr "musicBox_geoShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "musicBox_geoShape.iog.og[16]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "groupParts1.og" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "musicBox_grp.msg" "bindPose2.m[0]";
connectAttr "musicBox_jnt_grp.msg" "bindPose2.m[1]";
connectAttr "musicBoxBase_jnt_001.msg" "bindPose2.m[2]";
connectAttr "musicBoxHandle_jnt_001.msg" "bindPose2.m[3]";
connectAttr "musicBoxTop_jnt_001.msg" "bindPose2.m[4]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "musicBoxBase_jnt_001.bps" "bindPose2.wm[2]";
connectAttr "musicBoxHandle_jnt_001.bps" "bindPose2.wm[3]";
connectAttr "musicBoxTop_jnt_001.bps" "bindPose2.wm[4]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "musicBox_geoShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of musicBox_VH_005.ma
