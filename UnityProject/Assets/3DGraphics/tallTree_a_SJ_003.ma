//Maya ASCII 2015 scene
//Name: tallTree_a_SJ_003.ma
//Last modified: Fri, Sep 09, 2016 03:40:12 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.591526728030253 7.726776082278878 -34.839984621430766 ;
	setAttr ".r" -type "double3" -4.5383527002402007 -1603.3999999999744 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 35.394896714122694;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.65470107365399599 -0.020277162082493305 -0.65234596841037273 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "tallTree_a_grp_001";
createNode transform -n "tallTree_a_geo_grp_001" -p "tallTree_a_grp_001";
createNode transform -n "tallTree_a_geo_001" -p "tallTree_a_geo_grp_001";
	setAttr ".rp" -type "double3" -0.17728838920593262 5.5162382125854492 -0.0073376655578613285 ;
	setAttr ".sp" -type "double3" -0.17728838920593262 5.5162382125854492 -0.0073376655578613285 ;
createNode mesh -n "tallTree_a_geo_00Shape1" -p "tallTree_a_geo_001";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.29910843997448311 0.75892180086861183 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "tallTree_a_geo_001";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.26818849146366119 0.23496945202350616 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 93 ".uvst[0].uvsp[0:92]" -type "float2" 0.11233309 0.21427584
		 0.14487183 0.17172977 0.30897415 0.36620533 0.2807126 0.39711738 0.17783636 0.1302714
		 0.34384722 0.32817465 0.5991925 0.76099849 0.63878167 0.72253621 0.66757488 0.75317824
		 0.61959332 0.77403986 0.67152101 0.69074929 0.70495474 0.73542082 0.8078258 0.85454583
		 0.79311991 0.87520152 0.82492751 0.83644617 0.90718436 0.77696759 0.88447553 0.78845859
		 0.80049121 0.63328505 0.82854116 0.59169209 0.86401737 0.80273259 0.77810967 0.66843897
		 0.7794503 0.59190357 0.81900144 0.5684666 0.73961264 0.63100386 0.5017103 0.20637855
		 0.4678486 0.23043922 0.3043887 0.036703497 0.3521179 0.011789829 0.42233425 0.26208857
		 0.25766674 0.061890662 0.21450385 0.092354089 0.38520867 0.2901246 0.7077359 0.66325021
		 0.7444737 0.70510316 0.84514236 0.82038289 0.034666687 0.29038119 0.076359868 0.25491452
		 0.25117427 0.42815539 0.21685162 0.45814908 0.58714479 0.83417535 0.61201042 0.8070991
		 0.78119177 0.90223145 0.76568383 0.92751598 0.45036012 0.86237013 0.353991 0.90344208
		 0.21334583 0.68685341 0.2627306 0.66554129 0.12882024 0.90957856 0.039040267 0.98817873
		 0.047167078 0.74505067 0.089616552 0.72382647 0.48398685 0.7854656 0.29314166 0.63227797
		 0.29899669 0.97792137 0.17834151 0.73017275 0.21391869 0.98285151 0.12424728 0.73692274
		 0.093150944 0.51496792 0.10220256 0.51317108 0.063294753 0.52907562 0.071412325 0.52700698
		 0.10977173 0.50680208 0.088542938 0.52306962 0.079891086 0.52772397 0.58757579 0.73617166
		 0.61310005 0.69428122 0.56733775 0.76306009 0.58210528 0.77888024 0.54444802 0.7813015
		 0.55982906 0.79872346 0.76091433 0.57438791 0.79935169 0.55509877 0.71213567 0.59509885
		 0.67133027 0.62235141 0.63841724 0.65678555 0.48066926 0.54487014 0.4430306 0.57471931
		 0.40270045 0.61108088 0.3724671 0.64278507 0.66267097 0.38365108 0.62785703 0.41710716
		 0.59621418 0.44788355 0.55028331 0.48940933 0.51737612 0.51603138 0.93215549 0.96882534
		 0.92846251 0.97931838 0.9218654 0.98830223 0.97692227 0.93147385 0.96836054 0.93409383
		 0.95967364 0.93981826 0.95135152 0.94630575 0.94350052 0.95336783 0.93630302 0.96090376;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 76 ".pt[0:75]" -type "float3"  0.1 5 -0.1 0 5 -0.14493299 
		-0.1 5 -0.1 0.13489687 5 -0.046926711 0.034590956 5 -0.097005807 0.030866913 5 0.033750214 
		0.11261604 5 -0.046926711 0.021675814 5 -0.097005807 -0.059901576 5 -0.08638867 0.11261604 
		5 0.056613751 0.021824554 5 0.10073489 -0.059901576 5 0.086957574 0.13489687 5 0.056613751 
		0.056983154 5 0.10073489 -0.057406832 5 0.086957574 0.1 5 0.1 0 5 0.14493299 -0.1 
		5 0.1 0.14493299 5 0 -0.14493299 5 0 -0.0080778981 5 0.12042332 -0.098846398 5 0.00028445059 
		0.16283859 5 0.00028445059 0.14055777 5 0.00028445059 0.26245531 4.90804 0.01085137 
		0.26017126 4.9110751 0.014286737 0.26529554 4.9549413 0.013489325 0.26532477 4.9306798 
		0.010714417 0.26245546 4.9141626 0.017890278 0.26532501 4.9422026 0.015975062 0.23778881 
		5.066473 -0.023622055 0.22140092 5.0976667 0.0089290179 0.29361084 5.1117182 0.0067722993 
		0.2828061 5.0825124 -0.026081119 0.23778881 5.0851111 0.048187278 0.2828061 5.1011586 
		0.045728154 0.072369091 5 -0.088971719 0.15899527 5 -0.044038735 0.24301124 5 0.027710071 
		0.19807826 5 0.10366883 0.11145208 5 0.14860182 0.028199887 5 0.11636487 -0.016733099 
		5 0 0.028199887 5 -0.072289936 0.084069297 5 -0.089490086 0.1537481 5 -0.044557102 
		0.23776408 5 0 0.19283108 5 0.079064824 0.12315228 5 0.12399781 0.023167446 5 0.079064824 
		-0.021765543 5 0 0.023167446 5 -0.1 -0.12017556 5 -0.018409777 -0.10862384 5 0.00028445059 
		-0.12017556 5 0.018978678 -0.13574818 5 0.027378559 -0.15444238 5 0.018978678 -0.16284226 
		5 0.00028445059 -0.15444238 5 -0.018409777 -0.13574818 5 -0.026809657 -0.091353647 
		5 -0.049922626 -0.062561348 5 0.00028445059 -0.091353647 5 0.05049153 -0.13812457 
		5 0.073051065 -0.18553506 5 0.05049153 -0.20809457 5 0.00028445059 -0.18553506 5 
		-0.049922626 -0.13812457 5 -0.072482161 0.12314898 5 0.0513447 0.15169343 5 0.0016000906 
		0.125783 5 -0.057456087 0.046806216 5 -0.097241923 0.083988816 5 0.035065848 0.04504399 
		5 0.12042332 -0.034243342 5 0.086957574 0.058603752 5 0.10151075;
	setAttr -s 76 ".vt[0:75]"  -0.5 -5 0.5 0 -5 0.72466493 0.5 -5 0.5 -0.67448437 2.39942169 0.23463355
		 -0.17295478 2.31976175 0.48502904 0.28703415 2.2298975 0.43194336 -0.56308019 2.6237669 0.23463355
		 -0.10837907 2.73792171 0.48502904 0.29950789 2.78163147 0.43194336 -0.56308019 2.6237669 -0.28306875
		 -0.10912277 2.70800924 -0.50367445 0.29950789 2.75715733 -0.43478787 -0.67448437 2.39942169 -0.28306875
		 -0.28491578 2.27944803 -0.50367445 0.28703415 2.22989702 -0.43478787 -0.5 -5 -0.5
		 0 -5 -0.72466493 0.5 -5 -0.5 -0.72466493 -5 0 0.72466493 -5 0 0.48175824 2.2298975 -0.001422253
		 0.494232 2.78163147 -0.001422253 -0.81419295 2.39942169 -0.001422253 -0.70278883 2.81591511 -0.001422253
		 -1.24991214 3.023431778 -0.21323335 -1.34715676 3.034303665 -0.066977531 -1.1289978 3.1913166 -0.10092632
		 -1.12775123 3.10447121 -0.21906367 -1.24991155 3.045351028 0.086436391 -1.12775111 3.1457262 0.004899703
		 -1.47322512 3.66128564 -0.22679631 -1.48369384 3.67541814 -0.2060035 -1.43756771 3.68179011 -0.20738116
		 -1.44446945 3.66855025 -0.22836712 -1.47322512 3.66973543 -0.18092635 -1.44446945 3.67700005 -0.18249711
		 -0.55726039 -0.031447411 0.58611459 -0.99039131 -0.041552544 0.36144969 -1.21505618 -0.041552544 -0.13855036
		 -0.99039131 -0.041552544 -0.51834416 -0.55726039 -0.031447411 -0.74300909 -0.14099944 -0.031447411 -0.58182436
		 0.08366549 -0.031447411 0 -0.14099944 -0.031447411 0.36144969 -0.6157614 -2.51572371 0.58870643
		 -0.96415544 -2.51572371 0.36404151 -1.18882036 -2.51572371 0 -0.96415544 -2.51572371 -0.39532411
		 -0.6157614 -2.51572371 -0.61998904 -0.11583723 -2.51572371 -0.39532411 0.10882772 -2.51572371 0
		 -0.11583723 -2.51572371 0.5 0.60087776 6.0076084137 0.092048883 0.54311919 6.032476425 -0.001422253
		 0.60087776 6.0076084137 -0.094893388 0.67874086 5.99329185 -0.1368928 0.77221191 5.99329185 -0.094893388
		 0.81421131 5.99329185 -0.001422253 0.77221191 5.99329185 0.092048883 0.67874086 5.99329185 0.13404828
		 0.45676824 4.37241173 0.24961314 0.31280673 4.44655323 -0.001422253 0.45676824 4.37241173 -0.25245765
		 0.69062287 4.32403564 -0.36525533 0.92767531 4.284688 -0.25245765 1.040472865 4.284688 -0.001422253
		 0.92767531 4.284688 0.24961314 0.69062287 4.32403564 0.36241081 -0.61574489 2.15875483 -0.25672349
		 -0.7584672 2.19720268 -0.008000453 -0.62891495 2.1293354 0.28728044 -0.23403108 1.94095325 0.48620963
		 0.17121671 1.76526356 0.42536515 0.3659409 1.70143223 -0.001422253 0.17121671 1.79988194 -0.43478787
		 -0.29301876 2.028528214 -0.50755376;
	setAttr -s 143 ".ed[0:142]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 1 7 8 1 9 10 1
		 10 11 1 12 13 1 13 14 1 15 16 0 16 17 0 0 45 1 1 44 1 2 51 1 3 6 1 4 7 1 5 8 1 6 60 1
		 7 67 1 8 66 1 9 12 1 10 13 1 11 14 1 12 68 1 13 75 1 14 74 1 15 18 0 17 19 0 18 0 0
		 19 2 0 14 20 1 20 5 1 11 21 1 21 8 1 19 50 1 20 21 1 21 65 1 12 22 1 22 3 1 9 23 1
		 23 6 1 18 46 1 23 61 1 12 24 1 22 25 1 24 25 1 23 26 1 9 27 1 27 26 1 27 24 1 3 28 1
		 25 28 1 6 29 1 28 29 1 26 29 1 24 30 1 25 31 1 30 31 0 26 32 1 27 33 1 33 32 0 33 30 0
		 28 34 1 31 34 0 29 35 1 34 35 0 32 35 0 36 71 1 37 70 1 36 37 1 38 69 1 37 38 1 39 47 1
		 38 39 1 40 48 1 39 40 1 41 49 1 40 41 1 42 73 1 41 42 1 43 72 1 42 43 1 43 36 1 44 36 1
		 45 37 1 44 45 1 46 38 1 45 46 1 47 15 1 46 47 1 48 16 1 47 48 1 49 17 1 48 49 1 50 42 1
		 49 50 1 51 43 1 50 51 1 51 44 1 52 53 0 54 62 1 53 54 0 55 63 1 54 55 0 56 64 1 55 56 0
		 56 57 0 57 58 0 58 59 0 59 52 0 60 52 1 61 53 1 60 61 1 62 9 1 61 62 1 63 10 1 62 63 1
		 64 11 1 63 64 1 65 57 1 64 65 1 66 58 1 65 66 1 67 59 1 66 67 1 67 60 1 68 39 1 69 22 1
		 68 69 1 70 3 1 69 70 1 71 4 1 70 71 1 72 5 1 71 72 1 73 20 1 72 73 1 74 41 1 73 74 1
		 75 40 1 74 75 1 75 68 1;
	setAttr -s 66 -ch 264 ".fc[0:65]" -type "polyFaces" 
		f 4 0 13 86 -13
		mu 0 4 0 1 2 3
		f 4 1 14 99 -14
		mu 0 4 1 4 5 2
		f 4 2 16 -5 -16
		mu 0 4 6 7 8 9
		f 4 3 17 -6 -17
		mu 0 4 7 10 11 8
		f 4 4 19 126 -19
		mu 0 4 9 8 12 13
		f 4 5 20 125 -20
		mu 0 4 8 11 14 12
		f 4 117 116 -7 -115
		mu 0 4 15 16 17 18
		f 4 119 118 -8 -117
		mu 0 4 16 19 20 17
		f 4 6 22 -9 -22
		mu 0 4 18 17 21 22
		f 4 7 23 -10 -23
		mu 0 4 17 20 23 21
		f 4 92 91 -11 -90
		mu 0 4 24 25 26 27
		f 4 94 93 -12 -92
		mu 0 4 25 28 29 26
		f 4 -29 -94 96 -36
		mu 0 4 30 29 28 31
		f 4 -31 35 98 -15
		mu 0 4 4 30 31 5
		f 4 -32 -24 33 -37
		mu 0 4 32 23 20 33
		f 4 -33 36 34 -18
		mu 0 4 10 32 33 11
		f 4 -34 -119 121 -38
		mu 0 4 33 20 19 34
		f 4 -35 37 123 -21
		mu 0 4 11 33 34 14
		f 4 27 42 90 89
		mu 0 4 35 36 37 38
		f 4 29 12 88 -43
		mu 0 4 36 0 3 37
		f 4 40 43 115 114
		mu 0 4 39 40 41 42
		f 4 41 18 113 -44
		mu 0 4 40 9 13 41
		f 4 38 45 -47 -45
		mu 0 4 43 44 45 46
		f 4 -41 48 49 -48
		mu 0 4 47 48 49 50
		f 4 21 44 -51 -49
		mu 0 4 51 43 46 52
		f 4 39 51 -53 -46
		mu 0 4 44 53 54 45
		f 4 15 53 -55 -52
		mu 0 4 53 55 56 54
		f 4 -42 47 55 -54
		mu 0 4 55 47 50 56
		f 4 46 57 -59 -57
		mu 0 4 46 45 57 58
		f 4 -50 60 61 -60
		mu 0 4 50 49 59 60
		f 4 50 56 -63 -61
		mu 0 4 52 46 58 61
		f 4 52 63 -65 -58
		mu 0 4 45 54 62 57
		f 4 54 65 -67 -64
		mu 0 4 54 56 63 62
		f 4 -56 59 67 -66
		mu 0 4 56 50 60 63
		f 4 133 132 -3 -131
		mu 0 4 64 65 7 6
		f 4 131 130 -40 -129
		mu 0 4 66 64 6 67
		f 4 129 128 -39 24
		mu 0 4 68 66 67 69
		f 4 8 25 142 -25
		mu 0 4 22 21 70 71
		f 4 9 26 141 -26
		mu 0 4 21 23 72 70
		f 4 139 -27 31 -137
		mu 0 4 73 72 23 32
		f 4 137 136 32 -135
		mu 0 4 74 73 32 10
		f 4 135 134 -4 -133
		mu 0 4 65 74 10 7
		f 4 -87 84 70 -86
		mu 0 4 3 2 75 76
		f 4 -89 85 72 -88
		mu 0 4 37 3 76 77
		f 4 -91 87 74 73
		mu 0 4 38 37 77 78
		f 4 76 75 -93 -74
		mu 0 4 79 80 25 24
		f 4 78 77 -95 -76
		mu 0 4 80 81 28 25
		f 4 -97 -78 80 -96
		mu 0 4 31 28 81 82
		f 4 -99 95 82 -98
		mu 0 4 5 31 82 83
		f 4 -100 97 83 -85
		mu 0 4 2 5 83 75
		f 4 -114 111 100 -113
		mu 0 4 41 13 84 85
		f 4 -116 112 102 101
		mu 0 4 42 41 85 86
		f 4 104 103 -118 -102
		mu 0 4 87 88 16 15
		f 4 106 105 -120 -104
		mu 0 4 88 89 19 16
		f 4 -122 -106 107 -121
		mu 0 4 34 19 89 90
		f 4 -124 120 108 -123
		mu 0 4 14 34 90 91
		f 4 -126 122 109 -125
		mu 0 4 12 14 91 92
		f 4 -127 124 110 -112
		mu 0 4 13 12 92 84
		f 4 -75 71 -130 127
		mu 0 4 78 77 66 68
		f 4 -73 69 -132 -72
		mu 0 4 77 76 64 66
		f 4 -71 68 -134 -70
		mu 0 4 76 75 65 64
		f 4 -84 81 -136 -69
		mu 0 4 75 83 74 65
		f 4 -83 79 -138 -82
		mu 0 4 83 82 73 74
		f 4 -81 -139 -140 -80
		mu 0 4 82 81 72 73
		f 4 -142 138 -79 -141
		mu 0 4 70 72 81 80
		f 4 -143 140 -77 -128
		mu 0 4 71 70 80 79;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
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
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[73]" "e[75]" "e[77]" "e[84:85]" "e[87]" "e[95]" "e[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48462802171707153;
	setAttr ".dr" no;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[12:14]" "e[35]" "e[42]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.42236244678497314;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[76:83]" -type "float3"  -0.068482324 0 0 -0.068482324
		 0 0 -0.068482324 0 0 -0.068482324 0 0 -0.068482324 0 0 -0.068482324 0 0 -0.068482324
		 0 0 -0.068482324 0 0;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[101]" "e[103]" "e[105]" "e[111:112]" "e[120]" "e[122]" "e[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50756269693374634;
	setAttr ".dr" no;
	setAttr ".re" 124;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[0]" -type "float3" 0.033968691 0 0.071573146 ;
	setAttr ".tk[1]" -type "float3" 0.011036674 0 0.103397 ;
	setAttr ".tk[2]" -type "float3" 0.081861801 0 0.071573146 ;
	setAttr ".tk[15]" -type "float3" -0.066961117 0 -0.070077099 ;
	setAttr ".tk[16]" -type "float3" 0.011036674 0 -0.10190094 ;
	setAttr ".tk[17]" -type "float3" 0.081861801 0 -0.070077099 ;
	setAttr ".tk[18]" -type "float3" 0.0021448489 0 0.00074802444 ;
	setAttr ".tk[19]" -type "float3" 0.11368562 0 0.00074802444 ;
	setAttr ".tk[36]" -type "float3" -0.00070188829 0 -0.023089807 ;
	setAttr ".tk[37]" -type "float3" 0.014760258 -1.9073486e-006 -0.015069583 ;
	setAttr ".tk[38]" -type "float3" 0.021036468 -1.9073486e-006 0.0040403497 ;
	setAttr ".tk[39]" -type "float3" 0.013016254 -1.9073486e-006 0.10090123 ;
	setAttr ".tk[40]" -type "float3" -0.0024458941 0 0.10892149 ;
	setAttr ".tk[41]" -type "float3" -0.017305803 0 0.097461164 ;
	setAttr ".tk[42]" -type "float3" -0.062554032 0 -0.00090569473 ;
	setAttr ".tk[43]" -type "float3" -0.054533847 0 -0.013808925 ;
	setAttr ".tk[44]" -type "float3" 0.0013865122 0 -0.023182306 ;
	setAttr ".tk[45]" -type "float3" -0.032615941 0 -0.015162108 ;
	setAttr ".tk[46]" -type "float3" -0.026339741 0 -0.00090569473 ;
	setAttr ".tk[47]" -type "float3" 0.01207966 0 -0.028656077 ;
	setAttr ".tk[48]" -type "float3" -0.00035749481 0 -0.020635869 ;
	setAttr ".tk[49]" -type "float3" -0.018204056 0 0.013206796 ;
	setAttr ".tk[50]" -type "float3" -0.035763033 0 -0.00090569473 ;
	setAttr ".tk[51]" -type "float3" -0.027742833 0 -0.018754978 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.081220903 ;
	setAttr ".tk[76]" -type "float3" 0.0034303148 -5.9604645e-008 -0.023137471 ;
	setAttr ".tk[77]" -type "float3" -0.029106155 1.1920929e-007 -0.015117282 ;
	setAttr ".tk[78]" -type "float3" -0.022829952 1.1920929e-007 0.0014912968 ;
	setAttr ".tk[79]" -type "float3" 0.015589468 1.1920929e-007 0.098637953 ;
	setAttr ".tk[80]" -type "float3" 0.0016863078 -5.9604645e-008 0.10665811 ;
	setAttr ".tk[81]" -type "float3" -0.014712851 -5.9604645e-008 0.056215361 ;
	setAttr ".tk[82]" -type "float3" -0.059961081 -5.9604645e-008 -0.00090569473 ;
	setAttr ".tk[83]" -type "float3" -0.051940873 -5.9604645e-008 -0.016357979 ;
	setAttr ".tk[84]" -type "float3" -0.09179005 0 0.097375646 ;
	setAttr ".tk[85]" -type "float3" -0.052615143 0 0.065551817 ;
	setAttr ".tk[86]" -type "float3" -0.081516162 0 0.00074802444 ;
	setAttr ".tk[87]" -type "float3" -0.15062213 0 -0.11539133 ;
	setAttr ".tk[88]" -type "float3" -0.088867232 0 -0.14721517 ;
	setAttr ".tk[89]" -type "float3" -0.018046664 0 -0.063814573 ;
	setAttr ".tk[90]" -type "float3" 0.0020250324 0 0.00074802444 ;
	setAttr ".tk[91]" -type "float3" -0.029798813 0 0.071573146 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[18:20]" "e[37]" "e[43]" "e[114]" "e[116]" "e[118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.35276791453361511;
	setAttr ".dr" no;
	setAttr ".re" 18;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[92:99]" -type "float3"  0.074499622 0.005208951 0
		 0.072978377 -0.05012301 0 0.059714667 -0.088697843 0 0.072978377 -0.05012301 0 0.074499622
		 0.005208951 0 0.070345215 0.062656157 0 0.064558603 0.088697873 0 0.070345215 0.062656157
		 0;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[56:57]" "e[59:60]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.88856327533721924;
	setAttr ".dr" no;
	setAttr ".re" 63;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[1]" -type "float3" 0.062727861 0 0.031165408 ;
	setAttr ".tk[2]" -type "float3" 0.062727861 0 0.031165408 ;
	setAttr ".tk[3]" -type "float3" -1.44355e-008 0 -7.4505806e-009 ;
	setAttr ".tk[4]" -type "float3" 4.6566129e-010 0 -7.4505806e-009 ;
	setAttr ".tk[6]" -type "float3" 4.6566129e-010 0 -7.4505806e-009 ;
	setAttr ".tk[7]" -type "float3" 4.6566129e-010 0 -7.4505806e-009 ;
	setAttr ".tk[12]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.062727816 0 0.031165468 ;
	setAttr ".tk[22]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.00065770169 0.082995147 0 ;
	setAttr ".tk[37]" -type "float3" 0.0016703249 0.12087934 0 ;
	setAttr ".tk[38]" -type "float3" 0.002550029 0.13622995 5.5879354e-009 ;
	setAttr ".tk[39]" -type "float3" 0.0014258801 0.11661375 7.4505806e-009 ;
	setAttr ".tk[40]" -type "float3" 0.00041327035 0.078729562 0 ;
	setAttr ".tk[41]" -type "float3" -0.0016695843 0.042384509 0 ;
	setAttr ".tk[42]" -type "float3" -0.0025500066 0.027021203 0 ;
	setAttr ".tk[43]" -type "float3" -0.0014258563 0.046637408 0 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.060502205 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.060502205 ;
	setAttr ".tk[68]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[69]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[70]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[78]" -type "float3" 0 0 5.5879354e-009 ;
	setAttr ".tk[79]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[84]" -type "float3" 0.062727861 0 0.031165408 ;
	setAttr ".tk[90]" -type "float3" 0.062727816 0 0.031165468 ;
	setAttr ".tk[91]" -type "float3" 0.062727861 0 0.031165408 ;
	setAttr ".tk[100]" -type "float3" -0.051839825 0 -0.026292823 ;
	setAttr ".tk[101]" -type "float3" -0.036774989 0 -0.00054552517 ;
	setAttr ".tk[102]" -type "float3" -0.051839825 0 0.028349809 ;
	setAttr ".tk[103]" -type "float3" -0.091986604 0 0.047827713 ;
	setAttr ".tk[104]" -type "float3" -0.12912393 0 0.03882597 ;
	setAttr ".tk[105]" -type "float3" -0.14681464 0 -0.00054552517 ;
	setAttr ".tk[106]" -type "float3" -0.12912393 0 0.020585174 ;
	setAttr ".tk[107]" -type "float3" -0.092037953 0 0.012674481 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[30:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[30]" -type "float3" 0.035361528 0.035311699 0.055075362 ;
	setAttr ".tk[31]" -type "float3" 0.06221807 -0.010014534 0.0017314851 ;
	setAttr ".tk[32]" -type "float3" -0.056117892 -0.030438423 0.0052658617 ;
	setAttr ".tk[33]" -type "float3" -0.038411498 0.012007713 0.059105232 ;
	setAttr ".tk[34]" -type "float3" 0.035361528 0.0082235336 -0.062603936 ;
	setAttr ".tk[35]" -type "float3" -0.038411498 -0.015088081 -0.058574036 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[95]" "e[97]" "e[99]" "e[169:170]" "e[172]" "e[180]" "e[182]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.88589149713516235;
	setAttr ".dr" no;
	setAttr ".re" 169;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[103]" -type "float3" 0.00021790573 0.01517906 -0.0062613324 ;
	setAttr ".tk[104]" -type "float3" 0.003279171 0.013897833 0.00027750354 ;
	setAttr ".tk[105]" -type "float3" 0.00021791662 0.0175607 0.0058895005 ;
	setAttr ".tk[106]" -type "float3" -0.0067431713 0.014735383 0.0062613324 ;
	setAttr ".tk[107]" -type "float3" -0.0081085879 0.010347987 0.00089164067 ;
	setAttr ".tk[108]" -type "float3" -0.0067431713 0.01211177 -0.0051332992 ;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 1 "vtx[47:54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[47]" -type "float3" 0.065396994 -0.0058393478 -0.07477691 ;
	setAttr ".tk[48]" -type "float3" 0.11160383 -0.030707359 4.6566129e-010 ;
	setAttr ".tk[49]" -type "float3" 0.065396994 -0.0058393478 0.07477691 ;
	setAttr ".tk[50]" -type "float3" 0.0031064749 0.008477211 0.10837644 ;
	setAttr ".tk[51]" -type "float3" -0.071670353 0.008477211 0.07477691 ;
	setAttr ".tk[52]" -type "float3" -0.10526985 0.008477211 4.6566129e-010 ;
	setAttr ".tk[53]" -type "float3" -0.071670353 0.008477211 -0.07477691 ;
	setAttr ".tk[54]" -type "float3" 0.0031064749 0.008477211 -0.10837643 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[22:33]" "f[98:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.88843508064746857 8.1379785537719727 -0.016969889402389526 ;
	setAttr ".ps" -type "double2" 0.87594184279441833 1.4771137237548828 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[3]" -type "float3" 0 0 0.075264938 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.075264938 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.070456527 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.070456527 ;
	setAttr ".tk[24]" -type "float3" -0.028698508 -0.078675218 -0.030734388 ;
	setAttr ".tk[25]" -type "float3" -0.051694613 -0.075462036 0.0038517781 ;
	setAttr ".tk[26]" -type "float3" -0.00010501807 -0.029048979 -0.0041763317 ;
	setAttr ".tk[27]" -type "float3" 0.00018974923 -0.054720208 -0.032113113 ;
	setAttr ".tk[28]" -type "float3" -0.02869834 -0.072196148 0.04013066 ;
	setAttr ".tk[29]" -type "float3" 0.00018983119 -0.042525776 0.020849099 ;
	setAttr ".tk[30]" -type "float3" -0.0778239 0.11346567 -0.029108018 ;
	setAttr ".tk[96]" -type "float3" -0.079558961 0.094594933 -0.0099862237 ;
	setAttr ".tk[97]" -type "float3" -0.086927988 0.097679131 -0.025726462 ;
	setAttr ".tk[98]" -type "float3" -0.079558991 0.088861965 -0.039235577 ;
	setAttr ".tk[99]" -type "float3" -0.062802322 0.095662914 -0.040130667 ;
	setAttr ".tk[100]" -type "float3" -0.059515495 0.10622438 -0.027204793 ;
	setAttr ".tk[101]" -type "float3" -0.062802322 0.10197846 -0.012701612 ;
	setAttr ".tk[102]" -type "float3" -0.00030924636 0.0024451269 -0.017501133 ;
	setAttr ".tk[103]" -type "float3" 0.0099393632 0.00098221167 -0.012075327 ;
	setAttr ".tk[104]" -type "float3" 0.017550312 -0.0024451269 -2.7494107e-010 ;
	setAttr ".tk[105]" -type "float3" 0.0099393632 0.00098221167 0.012075326 ;
	setAttr ".tk[106]" -type "float3" -0.00030924636 0.0024451269 0.017501133 ;
	setAttr ".tk[107]" -type "float3" -0.012221911 0.0018041916 0.012075326 ;
	setAttr ".tk[108]" -type "float3" -0.01755031 0.0013658386 -2.7494107e-010 ;
	setAttr ".tk[109]" -type "float3" -0.012221911 0.0018041916 -0.012075327 ;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[47]" "e[58]" "e[200]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk[0:131]" -type "float2" -0.07927236 0 -0.085075691
		 0 -0.063767642 0 -0.05907467 0 -0.090191722 0 -0.06993717 0 0.034498632 0 0.021780491
		 0 0.030682266 0 0.03829509 0 0.014911294 0 0.024334192 0 0.058302701 0 0.059716225
		 0 0.05471921 0 0.038511395 0 0.042900205 0 0.008274436 0 0.00099378824 0 0.048006296
		 0 0.011591136 0 0.0035598278 0 -0.0032072663 0 0.0098133087 0 -0.10262835 0 -0.095100105
		 0 -0.095029622 0 -0.097563386 0 -0.086441487 0 -0.092166364 0 -0.093896255 0 -0.078800917
		 0 0.0052391291 0 0.017982841 0 0.053705454 0 -0.067156486 0 -0.074787058 0 -0.052651867
		 0 -0.050057337 0 0.031633794 0 0.043352902 0 0.06265682 0 0.063696444 0 -0.79817009
		 0.58836216 -0.5850746 0.58836216 -0.03465474 0.3932822 -0.21634562 0.40038088 -0.84726
		 0.41567293 -0.94121516 0.49534252 -0.4320496 0.34746066 -0.4618237 0.29074875 -0.6382876
		 0.58836216 -0.13206972 0.38606742 -0.70216304 0.49534252 -0.26628351 0.32052127 0.17792651
		 0.010786347 0.11607732 0.030264791 -0.0050577428 0.015240487 0.060661905 -0.008091351
		 0.026033044 0 0.01596576 0 0.031518042 0 0.031393826 0 0.036381841 0 0.034758985
		 0 0.00019687414 0 -0.0035137534 0 0.0023348927 0 0.0048384666 0 0.015397012 0 -0.0035452247
		 0 0.0055476129 0 0.015340447 0 0.027017355 0 -0.047205746 0 -0.040299773 0 -0.034834683
		 0 -0.018662393 0 -0.011315048 0 0.095588207 0 0.077102602 0 -0.038209319 0 -0.033922881
		 0 -0.026227325 0 -0.015707135 0 -0.087466508 0 -0.077294409 0 -0.066176087 0 -0.053189218
		 0 -0.045390308 0 -0.082089618 0 -0.074477978 0 -0.069394425 0 -0.065841302 0 -0.09436965
		 0 -0.091460377 0 -0.090267077 0 -0.092436448 0 -0.088030517 0 0.067588747 0 0.066571295
		 0 0.066495657 0 0.069768667 0 0.05186075 0 0.056434333 0 0.062137544 0 0.06649524
		 0 0.068059444 0 0.040944278 0 0.047421575 0 0.046600878 0 0.0098022819 0 0.019152462
		 0 0.025633395 0 0.032483935 0 0.033512473 0 0.038141549 0 0.15042822 0.017599877
		 0.067332529 0.0012883497 0.12202054 -0.02408858 0.080861747 0 0.07626313 0 0.072296143
		 0 0.068861961 0 0.085608006 0 0.087565541 0 0.090097845 0 0.092669249 0 0.066232443
		 0 -0.038890712 -0.008091351 -0.24295272 0.29074875 -0.56041217 0.41567293;
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[205]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 109 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.060583297 -0.028383538 ;
	setAttr ".uvtk[1]" -type "float2" 0.06222995 -0.022439465 ;
	setAttr ".uvtk[2]" -type "float2" 0.029291684 -0.02172206 ;
	setAttr ".uvtk[3]" -type "float2" 0.02844114 -0.026416108 ;
	setAttr ".uvtk[4]" -type "float2" 0.063694485 -0.016483657 ;
	setAttr ".uvtk[5]" -type "float2" 0.03036424 -0.015973404 ;
	setAttr ".uvtk[6]" -type "float2" -0.038687382 -0.019180641 ;
	setAttr ".uvtk[7]" -type "float2" -0.037414167 -0.013561293 ;
	setAttr ".uvtk[8]" -type "float2" -0.043308828 -0.01267992 ;
	setAttr ".uvtk[9]" -type "float2" -0.041862402 -0.018065378 ;
	setAttr ".uvtk[10]" -type "float2" -0.036670778 -0.0085859755 ;
	setAttr ".uvtk[11]" -type "float2" -0.044257555 -0.0083967308 ;
	setAttr ".uvtk[12]" -type "float2" -0.066388465 -0.0058511952 ;
	setAttr ".uvtk[13]" -type "float2" -0.067162551 -0.0087653855 ;
	setAttr ".uvtk[14]" -type "float2" -0.065859832 -0.0031276206 ;
	setAttr ".uvtk[15]" -type "float2" -0.06590382 0.0077837845 ;
	setAttr ".uvtk[16]" -type "float2" -0.065431096 0.005172207 ;
	setAttr ".uvtk[17]" -type "float2" -0.041565333 0.0072595021 ;
	setAttr ".uvtk[18]" -type "float2" -0.039522383 0.012582913 ;
	setAttr ".uvtk[19]" -type "float2" -0.065459646 0.0025990745 ;
	setAttr ".uvtk[20]" -type "float2" -0.043174539 0.0026225587 ;
	setAttr ".uvtk[21]" -type "float2" -0.035697613 0.0083477041 ;
	setAttr ".uvtk[22]" -type "float2" -0.036290023 0.013258174 ;
	setAttr ".uvtk[23]" -type "float2" -0.036467765 0.0020676395 ;
	setAttr ".uvtk[24]" -type "float2" 0.031018281 0.0054477295 ;
	setAttr ".uvtk[25]" -type "float2" 0.03102153 0.0010704538 ;
	setAttr ".uvtk[26]" -type "float2" 0.062035989 0.0022844477 ;
	setAttr ".uvtk[27]" -type "float2" 0.060539108 0.008441071 ;
	setAttr ".uvtk[28]" -type "float2" 0.031214708 -0.0048878947 ;
	setAttr ".uvtk[29]" -type "float2" 0.063399293 -0.0037734406 ;
	setAttr ".uvtk[30]" -type "float2" 0.064388119 -0.010359869 ;
	setAttr ".uvtk[31]" -type "float2" 0.03112107 -0.0098795751 ;
	setAttr ".uvtk[32]" -type "float2" -0.036379073 -0.0039050439 ;
	setAttr ".uvtk[33]" -type "float2" -0.04424778 -0.0028810957 ;
	setAttr ".uvtk[34]" -type "float2" -0.065981425 -5.6848861e-005 ;
	setAttr ".uvtk[35]" -type "float2" 0.059125781 -0.040620878 ;
	setAttr ".uvtk[36]" -type "float2" 0.059516326 -0.034599259 ;
	setAttr ".uvtk[37]" -type "float2" 0.027543092 -0.031079307 ;
	setAttr ".uvtk[38]" -type "float2" 0.027452702 -0.036436841 ;
	setAttr ".uvtk[39]" -type "float2" -0.044081125 -0.026586875 ;
	setAttr ".uvtk[40]" -type "float2" -0.044656906 -0.021030467 ;
	setAttr ".uvtk[41]" -type "float2" -0.068865038 -0.011816308 ;
	setAttr ".uvtk[42]" -type "float2" -0.069957174 -0.015219614 ;
	setAttr ".uvtk[59]" -type "float2" -0.034770224 -0.018946156 ;
	setAttr ".uvtk[60]" -type "float2" -0.032247219 -0.014078364 ;
	setAttr ".uvtk[61]" -type "float2" -0.035989199 -0.022508606 ;
	setAttr ".uvtk[62]" -type "float2" -0.038639758 -0.022490665 ;
	setAttr ".uvtk[63]" -type "float2" -0.036150251 -0.025651738 ;
	setAttr ".uvtk[64]" -type "float2" -0.038852725 -0.025844797 ;
	setAttr ".uvtk[65]" -type "float2" -0.032301877 0.0078116199 ;
	setAttr ".uvtk[66]" -type "float2" -0.03342602 0.012555555 ;
	setAttr ".uvtk[67]" -type "float2" -0.030324975 0.0018697521 ;
	setAttr ".uvtk[68]" -type "float2" -0.029630164 -0.0038574198 ;
	setAttr ".uvtk[69]" -type "float2" -0.030898014 -0.0087326625 ;
	setAttr ".uvtk[70]" -type "float2" -0.0061179153 -0.015486404 ;
	setAttr ".uvtk[71]" -type "float2" -0.0064557544 -0.020543199 ;
	setAttr ".uvtk[72]" -type "float2" -0.0072203926 -0.026319489 ;
	setAttr ".uvtk[73]" -type "float2" -0.0085573867 -0.030624732 ;
	setAttr ".uvtk[74]" -type "float2" -0.0029628626 0.010392204 ;
	setAttr ".uvtk[75]" -type "float2" -0.0036879531 0.0050940653 ;
	setAttr ".uvtk[76]" -type "float2" -0.0043123714 0.00017453637 ;
	setAttr ".uvtk[77]" -type "float2" -0.0056115738 -0.0059586922 ;
	setAttr ".uvtk[78]" -type "float2" -0.0059049479 -0.010477946 ;
	setAttr ".uvtk[79]" -type "float2" -0.088487245 0.0006650826 ;
	setAttr ".uvtk[81]" -type "float2" 0.012441508 -0.019027874 ;
	setAttr ".uvtk[82]" -type "float2" 0.012053184 -0.024127468 ;
	setAttr ".uvtk[83]" -type "float2" 0.011250548 -0.029362693 ;
	setAttr ".uvtk[84]" -type "float2" 0.010263138 -0.033890948 ;
	setAttr ".uvtk[85]" -type "float2" 0.015523966 0.0067842742 ;
	setAttr ".uvtk[86]" -type "float2" 0.014928516 0.0022274395 ;
	setAttr ".uvtk[87]" -type "float2" 0.014391299 -0.0028644362 ;
	setAttr ".uvtk[88]" -type "float2" 0.013615217 -0.0082992772 ;
	setAttr ".uvtk[89]" -type "float2" 0.013113491 -0.013659641 ;
	setAttr ".uvtk[90]" -type "float2" 0.048797216 -0.022683367 ;
	setAttr ".uvtk[91]" -type "float2" 0.047290165 -0.027893886 ;
	setAttr ".uvtk[92]" -type "float2" 0.046301413 -0.033474937 ;
	setAttr ".uvtk[93]" -type "float2" 0.046190966 -0.039393678 ;
	setAttr ".uvtk[94]" -type "float2" 0.047677275 0.0076649031 ;
	setAttr ".uvtk[95]" -type "float2" 0.048673358 0.0021013087 ;
	setAttr ".uvtk[96]" -type "float2" 0.04986937 -0.0042891065 ;
	setAttr ".uvtk[97]" -type "float2" 0.050745856 -0.010602445 ;
	setAttr ".uvtk[98]" -type "float2" 0.050134312 -0.016848817 ;
	setAttr ".uvtk[99]" -type "float2" -0.07764063 -0.0035847286 ;
	setAttr ".uvtk[100]" -type "float2" -0.077986814 -0.0056902627 ;
	setAttr ".uvtk[101]" -type "float2" -0.07889507 -0.0079283575 ;
	setAttr ".uvtk[102]" -type "float2" -0.079748727 -0.010030136 ;
	setAttr ".uvtk[103]" -type "float2" -0.077144302 0.0057035228 ;
	setAttr ".uvtk[104]" -type "float2" -0.076902069 0.0041293046 ;
	setAttr ".uvtk[105]" -type "float2" -0.077136256 0.0025054356 ;
	setAttr ".uvtk[106]" -type "float2" -0.077544369 0.0006753942 ;
	setAttr ".uvtk[107]" -type "float2" -0.077572502 -0.0013984302 ;
	setAttr ".uvtk[108]" -type "float2" -0.050391231 -0.015230462 ;
	setAttr ".uvtk[109]" -type "float2" -0.052983556 -0.018029794 ;
	setAttr ".uvtk[110]" -type "float2" -0.053534124 -0.022247653 ;
	setAttr ".uvtk[111]" -type "float2" -0.048448417 0.010490075 ;
	setAttr ".uvtk[112]" -type "float2" -0.049867008 0.0064026853 ;
	setAttr ".uvtk[113]" -type "float2" -0.051127288 0.0027235886 ;
	setAttr ".uvtk[114]" -type "float2" -0.05206022 -0.0017114738 ;
	setAttr ".uvtk[115]" -type "float2" -0.051746998 -0.0066771964 ;
	setAttr ".uvtk[116]" -type "float2" -0.051261697 -0.010477946 ;
	setAttr ".uvtk[120]" -type "float2" -0.089086153 7.7023171e-005 ;
	setAttr ".uvtk[121]" -type "float2" -0.088118471 0.0011211177 ;
	setAttr ".uvtk[122]" -type "float2" -0.087138094 0.0022319099 ;
	setAttr ".uvtk[123]" -type "float2" -0.086129107 0.0033738753 ;
	setAttr ".uvtk[124]" -type "float2" -0.090040244 -0.00091438089 ;
	setAttr ".uvtk[125]" -type "float2" -0.088706769 -0.0016950229 ;
	setAttr ".uvtk[126]" -type "float2" -0.087709703 -0.002599583 ;
	setAttr ".uvtk[127]" -type "float2" -0.086780109 -0.0036855796 ;
	setAttr ".uvtk[128]" -type "float2" -0.085480608 0.0043328544 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[12:14]" "e[35]" "e[42]" "e[150]" "e[152]" "e[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.6131250262260437;
	setAttr ".re" 152;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 94 ".tk";
	setAttr ".tk[3]" -type "float3" 0.11647039 0 -0.5001691 ;
	setAttr ".tk[4]" -type "float3" -0.307282 0 -0.21073778 ;
	setAttr ".tk[5]" -type "float3" -0.60466242 0 0.085772805 ;
	setAttr ".tk[6]" -type "float3" 0.088981591 0 -0.43718386 ;
	setAttr ".tk[7]" -type "float3" -0.31328481 0 -0.19432408 ;
	setAttr ".tk[8]" -type "float3" -0.43011528 0 0.13700604 ;
	setAttr ".tk[9]" -type "float3" 0.61392969 0 -0.07146956 ;
	setAttr ".tk[10]" -type "float3" 0.49553922 0 0.34292337 ;
	setAttr ".tk[11]" -type "float3" 0.22929911 0 0.61923814 ;
	setAttr ".tk[12]" -type "float3" 0.63478035 0 -0.15153974 ;
	setAttr ".tk[13]" -type "float3" 0.53749204 0 0.20291181 ;
	setAttr ".tk[14]" -type "float3" 0.20633779 0 0.59401077 ;
	setAttr ".tk[20]" -type "float3" -0.38053638 0 0.52882338 ;
	setAttr ".tk[21]" -type "float3" -0.20791379 0 0.52686071 ;
	setAttr ".tk[22]" -type "float3" 0.42178291 0 -0.43572176 ;
	setAttr ".tk[23]" -type "float3" 0.42504638 0 -0.37478399 ;
	setAttr ".tk[24]" -type "float3" 0.89880288 0 -0.63852417 ;
	setAttr ".tk[25]" -type "float3" 0.79360485 0 -0.86632133 ;
	setAttr ".tk[26]" -type "float3" 0.72673392 0 -0.60284907 ;
	setAttr ".tk[27]" -type "float3" 0.84431261 0 -0.49701425 ;
	setAttr ".tk[28]" -type "float3" 0.5535475 0 -0.88276082 ;
	setAttr ".tk[29]" -type "float3" 0.59028763 0 -0.68830669 ;
	setAttr ".tk[30]" -type "float3" 1.1537434 0 -0.90889055 ;
	setAttr ".tk[31]" -type "float3" -0.12058152 0 -0.16560557 ;
	setAttr ".tk[32]" -type "float3" -0.026181389 0 -0.25990134 ;
	setAttr ".tk[33]" -type "float3" 0.12187978 0 -0.26713052 ;
	setAttr ".tk[34]" -type "float3" 0.19477396 0 -0.20573552 ;
	setAttr ".tk[35]" -type "float3" 0.25126263 0 -0.073468216 ;
	setAttr ".tk[36]" -type "float3" 0.18570714 0 0.045023017 ;
	setAttr ".tk[37]" -type "float3" 0.023866273 0 0.071531326 ;
	setAttr ".tk[38]" -type "float3" -0.074295923 0 -0.026460486 ;
	setAttr ".tk[39]" -type "float3" -0.0022329285 0 -0.0014255191 ;
	setAttr ".tk[40]" -type "float3" -0.00062329654 0 -0.0013574171 ;
	setAttr ".tk[41]" -type "float3" 3.7789603e-005 0 -0.00088536763 ;
	setAttr ".tk[42]" -type "float3" 0.000854354 0 -0.0011650259 ;
	setAttr ".tk[43]" -type "float3" 0.0021488608 0 -0.00096210901 ;
	setAttr ".tk[44]" -type "float3" 0.0028742836 0 0.0011900591 ;
	setAttr ".tk[45]" -type "float3" 0.00032199116 0 0.0033050594 ;
	setAttr ".tk[46]" -type "float3" -0.0033088843 0 0.001174505 ;
	setAttr ".tk[47]" -type "float3" -0.31109375 0 0.67189735 ;
	setAttr ".tk[48]" -type "float3" -0.36334229 0 0.33424443 ;
	setAttr ".tk[49]" -type "float3" -0.074464202 0 0.3820321 ;
	setAttr ".tk[50]" -type "float3" 0.030184595 0 0.65549618 ;
	setAttr ".tk[51]" -type "float3" -0.031036692 0 0.91096681 ;
	setAttr ".tk[52]" -type "float3" -0.27112648 0 1.0245968 ;
	setAttr ".tk[53]" -type "float3" -0.54006416 0 0.95238239 ;
	setAttr ".tk[54]" -type "float3" -0.72393155 0 0.6549533 ;
	setAttr ".tk[55]" -type "float3" -0.66066408 0 0.39697626 ;
	setAttr ".tk[56]" -type "float3" 0.49144673 0 -0.15924568 ;
	setAttr ".tk[57]" -type "float3" 0.37506622 0 -0.38150558 ;
	setAttr ".tk[58]" -type "float3" 0.059655853 0 -0.42735252 ;
	setAttr ".tk[59]" -type "float3" -0.30532822 0 -0.22382821 ;
	setAttr ".tk[60]" -type "float3" -0.56691051 0 0.14213005 ;
	setAttr ".tk[61]" -type "float3" -0.34786564 0 0.4790419 ;
	setAttr ".tk[62]" -type "float3" 0.1589711 0 0.45145023 ;
	setAttr ".tk[63]" -type "float3" 0.51431239 0 0.19637467 ;
	setAttr ".tk[64]" -type "float3" -0.08134295 0 -0.073195703 ;
	setAttr ".tk[65]" -type "float3" -0.036337439 0 -0.11629163 ;
	setAttr ".tk[66]" -type "float3" 0.022934634 0 -0.12568788 ;
	setAttr ".tk[67]" -type "float3" 0.061470639 0 -0.09924724 ;
	setAttr ".tk[68]" -type "float3" 0.097700082 0 -0.047943834 ;
	setAttr ".tk[69]" -type "float3" 0.077929258 0 0.022279281 ;
	setAttr ".tk[70]" -type "float3" 0.0017487764 0 0.046738587 ;
	setAttr ".tk[71]" -type "float3" -0.06794215 0 -0.0022282493 ;
	setAttr ".tk[80]" -type "float3" -0.56626356 0 0.5877955 ;
	setAttr ".tk[81]" -type "float3" -0.40582949 0 0.51424819 ;
	setAttr ".tk[82]" -type "float3" -0.19702294 0 0.53216392 ;
	setAttr ".tk[83]" -type "float3" -0.13767083 0 0.73315746 ;
	setAttr ".tk[84]" -type "float3" -0.17761289 0 0.90506768 ;
	setAttr ".tk[85]" -type "float3" -0.3395862 0 0.98049825 ;
	setAttr ".tk[86]" -type "float3" -0.51821727 0 0.92561972 ;
	setAttr ".tk[87]" -type "float3" -0.6077441 0 0.76158917 ;
	setAttr ".tk[88]" -type "float3" 0.08184842 0 -0.18299827 ;
	setAttr ".tk[89]" -type "float3" 0.32107708 0 -0.15687221 ;
	setAttr ".tk[90]" -type "float3" 0.42373273 0 0.076105945 ;
	setAttr ".tk[91]" -type "float3" 0.36280444 0 0.4220351 ;
	setAttr ".tk[92]" -type "float3" 0.12983982 0 0.61335254 ;
	setAttr ".tk[93]" -type "float3" -0.20390753 0 0.53278959 ;
	setAttr ".tk[94]" -type "float3" -0.42392302 0 0.18379018 ;
	setAttr ".tk[95]" -type "float3" -0.29603022 0 -0.084428109 ;
	setAttr ".tk[96]" -type "float3" 1.0552857 0 -0.98577332 ;
	setAttr ".tk[97]" -type "float3" 1.1527981 0 -0.96380609 ;
	setAttr ".tk[98]" -type "float3" 1.1959436 0 -0.87800074 ;
	setAttr ".tk[99]" -type "float3" 1.1606283 0 -0.79334962 ;
	setAttr ".tk[100]" -type "float3" 1.0934266 0 -0.82619369 ;
	setAttr ".tk[101]" -type "float3" 1.0285552 0 -0.89597619 ;
	setAttr ".tk[102]" -type "float3" -0.41468123 0 0.59650826 ;
	setAttr ".tk[103]" -type "float3" -0.33658808 0 0.56355959 ;
	setAttr ".tk[104]" -type "float3" -0.23303735 0 0.57628024 ;
	setAttr ".tk[105]" -type "float3" -0.1998447 0 0.67518967 ;
	setAttr ".tk[106]" -type "float3" -0.21649414 0 0.75829774 ;
	setAttr ".tk[107]" -type "float3" -0.3022787 0 0.80066913 ;
	setAttr ".tk[108]" -type "float3" -0.39528057 0 0.77502412 ;
	setAttr ".tk[109]" -type "float3" -0.43902317 0 0.68903887 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[118:119]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.32401934 0.2029672 -0.32678348 ;
	setAttr ".rs" 47391;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10810669511556625 0 -0.68548047542572021 ;
	setAttr ".cbx" -type "double3" 0.75614535808563232 0.40593439340591431 0.031913492828607559 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[72]" -type "float3" 0.0088746883 0 -0.096526735 ;
	setAttr ".tk[73]" -type "float3" 0.061500728 0 -0.062219635 ;
	setAttr ".tk[74]" -type "float3" 0.088656463 0 -0.0013291985 ;
	setAttr ".tk[75]" -type "float3" 0.073020205 0 0.066624649 ;
	setAttr ".tk[76]" -type "float3" 0.014994565 0 0.096526735 ;
	setAttr ".tk[77]" -type "float3" -0.051549323 0 0.059334606 ;
	setAttr ".tk[78]" -type "float3" -0.088656463 0 -0.0057342406 ;
	setAttr ".tk[79]" -type "float3" -0.058754411 0 -0.072282374 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[118:119]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.72784746 0.11286984 -0.81184256 ;
	setAttr ".rs" 38192;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.49701693654060364 0.0044499053619801998 -1.0034497976303101 ;
	setAttr ".cbx" -type "double3" 0.95867800712585449 0.22128976881504059 -0.62023526430130005 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[118:123]" -type "float3"  0.33030054 0.0044499054 -0.41830981
		 0.20253268 0.0044499054 -0.65214878 0.38580614 -0.18464462 -0.42581245 0.26015592
		 -0.18464462 -0.65214878 0.60512364 -0.18464462 -0.31796929 0.54962337 0.0044499054
		 -0.31976193;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[248:249]" "e[251]" "e[253]" "e[256]" "e[258]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4362170398235321;
	setAttr ".dr" no;
	setAttr ".re" 253;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[118:129]" -type "float3"  -0.28726491 0 0.25741667 -0.28726491
		 0 0.25741667 -0.28726491 0 0.25741667 -0.28726491 0 0.25741667 -0.28726491 0 0.25741667
		 -0.28726491 0 0.25741667 0.19051595 -0.003134327 -0.30873188 0.072009876 -0.003134327
		 -0.52562004 0.24199732 -0.17852062 -0.31569076 0.12545589 -0.17852062 -0.52562004
		 0.44541433 -0.17852062 -0.21566574 0.39393836 -0.003134327 -0.21732789;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[113:114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.51832986 0.2029672 -0.0011757612 ;
	setAttr ".rs" 60075;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.67062836885452271 0 -0.4739246666431427 ;
	setAttr ".cbx" -type "double3" -0.36603131890296936 0.40593439340591431 0.47157314419746399 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[110]" -type "float3" 0.07767278 -0.092002042 0.081315309 ;
	setAttr ".tk[116]" -type "float3" -0.05267407 -0.037265413 -0.1314449 ;
	setAttr ".tk[121]" -type "float3" -0.0090865316 -0.030577142 -0.037352916 ;
	setAttr ".tk[122]" -type "float3" 0.05232624 -0.042883802 0.023614854 ;
	setAttr ".tk[124]" -type "float3" 0.2990838 0 -0.14239457 ;
	setAttr ".tk[125]" -type "float3" 0.30507752 0 -0.13142464 ;
	setAttr ".tk[126]" -type "float3" 0.29647997 0 -0.14204262 ;
	setAttr ".tk[127]" -type "float3" 0.28297547 0 -0.12840576 ;
	setAttr ".tk[128]" -type "float3" 0.28792807 0 -0.12360812 ;
	setAttr ".tk[129]" -type "float3" 0.2887952 0 -0.1470176 ;
	setAttr ".tk[130]" -type "float3" 0.11091294 -0.030577142 -0.19785583 ;
	setAttr ".tk[131]" -type "float3" 0.10198918 0 -0.18845434 ;
	setAttr ".tk[132]" -type "float3" 0.13068341 -0.042883802 -0.17691252 ;
	setAttr ".tk[133]" -type "float3" 0.075973861 0 -0.20529608 ;
	setAttr ".tk[134]" -type "float3" 0.11080395 0 -0.18964562 ;
	setAttr ".tk[135]" -type "float3" 0.1310951 0 -0.15250953 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[113:114]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.80012643 0.068978496 0.0045731217 ;
	setAttr ".rs" 42488;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.90590429306030273 -0.0065963752567768097 -0.46625199913978577 ;
	setAttr ".cbx" -type "double3" -0.69434857368469238 0.14455336332321167 0.47539824247360229 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[111]" -type "float3" 0 -0.083161674 0.08818391 ;
	setAttr ".tk[113]" -type "float3" 0 -0.084266677 -0.073986731 ;
	setAttr ".tk[136]" -type "float3" -0.32831722 -0.0065963753 0.0038251127 ;
	setAttr ".tk[137]" -type "float3" -0.32831722 -0.0065963753 0.0038251127 ;
	setAttr ".tk[138]" -type "float3" -0.21219178 -0.26138103 0.0038251127 ;
	setAttr ".tk[139]" -type "float3" -0.23409797 -0.26138103 0.068743065 ;
	setAttr ".tk[140]" -type "float3" -0.32831722 -0.0065963753 0.0038251127 ;
	setAttr ".tk[141]" -type "float3" -0.24713923 -0.26138103 -0.061092854 ;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[260:261]" "e[263]" "e[265]" "e[267]" "e[269]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.8735930323600769;
	setAttr ".dr" no;
	setAttr ".re" 261;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[137]" -type "float3" 0.086582854 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.025915926 0.043562509 0 ;
	setAttr ".tk[142]" -type "float3" -0.21214961 -0.1140589 0.22720467 ;
	setAttr ".tk[143]" -type "float3" -0.096792057 -0.097468354 0.02050457 ;
	setAttr ".tk[144]" -type "float3" -0.35393718 -0.25940621 0.02050457 ;
	setAttr ".tk[145]" -type "float3" -0.36408773 -0.26229668 0.20039321 ;
	setAttr ".tk[146]" -type "float3" -0.31739613 -0.12919569 -0.18619557 ;
	setAttr ".tk[147]" -type "float3" -0.44789693 -0.27435011 -0.15089686 ;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[124:129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[124]" -type "float3" -0.018545151 0.020726785 0.016674161 ;
	setAttr ".tk[125]" -type "float3" -0.052548528 0.020726785 -0.045559168 ;
	setAttr ".tk[126]" -type "float3" -0.0037732124 -0.020726785 0.014677644 ;
	setAttr ".tk[127]" -type "float3" -0.01781404 -0.020726785 -0.048578024 ;
	setAttr ".tk[128]" -type "float3" 0.052857637 -0.020726785 0.019884467 ;
	setAttr ".tk[129]" -type "float3" 0.039823294 0.020726785 0.042901039 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[115:117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.14477788 0.2029672 0.30738148 ;
	setAttr ".rs" 51783;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.46658959984779358 0 -0.099531412124633789 ;
	setAttr ".cbx" -type "double3" 0.75614535808563232 0.40593439340591431 0.71429437398910522 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[124]" -type "float3" 0.015148464 -0.016174944 -0.013766162 ;
	setAttr ".tk[125]" -type "float3" -0.021379152 0 -0.023891745 ;
	setAttr ".tk[126]" -type "float3" 0.0020062269 0 0.012402169 ;
	setAttr ".tk[127]" -type "float3" 0.032691609 2.3283064e-010 0.028078584 ;
	setAttr ".tk[128]" -type "float3" 0.035786353 0 0.034270596 ;
	setAttr ".tk[129]" -type "float3" -0.0094394106 0 0.01394922 ;
	setAttr ".tk[130]" -type "float3" -0.035786361 0 -0.034270599 ;
	setAttr ".tk[143]" -type "float3" -0.0005395175 -0.014344238 0.007653302 ;
	setAttr ".tk[144]" -type "float3" 0.023860719 -0.012352816 0.012504964 ;
	setAttr ".tk[145]" -type "float3" 0.020305518 0.0054761469 0.021147862 ;
	setAttr ".tk[146]" -type "float3" -0.0076024872 0.0054761469 0.0086079156 ;
	setAttr ".tk[147]" -type "float3" -0.023860719 0.0054761469 -0.021147862 ;
	setAttr ".tk[148]" -type "float3" -0.00979036 -0.012924308 -0.020010941 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[131]" -type "float3" 0 -0.04607942 0.15730865 ;
	setAttr ".tk[132]" -type "float3" 0 -0.04607942 -5.1348641e-009 ;
	setAttr ".tk[133]" -type "float3" 0 0 -5.1348641e-009 ;
	setAttr ".tk[134]" -type "float3" 0 0 0.13690425 ;
	setAttr ".tk[135]" -type "float3" 0 -0.04607942 -0.15730865 ;
	setAttr ".tk[136]" -type "float3" 0 0 -0.13044471 ;
	setAttr ".tk[137]" -type "float3" 0 0 0.056957006 ;
	setAttr ".tk[138]" -type "float3" 0.025866579 0 -6.0041292e-009 ;
	setAttr ".tk[139]" -type "float3" 0 0 -6.0041292e-009 ;
	setAttr ".tk[140]" -type "float3" 0 0 0.12240738 ;
	setAttr ".tk[141]" -type "float3" 0 0 -0.056956999 ;
	setAttr ".tk[142]" -type "float3" 0 0 -0.12006846 ;
	setAttr ".tk[149]" -type "float3" 0.2274518 -0.40609241 0.73884052 ;
	setAttr ".tk[150]" -type "float3" 0.22745183 -0.40609241 0.73884052 ;
	setAttr ".tk[151]" -type "float3" 0.2274518 -0.48789302 0.73884052 ;
	setAttr ".tk[152]" -type "float3" 0.2274518 -0.40609241 0.73884052 ;
	setAttr ".tk[153]" -type "float3" 0.22745183 -0.40609241 0.73884052 ;
	setAttr ".tk[154]" -type "float3" 0.2274518 -0.48789302 0.73884052 ;
	setAttr ".tk[155]" -type "float3" 0.2274518 -0.40609241 0.73884052 ;
	setAttr ".tk[156]" -type "float3" 0.2274518 -0.40609241 0.73884052 ;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[300:301]" "e[303]" "e[305]" "e[308]" "e[310]" "e[313]" "e[315]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.33599764108657837;
	setAttr ".re" 303;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[110]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[115]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[122]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[123]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[124]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[125]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[126]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[127]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[128]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[130]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[131]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[136]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[137]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[138]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[139]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[140]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[141]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[142]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[143]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[144]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[145]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[146]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[147]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[148]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[149]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[150]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[151]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[152]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[153]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[154]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[155]" -type "float3" 0 -0.02378471 0 ;
	setAttr ".tk[156]" -type "float3" 0 -0.02378471 0 ;
createNode objectSet -n "set1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 22 "e[0:1]" "e[11]" "e[25:28]" "e[233:235]" "e[242:243]" "e[245:246]" "e[250]" "e[256]" "e[258:261]" "e[263:265]" "e[270:271]" "e[275:277]" "e[279]" "e[281:284]" "e[286:287]" "e[291]" "e[293:296]" "e[300:302]" "e[308:309]" "e[313:314]" "e[323]" "e[325:330]";
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[149:164]" -type "float3"  0.18578388 0.067043431 -0.059717387
		 0.025827905 0.067043424 -0.14799631 0.071894944 -0.050845727 -0.14236398 0.22235745
		 -0.049948834 -0.027175723 -0.14541358 0.067043416 -0.071052372 -0.10042272 -0.050845757
		 -0.071052372 -0.2223575 0.067043424 0.10018913 -0.15820877 -0.067043424 0.14799632
		 0.059611585 0 -0.070311949 -0.061527856 0 -0.020179773 -0.049348623 0 0.3071368 -0.094445273
		 0 0.27352834 -0.093156546 0 -0.020179773 0.027226422 0 -0.074271418 0.13967571 0
		 -0.012211261 0.16538695 0 0.010665549;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 15 "f[113:114]" "f[118]" "f[122]" "f[124]" "f[128]" "f[133:134]" "f[136]" "f[139]" "f[142]" "f[145]" "f[150:151]" "f[154]" "f[157]" "f[159]" "f[165:167]";
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.030804097652435303 5.319467693567276 -0.015733420848846436 ;
	setAttr ".ps" -type "double2" 2.5351227521896362 11.364602744579315 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[30]" -type "float3" 0.018438598 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.018438067 0 0 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.028674757 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.028674757 ;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[10]" "e[16]" "e[29:32]";
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[17]" "e[20]" "e[59]" "e[75]" "e[85]" "e[92]" "e[116]" "e[126]" "e[142]" "e[158]" "e[172]" "e[202]" "e[211]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 173 ".uvtk[0:172]" -type "float2" 0.37148914 0 0.25196171 0
		 0.32010633 0 0.41271487 0 0.1038844 0 0.19639879 0 0.30811247 0 0.35053867 0 0.33330667
		 0 0.093166739 0 0.32056272 0 0.2799049 0 0.2762998 0 0.20367458 0 0.25319955 0 0.030580387
		 0 0.1187405 0 -0.081639707 0 0.041068181 0 0.093688935 0 0.086528793 0 0.19400883
		 0 -0.11466065 0 0.10579258 0 0.36683315 0 0.48908395 0 0.38479155 0 0.33410752 0
		 0.29070443 0 0.19753659 0 0.08423616 0 0.16315648 0 0.20048484 0 0.16440067 0 0.15324211
		 0 0.41481155 0 0.44183961 0 -0.0098468065 0 0.12983742 0 0.21089479 0 0.070418566
		 0 -0.020117521 0 -0.059594214 0 -0.012185872 0 0.11750817 0 0.041393608 0 0.0020941794
		 0 -0.030387521 0 -0.051665574 0 -0.032081455 0 0.025090009 0 0.00041052699 0 0.31865311
		 0 0.36889678 0 0.21201614 0 0.10190922 0 -0.037490964 0 0.16502497 0 0.21856403 0
		 0.33679983 0 0.52141857 0 0.42923844 0 0.47407079 0 0.56061804 0 0.54587907 0 0.55918628
		 0 0.42444709 0 0.43134806 0 0.5223695 0 0.29115939 0 0.35822368 0 0.36835188 0 0.27413023
		 0 0.30202287 0 0.30512685 0 0.36322993 0 0.073771462 0 0.16293433 0 0.13335499 0
		 0.072632685 0 -0.034477293 0 -0.0030056834 0 -0.048379958 0 -0.10194185 0 0.057640091
		 0 0.051641598 0 0.10537165 0 0.093101472 0 0.19313997 0 0.13817337 0 0.22658321 0
		 0.15990487 0 0.3404707 0 0.46901184 0 0.51029193 0 0.44886893 0 0.3396703 0 0.2619012
		 0 0.28598404 0 0.15506613 0 0.12642705 0 0.11418232 0 0.084933922 0 0.04758139 0
		 0.071722344 0 0.072255746 0 0.090874285 0 0.11449769 0 -0.017436832 0 0.087394223
		 0 0.36945462 0 0.28516936 0 0.21417642 0 0.11732495 0 0.14665544 0 0.23853703 0 0.011347979
		 0 0.039882496 0 -0.027510911 0 0.014983252 0 0.096639842 0 0.16133088 0 0.008643955
		 0 0.064405441 0 0.25019157 0 0.24698775 0 -0.0024360716 0 0.029395476 0 -0.021980792
		 0 0.070795193 0 0.074989155 0 -0.14615667 0 -0.13989127 0 -0.12329939 0 -0.12573555
		 0 -0.15569523 0 0.44330072 0 0.50691414 0 0.43988723 0 0.34079689 0 0.4497309 0 0.44673556
		 0 0.60139191 0 0.63519782 0 0.53435159 0 0.6086272 0 0.5575937 0 -0.16916803 0 0.30225697
		 0 0.20573431 0 0.27117902 0 0.089746535 0 0.040664569 0 -0.0080111325 0 0.18457475
		 0 0.2901049 0 -0.14471611 0 0.02712366 0 0.11548734 0 0.065530717 0 0.0743099 0 0.051775768
		 0 0.024586126 0 0.057026699 0 -0.067985088 0 0.14028609 0 0.048702672 0 0.19305855
		 0 0.26917163 0 0.55823404 0 0.2059648 0 0.40816498 0 -0.044638813 0;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[22:33]" "f[98:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.14957068860530853 8.1379785537719727 -0.67222601175308228 ;
	setAttr ".ps" -type "double2" 0.62607243657112122 1.4771137237548828 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[33]" "e[37]" "e[48]" "e[88]" "e[154]" "e[168]" "e[190]" "e[198]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 182 ".uvtk[0:181]" -type "float2" -0.53016925 0.15527456 -0.53267336
		 0.11457107 -0.47845462 0.10902099 -0.47143099 0.13906141 -0.54081059 0.079768576
		 -0.48649579 0.074628748 0.039871819 0.065715022 0.026554279 0.037108965 0.059386209
		 0.02869661 -0.8043462 0.71069163 0.012608168 0.009446281 0.056706913 0.0016797977
		 0.10302435 0.016185539 0.10412107 0.041100085 0.099649414 -0.0033781771 0.11213766
		 0.075386591 0.080070987 -0.075095221 0.077181563 0.11545434 0.065050818 0.093555361
		 0.086045004 -0.055926062 0.040783994 -0.057711937 -0.0062658563 -0.088914916 -0.22412765
		 0.63199764 -0.0021341788 -0.053607322 -0.45602378 0.20495838 -0.51080799 -0.029355153
		 -0.5696398 -0.01078896 -0.5145191 0.22181737 -0.50264812 0.0055448553 -0.55563402
		 0.016368074 -0.55277151 0.041875377 -0.49454951 0.040183201 0.0063647069 -0.017257297
		 0.04966373 -0.028444136 0.092902519 -0.03223417 -0.51572865 0.18704449 -0.46389383
		 0.17129791 0.065293096 0.40559548 0.11979066 0.054544739 0.044247881 0.084431678
		 -0.33285591 0.4529959 -0.38965455 0.57345384 -0.89217782 0.63961834 -0.49108574 0.42726481
		 -0.28860337 0.38491297 0.13342996 0.57003236 0.28339556 0.36331409 0.11137925 0.42833805
		 0.045393407 0.24721947 0.0052057505 -0.048617788 -0.14983729 -0.0094521362 -0.24190632
		 -0.0090296585 0.018034451 0.068447255 -0.0033053216 0.044227183 0.028233416 0.08791241
		 0.029217072 0.10580411 0.024925003 0.13379849 -0.036903232 -0.049261011 -0.036641277
		 -0.013099533 -0.025395133 0.012280776 -0.35790211 0.11386584 -0.36430496 0.08648067
		 -0.26854509 0.067527913 -0.26234084 0.09580683 -0.35197225 0.13922811 -0.25582969
		 0.12365527 -0.34462187 0.1706658 -0.25025558 0.14749551 -0.2965669 -0.052321762 -0.33880553
		 0.1955424 -0.28955394 -0.022327265 -0.38664991 -0.0090891868 -0.38009635 0.01894073
		 -0.28259262 0.0074463999 -0.3720938 0.053167634 -0.27546066 0.037949696 0.20100306
		 0.026245145 0.19082512 0.009102731 0.25119928 -0.010243312 0.25522164 0.0032022437
		 0.19966905 0.046928458 0.25761139 0.01718167 0.26198131 0.027242212 0.19958757 0.063797645
		 0.24563389 -0.056226172 0.1684543 -0.055354044 0.17196816 -0.040325686 0.25042024
		 -0.045023739 0.17623577 -0.022072813 0.25092664 -0.033589408 0.18278034 -0.0080866963
		 0.25045434 -0.022058336 -0.13861099 0.12964627 -0.14235181 0.10666474 -0.15101314
		 0.075084142 -0.15981402 0.047328942 -0.16976459 0.017710609 -0.17723347 -0.0072524715
		 -0.18340589 -0.039119989 -0.13389659 0.15969616 0.30805206 -0.034128807 0.30972615
		 -0.02997762 0.31249493 -0.025185138 0.31238061 -0.018623855 0.30313081 -0.055176564
		 0.30471218 -0.04973118 0.3061533 -0.044469394 0.30716503 -0.039241277 -0.088451192
		 -0.11486918 0.31596386 -0.035611235 -0.594625 -0.0059133321 -0.53742194 0.23874563
		 -0.59181297 0.12679048 -0.59465051 0.11465459 -0.57786095 0.11305568 -0.57547879
		 0.12380255 -0.59720755 0.10371779 -0.58040679 0.10216703 -0.60019314 0.090948567
		 -0.58131129 0.088212326 -0.57077658 0.028206838 -0.57076216 0.01738493 -0.58059943
		 0.054074392 -0.58493161 0.033961192 -0.57630473 0.0089429161 -0.59029508 0.011022105
		 -0.57919443 0.019920902 -0.57693958 0.018681662 -0.5877713 0.022302674 -0.58045334
		 0.018917011 -0.58815968 0.020642059 -0.58511239 0.020997213 -0.58491546 0.020968752
		 -0.58518976 0.021016674 -0.58760786 0.021601992 -0.58761668 0.021564322 -0.53211462
		 0.20999412 -0.53253394 0.19269581 -0.54686391 0.21711044 -0.55743206 0.15316187 -0.54010975
		 0.17579897 -0.55664694 0.17526831 -0.5558458 0.20185415 -0.55620766 0.19927777 -0.55448806
		 0.20869775 -0.55802953 0.19680451 -0.56019843 0.18966208 -0.58769906 0.021620171
		 -0.54641855 0.13434069 -0.54716682 0.1109303 -0.57147408 0.14166848 -0.55201328 0.090201832
		 -0.55664164 0.073887512 -0.58638328 0.077901587 0.074989058 0.067670651 0.056252018
		 0.055922687 0.10494566 -0.053976424 0.027841832 -0.090864472 -0.054580346 -0.089660339
		 0.047866359 0.099907599 -0.50454378 0.26762837 -0.52801996 0.27895802 0.31301343
		 -0.012908304 0.23988144 -0.06727881 0.11922024 0.092346698 0.030652219 -0.083552524
		 0.1680031 -0.071289159 -0.4487429 0.23609889 -0.24348103 0.17472759 -0.39480084 -0.043950729
		 -0.026118256 -0.084514953 -0.18696167 -0.067264386 0.043769442 0.12508693 0.31249493
		 -0.025185138 0.31596386 -0.035611235 -0.15783307 -0.026069077 0.11979066 0.054544739
		 0.20100306 0.026245145 0.25522164 0.0032022437 -0.13780922 0.19191518 0.074989058
		 0.067670651 -0.19130111 0.3195861;
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
connectAttr "groupId1.id" "tallTree_a_geo_00Shape1.iog.og[0].gid";
connectAttr "set1.mwc" "tallTree_a_geo_00Shape1.iog.og[0].gco";
connectAttr "polyTweakUV4.out" "tallTree_a_geo_00Shape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "tallTree_a_geo_00Shape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing4.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing5.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyMergeVert1.mp";
connectAttr "polySplitRing5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing6.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing6.mp";
connectAttr "polyMergeVert1.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert2.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyMergeVert2.mp";
connectAttr "polySplitRing6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyPlanarProj1.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyPlanarProj1.mp";
connectAttr "polyMergeVert2.out" "polyTweak8.ip";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV2.ip";
connectAttr "polyTweak9.out" "polySplitRing7.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing7.mp";
connectAttr "polyTweakUV2.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace1.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing7.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace2.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing8.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing8.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace3.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing8.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace4.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polySplitRing9.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing9.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert3.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyMergeVert3.mp";
connectAttr "polySplitRing9.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace5.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyMergeVert3.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polySoftEdge1.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polySplitRing10.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polySplitRing10.mp";
connectAttr "polySoftEdge1.out" "polyTweak19.ip";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "tallTree_a_geo_00Shape1.iog.og[0]" "set1.dsm" -na;
connectAttr "polySplitRing10.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "polyTweak20.ip";
connectAttr "polyTweak20.out" "deleteComponent1.ig";
connectAttr "polyTweak21.out" "polyPlanarProj2.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyPlanarProj2.mp";
connectAttr "deleteComponent1.og" "polyTweak21.ip";
connectAttr "polyPlanarProj2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyPlanarProj3.ip";
connectAttr "tallTree_a_geo_00Shape1.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV4.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "tallTree_a_geo_00Shape1.iog" ":initialShadingGroup.dsm" -na;
// End of tallTree_a_SJ_003.ma
