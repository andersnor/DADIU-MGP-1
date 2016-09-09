//Maya ASCII 2015 scene
//Name: tallTree_b_SJ_003.ma
//Last modified: Fri, Sep 09, 2016 04:06:32 PM
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
	setAttr ".t" -type "double3" -6.080220541624052 9.4548683815881667 -23.183516227332184 ;
	setAttr ".r" -type "double3" -11.738352669674267 -3404.1999999977975 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.683165305224133;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.5648742914199829 7.6979044419930727 -0.17615425772964954 ;
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
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 4.9843755704568178 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.082605719566345215 0.86197167634963989 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[59]" -type "float3" 0.013362984 0 0 ;
	setAttr ".pt[60]" -type "float3" 0.013362984 0 0 ;
	setAttr ".pt[61]" -type "float3" 0.013362984 0 0 ;
	setAttr ".pt[62]" -type "float3" 0.013362984 0 0 ;
	setAttr ".pt[63]" -type "float3" 0.013362984 0 0 ;
	setAttr ".pt[64]" -type "float3" 0.013362984 0 0 ;
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
createNode polyCube -n "polyCube1";
	setAttr ".h" 10;
	setAttr ".sw" 2;
	setAttr ".sh" 5;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[28:30]" "e[61:63]" "e[78]" "e[91]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.89158761501312256;
	setAttr ".dr" no;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.16849869 ;
	setAttr ".tk[3]" -type "float3" 0 1.4685485 0 ;
	setAttr ".tk[4]" -type "float3" 0 1.4685485 0.16849869 ;
	setAttr ".tk[5]" -type "float3" 0 1.4685485 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.12577912 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.12577912 0.16849869 ;
	setAttr ".tk[8]" -type "float3" 0 -0.12577912 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.58198535 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.58198535 0.16849869 ;
	setAttr ".tk[11]" -type "float3" 0 0.58198535 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.94804263 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.94804263 0.16849869 ;
	setAttr ".tk[14]" -type "float3" 0 -0.94804263 0 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.16849869 ;
	setAttr ".tk[18]" -type "float3" -0.16849869 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.16849869 0 0 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.16849869 ;
	setAttr ".tk[24]" -type "float3" 0 -0.94804263 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.94804263 -0.16849869 ;
	setAttr ".tk[26]" -type "float3" 0 -0.94804263 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.58198535 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.58198535 -0.16849869 ;
	setAttr ".tk[29]" -type "float3" 0 0.58198535 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.12577912 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.12577912 -0.16849869 ;
	setAttr ".tk[32]" -type "float3" 0 -0.12577912 0 ;
	setAttr ".tk[33]" -type "float3" 0 1.4685485 0 ;
	setAttr ".tk[34]" -type "float3" 0 1.4685485 -0.16849869 ;
	setAttr ".tk[35]" -type "float3" 0 1.4685485 0 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.16849869 ;
	setAttr ".tk[39]" -type "float3" -0.16849869 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.16849869 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.16849869 1.4685485 0 ;
	setAttr ".tk[43]" -type "float3" 0.16849869 -0.12577912 0 ;
	setAttr ".tk[44]" -type "float3" 0.16849869 0.58198535 0 ;
	setAttr ".tk[45]" -type "float3" 0.16849869 -0.94804263 0 ;
	setAttr ".tk[46]" -type "float3" -0.16849869 1.4685485 0 ;
	setAttr ".tk[47]" -type "float3" -0.16849869 -0.12577912 0 ;
	setAttr ".tk[48]" -type "float3" -0.16849869 0.58198535 0 ;
	setAttr ".tk[49]" -type "float3" -0.16849869 -0.94804263 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[30:31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.65969598 3.8090496 0 ;
	setAttr ".rs" 42743;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.57544666528701782 3.6062134504318237 -0.5 ;
	setAttr ".cbx" -type "double3" 0.74394536018371582 4.0118857622146606 0.5 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[3]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[4]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[5]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[6]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[7]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[8]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[9]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[10]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[11]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[12]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[13]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[14]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[15]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[16]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[17]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[18]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[19]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[20]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[21]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[22]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[23]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[24]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[25]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[26]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[27]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[28]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[29]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[30]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[31]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[32]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[33]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[34]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[35]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[42]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[43]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[44]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[45]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[46]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[47]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[48]" -type "float3" 0.075446643 0.13766491 0 ;
	setAttr ".tk[49]" -type "float3" 0.075446643 0.13766491 0 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[111:112]" "e[114]" "e[116]" "e[119]" "e[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.51143622398376465;
	setAttr ".dr" no;
	setAttr ".re" 119;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[58:63]" -type "float3"  1.68612015 3.87221932 -0.014369528
		 1.65098894 3.96759844 -0.012864125 1.38525438 3.73716807 0.014173223 1.35012388 3.83254766
		 0.015678603 1.7272259 3.81272435 -0.016987668 1.42636049 3.67767239 0.011555088;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[124:125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.84202742576599121;
	setAttr ".dr" no;
	setAttr ".re" 125;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 -0.10558785 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.10558785 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.10558785 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.10558785 ;
	setAttr ".tk[42]" -type "float3" 0 5.5879354e-009 0 ;
	setAttr ".tk[43]" -type "float3" -0.036878474 0.31758094 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.065522917 0.21287574 ;
	setAttr ".tk[59]" -type "float3" 0 0 0.0047545289 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.20103079 ;
	setAttr ".tk[61]" -type "float3" -0.1802365 0 -0.007090502 ;
	setAttr ".tk[62]" -type "float3" 0 0.065522917 -0.20103079 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.21287574 ;
	setAttr ".tk[64]" -type "float3" 0.31761518 -0.92247105 -0.21800961 ;
	setAttr ".tk[65]" -type "float3" 0.20530817 -1.0927491 -0.22447759 ;
	setAttr ".tk[66]" -type "float3" -0.013990304 -1.1265409 -0.0038717836 ;
	setAttr ".tk[67]" -type "float3" 0.19194506 -1.1095603 0.21800959 ;
	setAttr ".tk[68]" -type "float3" 0.35303572 -0.96731687 0.22447759 ;
	setAttr ".tk[69]" -type "float3" 0.29008356 -1.0684307 0.0025962091 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[44:45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.50880271 6.9546361 0 ;
	setAttr ".rs" 54228;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.59305202960968018 6.7196502685546875 -0.5 ;
	setAttr ".cbx" -type "double3" -0.42455336451530457 7.1896224021911621 0.5 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[15]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.74971098 0 ;
	setAttr ".tk[58]" -type "float3" 0.12732592 0.05740435 0.21278165 ;
	setAttr ".tk[59]" -type "float3" 0.033155069 0.020869672 0.0047524255 ;
	setAttr ".tk[60]" -type "float3" 0.36983031 -0.059284434 0.20094171 ;
	setAttr ".tk[61]" -type "float3" 0.41460598 -0.12381671 -0.0070873699 ;
	setAttr ".tk[62]" -type "float3" 0.090721115 0.096347883 -0.20094171 ;
	setAttr ".tk[63]" -type "float3" 0.33322495 -0.020340312 -0.21278165 ;
	setAttr ".tk[64]" -type "float3" -0.012774534 0.0072921859 -0.027563678 ;
	setAttr ".tk[65]" -type "float3" 0.01400038 -0.0094381887 -0.028381446 ;
	setAttr ".tk[66]" -type "float3" 0.023032293 -0.014006659 -0.00048952253 ;
	setAttr ".tk[67]" -type "float3" 0.017459271 -0.010807925 0.027563678 ;
	setAttr ".tk[68]" -type "float3" -0.014222762 0.0087424703 0.028381446 ;
	setAttr ".tk[69]" -type "float3" -0.023032293 0.014006659 0.00032824746 ;
	setAttr ".tk[70]" -type "float3" -0.0046070926 0.02592247 -0.099405579 ;
	setAttr ".tk[71]" -type "float3" 0.0034560896 -0.038142044 -0.0030716341 ;
	setAttr ".tk[72]" -type "float3" 0.00078191236 0.00048345572 0.094274193 ;
	setAttr ".tk[73]" -type "float3" -0.072676592 0.12455653 0.099405579 ;
	setAttr ".tk[74]" -type "float3" -0.12051578 0.13999708 0.0020596748 ;
	setAttr ".tk[75]" -type "float3" -0.076071493 0.14710553 -0.094274223 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[147:148]" "e[150]" "e[152]" "e[155]" "e[157]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.45979723334312439;
	setAttr ".re" 157;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[76:81]" -type "float3"  -2.23366952 2.60627127 -1.4901161e-008
		 -2.079371929 2.77417374 0 -1.61107337 2.34381056 0 -1.7653712 2.1759088 -1.4901161e-008
		 -2.23366952 2.60627127 1.4901161e-008 -1.7653712 2.1759088 1.4901161e-008;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[40:42]" "e[49:51]" "e[81]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.34761974215507507;
	setAttr ".re" 41;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 59 ".tk";
	setAttr ".tk[5]" -type "float3" 0.031592157 -1.1175871e-008 0 ;
	setAttr ".tk[6]" -type "float3" 0.070852801 0.35664251 0 ;
	setAttr ".tk[7]" -type "float3" 0.01038391 0.14683454 0 ;
	setAttr ".tk[9]" -type "float3" 0.20813316 0 -0.16287583 ;
	setAttr ".tk[10]" -type "float3" 0.19699685 0 -0.01488921 ;
	setAttr ".tk[11]" -type "float3" 0.1965033 0 -0.01113633 ;
	setAttr ".tk[12]" -type "float3" 0.25910509 0 -0.16287583 ;
	setAttr ".tk[13]" -type "float3" 0.24796873 0 -0.01488921 ;
	setAttr ".tk[14]" -type "float3" 0.23683238 0 -0.01113633 ;
	setAttr ".tk[15]" -type "float3" 0.25910509 0 -0.01113633 ;
	setAttr ".tk[16]" -type "float3" 0.24796873 0 -0.01488921 ;
	setAttr ".tk[17]" -type "float3" 0.23683238 0 -0.01113633 ;
	setAttr ".tk[18]" -type "float3" 0.262858 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.24796873 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.23307958 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.25910509 0 0.01113633 ;
	setAttr ".tk[22]" -type "float3" 0.24796873 0 0.01488921 ;
	setAttr ".tk[23]" -type "float3" 0.23683238 0 0.01113633 ;
	setAttr ".tk[24]" -type "float3" 0.25910509 0 0.16287583 ;
	setAttr ".tk[25]" -type "float3" 0.24796873 0 0.01488921 ;
	setAttr ".tk[26]" -type "float3" 0.23683238 0 0.01113633 ;
	setAttr ".tk[27]" -type "float3" 0.20813316 0 0.16287583 ;
	setAttr ".tk[28]" -type "float3" 0.19699685 0 0.01488921 ;
	setAttr ".tk[29]" -type "float3" 0.1965033 0 0.01113633 ;
	setAttr ".tk[30]" -type "float3" 0.070852801 0.35664251 0 ;
	setAttr ".tk[31]" -type "float3" 0.01038391 0.14683454 0 ;
	setAttr ".tk[35]" -type "float3" 0.031592157 -1.1175871e-008 0 ;
	setAttr ".tk[42]" -type "float3" 0.031592157 -1.1175871e-008 0 ;
	setAttr ".tk[44]" -type "float3" 0.19275041 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.23307958 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.070953548 0.4248428 0 ;
	setAttr ".tk[48]" -type "float3" 0.25443992 -0.13761804 0 ;
	setAttr ".tk[49]" -type "float3" 0.27959108 0.21526313 0 ;
	setAttr ".tk[50]" -type "float3" 0.020986458 0.04753742 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.046081755 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.11874597 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.046081755 0 ;
	setAttr ".tk[54]" -type "float3" 0.020986458 0.04753742 0 ;
	setAttr ".tk[55]" -type "float3" -0.010087569 0.099932961 0 ;
	setAttr ".tk[56]" -type "float3" -0.010087569 0.099932961 0 ;
	setAttr ".tk[57]" -type "float3" -0.010087569 0.099932961 0 ;
	setAttr ".tk[65]" -type "float3" -0.0198166 -0.051350143 0 ;
	setAttr ".tk[67]" -type "float3" -0.01983935 0.012667381 0 ;
	setAttr ".tk[69]" -type "float3" 0.0069650123 -0.085489713 0 ;
	setAttr ".tk[70]" -type "float3" -0.0065721385 -0.050850097 0 ;
	setAttr ".tk[73]" -type "float3" 0.039156541 -0.051828325 0 ;
	setAttr ".tk[74]" -type "float3" 0.039156541 -0.051828325 0 ;
	setAttr ".tk[76]" -type "float3" 0.52304715 0.034155231 0.34795141 ;
	setAttr ".tk[77]" -type "float3" 0.48860908 -0.1460799 0 ;
	setAttr ".tk[78]" -type "float3" 0.24667053 -0.10175083 0 ;
	setAttr ".tk[79]" -type "float3" 0.20677716 0.012947589 0.34795141 ;
	setAttr ".tk[80]" -type "float3" 0.52304715 0.034155231 -0.34795141 ;
	setAttr ".tk[81]" -type "float3" 0.20677716 0.012947589 -0.34795141 ;
	setAttr ".tk[82]" -type "float3" 0.11417504 -0.10351346 -0.20184571 ;
	setAttr ".tk[83]" -type "float3" 0.13807231 -0.073315509 -0.20184571 ;
	setAttr ".tk[84]" -type "float3" 0.15238923 -0.23943152 0 ;
	setAttr ".tk[85]" -type "float3" 0.13807231 -0.073315509 0.20184571 ;
	setAttr ".tk[86]" -type "float3" 0.11417504 -0.10351346 0.20184571 ;
	setAttr ".tk[87]" -type "float3" 0.27881441 -0.17229758 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[10:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.32341543 10.887376 0 ;
	setAttr ".rs" 41771;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.0047702193260192871 10.887375831604004 -0.32818567752838135 ;
	setAttr ".cbx" -type "double3" 0.65160107612609863 10.887375831604004 0.32818567752838135 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[15]" -type "float3" 0.24339889 0 -0.24339887 ;
	setAttr ".tk[16]" -type "float3" 4.0930995e-008 0 -0.32542384 ;
	setAttr ".tk[17]" -type "float3" -0.24339887 0 -0.24339887 ;
	setAttr ".tk[18]" -type "float3" 0.32542381 0 0 ;
	setAttr ".tk[19]" -type "float3" 4.0930995e-008 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.32542381 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.24339889 0 0.24339887 ;
	setAttr ".tk[22]" -type "float3" 4.0930995e-008 0 0.32542384 ;
	setAttr ".tk[23]" -type "float3" -0.24339887 0 0.24339887 ;
	setAttr ".tk[88]" -type "float3" 0.20797265 0.20462063 -0.12906064 ;
	setAttr ".tk[89]" -type "float3" 0.30450287 0.20462063 -0.076983437 ;
	setAttr ".tk[90]" -type "float3" 0.33487761 0.065061748 0 ;
	setAttr ".tk[91]" -type "float3" 0.30450287 0.20462063 0.076983377 ;
	setAttr ".tk[92]" -type "float3" 0.20797262 0.20462063 0.12906064 ;
	setAttr ".tk[93]" -type "float3" 0.11144248 0.20462063 0.096530229 ;
	setAttr ".tk[94]" -type "float3" 0.07891205 0.20462063 0 ;
	setAttr ".tk[95]" -type "float3" 0.11144251 0.20462063 -0.096530229 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 95 ".tk";
	setAttr ".tk[3]" -type "float3" -0.05416787 0 -0.17479502 ;
	setAttr ".tk[4]" -type "float3" -0.08048439 0 -0.11088078 ;
	setAttr ".tk[5]" -type "float3" -0.049217187 0 -0.039039098 ;
	setAttr ".tk[6]" -type "float3" -0.054775838 0 -0.16553314 ;
	setAttr ".tk[7]" -type "float3" -0.080573514 0 -0.10952339 ;
	setAttr ".tk[8]" -type "float3" -0.048946105 0 -0.043168832 ;
	setAttr ".tk[9]" -type "float3" -0.14398421 1.3969839e-009 -0.22546986 ;
	setAttr ".tk[10]" -type "float3" -0.25953579 1.8626451e-009 -0.094977841 ;
	setAttr ".tk[11]" -type "float3" -0.23315579 -9.3132257e-009 0.060217515 ;
	setAttr ".tk[12]" -type "float3" -0.14626722 -1.3969839e-009 -0.21038596 ;
	setAttr ".tk[13]" -type "float3" -0.26181877 1.8626451e-009 -0.079893939 ;
	setAttr ".tk[14]" -type "float3" -0.23496202 -3.7252903e-009 0.072151855 ;
	setAttr ".tk[15]" -type "float3" -0.061127961 -0.090797812 -0.14432409 ;
	setAttr ".tk[16]" -type "float3" -0.12227803 -0.090797767 -0.093933567 ;
	setAttr ".tk[17]" -type "float3" -0.14045615 -0.090797789 -0.016809652 ;
	setAttr ".tk[18]" -type "float3" 0.015995875 -0.090797789 -0.12614593 ;
	setAttr ".tk[19]" -type "float3" -0.090065591 -0.090797789 0.044340372 ;
	setAttr ".tk[20]" -type "float3" 0.066386431 -0.090797812 -0.064995803 ;
	setAttr ".tk[21]" -type "float3" 0.048208334 -0.090797782 0.01212797 ;
	setAttr ".tk[22]" -type "float3" -0.012941739 -0.090797782 0.062518582 ;
	setAttr ".tk[23]" -type "float3" 0.053259812 -1.3969839e-009 -0.18018717 ;
	setAttr ".tk[24]" -type "float3" 0.12502012 0 -0.021344982 ;
	setAttr ".tk[25]" -type "float3" 0.05437205 7.4505806e-009 0.11594315 ;
	setAttr ".tk[26]" -type "float3" 0.055542834 1.8626451e-009 -0.19527104 ;
	setAttr ".tk[27]" -type "float3" 0.12730311 -4.6566129e-009 -0.036428921 ;
	setAttr ".tk[28]" -type "float3" 0.056178354 1.8626451e-009 0.10400873 ;
	setAttr ".tk[29]" -type "float3" 0.075944342 0 -0.15695244 ;
	setAttr ".tk[30]" -type "float3" 0.094199032 0 -0.098051019 ;
	setAttr ".tk[31]" -type "float3" 0.054169148 0 -0.036400165 ;
	setAttr ".tk[32]" -type "float3" 0.076552302 0 -0.16621433 ;
	setAttr ".tk[33]" -type "float3" 0.094288141 0 -0.099408418 ;
	setAttr ".tk[34]" -type "float3" 0.05389807 0 -0.032270439 ;
	setAttr ".tk[41]" -type "float3" 0.0008946039 0 -0.013628588 ;
	setAttr ".tk[42]" -type "float3" 0.0014821296 0 -0.022579081 ;
	setAttr ".tk[43]" -type "float3" -0.095867485 0 0.13086551 ;
	setAttr ".tk[44]" -type "float3" -0.097673848 3.7252903e-009 0.14280012 ;
	setAttr ".tk[45]" -type "float3" 0.012638056 0 -0.19253087 ;
	setAttr ".tk[46]" -type "float3" 0.012029225 0 -0.18325581 ;
	setAttr ".tk[47]" -type "float3" -0.038747869 2.3283064e-010 -0.24653012 ;
	setAttr ".tk[48]" -type "float3" -0.039874367 -6.9849193e-010 -0.23908724 ;
	setAttr ".tk[49]" -type "float3" -0.080017105 0 -0.11799981 ;
	setAttr ".tk[50]" -type "float3" -0.053520486 0 -0.18465742 ;
	setAttr ".tk[51]" -type "float3" 0.013285439 0 -0.20239325 ;
	setAttr ".tk[52]" -type "float3" 0.077199697 0 -0.17607673 ;
	setAttr ".tk[53]" -type "float3" 0.094755448 0 -0.10652745 ;
	setAttr ".tk[54]" -type "float3" 0.068705559 0 -0.046675205 ;
	setAttr ".tk[55]" -type "float3" 0.0018996297 0 -0.028939364 ;
	setAttr ".tk[56]" -type "float3" -0.062014632 0 -0.055255897 ;
	setAttr ".tk[57]" -type "float3" -0.029926877 0 -0.33502126 ;
	setAttr ".tk[58]" -type "float3" -0.012560549 0 -0.34539282 ;
	setAttr ".tk[59]" -type "float3" -0.027533345 0 -0.32263815 ;
	setAttr ".tk[60]" -type "float3" -0.009209523 0 -0.32416952 ;
	setAttr ".tk[61]" -type "float3" 0.0063142022 0 -0.3399215 ;
	setAttr ".tk[62]" -type "float3" 0.0087077329 0 -0.32753846 ;
	setAttr ".tk[63]" -type "float3" -0.039707117 0 0.29941362 ;
	setAttr ".tk[64]" -type "float3" -0.038438641 0 0.26546529 ;
	setAttr ".tk[65]" -type "float3" -0.0053149732 0 0.25963897 ;
	setAttr ".tk[66]" -type "float3" 0.027216921 0 0.26571178 ;
	setAttr ".tk[67]" -type "float3" 0.02557176 0 0.30539873 ;
	setAttr ".tk[68]" -type "float3" -0.0079531483 0 0.31445363 ;
	setAttr ".tk[69]" -type "float3" 0.042186864 0 -0.23973814 ;
	setAttr ".tk[70]" -type "float3" 0.0028421816 0 -0.21952777 ;
	setAttr ".tk[71]" -type "float3" -0.03969726 0 -0.22478575 ;
	setAttr ".tk[72]" -type "float3" -0.048117302 0 -0.28209943 ;
	setAttr ".tk[73]" -type "float3" -0.0084496522 0 -0.30335629 ;
	setAttr ".tk[74]" -type "float3" 0.034654971 0 -0.28885219 ;
	setAttr ".tk[75]" -type "float3" 0.086713202 7.4505806e-009 -0.7713685 ;
	setAttr ".tk[76]" -type "float3" 0.043896653 -3.7252903e-009 -0.79257196 ;
	setAttr ".tk[77]" -type "float3" 0.033758271 -3.7252903e-009 -0.72558635 ;
	setAttr ".tk[78]" -type "float3" 0.079904005 -1.1175871e-008 -0.72637951 ;
	setAttr ".tk[79]" -type "float3" -0.0032768184 7.4505806e-009 -0.78498858 ;
	setAttr ".tk[80]" -type "float3" -0.010086009 -3.7252903e-009 -0.73999953 ;
	setAttr ".tk[81]" -type "float3" -0.20524478 -0.050532684 -0.49173522 ;
	setAttr ".tk[82]" -type "float3" -0.19667117 -0.050532684 -0.5483827 ;
	setAttr ".tk[83]" -type "float3" -0.10471159 -0.050532684 -0.55966032 ;
	setAttr ".tk[84]" -type "float3" -0.020208435 -0.050532684 -0.52167475 ;
	setAttr ".tk[85]" -type "float3" -0.028782191 -0.050532684 -0.46502724 ;
	setAttr ".tk[86]" -type "float3" -0.12001818 -0.050532684 -0.45852855 ;
	setAttr ".tk[87]" -type "float3" -0.082984306 -7.4505806e-009 0.033887547 ;
	setAttr ".tk[88]" -type "float3" -0.0027765417 -4.6566129e-009 -0.072733663 ;
	setAttr ".tk[89]" -type "float3" 0.095344462 0 -0.095253095 ;
	setAttr ".tk[90]" -type "float3" 0.18240656 -4.6566129e-009 -0.044705823 ;
	setAttr ".tk[91]" -type "float3" 0.22747003 -1.1175871e-008 0.080875531 ;
	setAttr ".tk[92]" -type "float3" 0.17077208 -3.7252903e-009 0.19105498 ;
	setAttr ".tk[93]" -type "float3" 0.048748828 7.4505806e-009 0.21260883 ;
	setAttr ".tk[94]" -type "float3" -0.061430655 3.7252903e-009 0.15591069 ;
	setAttr ".tk[95]" -type "float3" 0.37753257 0.41620836 -0.16478564 ;
	setAttr ".tk[96]" -type "float3" 0.18446833 0.39266151 -0.20795475 ;
	setAttr ".tk[97]" -type "float3" 0.23524696 0.43014887 0.0434504 ;
	setAttr ".tk[98]" -type "float3" 0.45993236 0.42414334 0.011386012 ;
	setAttr ".tk[99]" -type "float3" 0.0045869602 0.36911473 -0.12823413 ;
	setAttr ".tk[100]" -type "float3" -0.038694724 0.36117977 0.060255066 ;
	setAttr ".tk[101]" -type "float3" 0.2367692 0.39266151 0.27959567 ;
	setAttr ".tk[102]" -type "float3" 0.4166505 0.41620836 0.199875 ;
	setAttr ".tk[103]" -type "float3" 0.043705069 0.36911473 0.23642685 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38:40]" "e[77]" "e[89]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.26757034659385681;
	setAttr ".re" 38;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 47 ".tk";
	setAttr ".tk[9]" -type "float3" 0.017338719 0.0077649476 -0.0048158122 ;
	setAttr ".tk[10]" -type "float3" 0.0067519452 0.0077649476 -0.017491668 ;
	setAttr ".tk[11]" -type "float3" -0.11367484 0.0077649476 -0.017220825 ;
	setAttr ".tk[12]" -type "float3" 0.015957937 -0.0055629909 -0.005243578 ;
	setAttr ".tk[13]" -type "float3" 0.0053711738 -0.0055630151 -0.017919432 ;
	setAttr ".tk[14]" -type "float3" -0.13363266 -0.0055630151 -0.017559271 ;
	setAttr ".tk[15]" -type "float3" -2.7939677e-009 0 -1.3969839e-009 ;
	setAttr ".tk[16]" -type "float3" 3.4924597e-010 0 -9.3132257e-010 ;
	setAttr ".tk[17]" -type "float3" 9.3132257e-010 0 9.3132257e-010 ;
	setAttr ".tk[18]" -type "float3" 9.3132257e-010 0 -3.4924597e-010 ;
	setAttr ".tk[19]" -type "float3" -9.3132257e-010 0 -3.4924597e-010 ;
	setAttr ".tk[20]" -type "float3" 1.8626451e-009 0 2.3283064e-009 ;
	setAttr ".tk[21]" -type "float3" 5.8207661e-010 0 2.3283064e-009 ;
	setAttr ".tk[22]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.010299552 -0.0055630151 0.013021055 ;
	setAttr ".tk[24]" -type "float3" -0.1299777 -0.0055630151 0.017491665 ;
	setAttr ".tk[25]" -type "float3" -0.14183791 -0.0055630151 0.0089262668 ;
	setAttr ".tk[26]" -type "float3" 0.011680324 0.0077649476 0.01344882 ;
	setAttr ".tk[27]" -type "float3" -0.10973158 0.0077649476 0.017919432 ;
	setAttr ".tk[28]" -type "float3" -0.12188007 0.0077649476 0.0092647187 ;
	setAttr ".tk[43]" -type "float3" -0.12224023 0.0077649476 -0.0053606248 ;
	setAttr ".tk[44]" -type "float3" -0.14219807 -0.0055630151 -0.0056990799 ;
	setAttr ".tk[47]" -type "float3" 0.017819569 0.011667665 0.0053419564 ;
	setAttr ".tk[48]" -type "float3" 0.017138243 -0.011667639 0.0051308833 ;
	setAttr ".tk[63]" -type "float3" 0.14434528 0.38667658 0 ;
	setAttr ".tk[64]" -type "float3" 0.16050832 0.30471966 0 ;
	setAttr ".tk[65]" -type "float3" 0.14434528 0.38667658 0 ;
	setAttr ".tk[66]" -type "float3" 0.15384892 0.28465858 0 ;
	setAttr ".tk[67]" -type "float3" 0.14434528 0.38667658 0 ;
	setAttr ".tk[68]" -type "float3" 0.1443453 0.38667667 -0.019871036 ;
	setAttr ".tk[87]" -type "float3" 0.0079823583 2.1894841e-005 -0.0250898 ;
	setAttr ".tk[88]" -type "float3" 0.023611724 2.1894841e-005 -0.0091521759 ;
	setAttr ".tk[89]" -type "float3" 0.024880283 -2.1894841e-005 0.0076430202 ;
	setAttr ".tk[90]" -type "float3" 0.014338875 2.1894841e-005 0.020779477 ;
	setAttr ".tk[91]" -type "float3" -0.0075633181 2.1894841e-005 0.0250898 ;
	setAttr ".tk[92]" -type "float3" -0.024369922 2.1894841e-005 0.012952129 ;
	setAttr ".tk[93]" -type "float3" -0.024880283 2.1894841e-005 -0.0077728443 ;
	setAttr ".tk[94]" -type "float3" -0.012742609 2.1894841e-005 -0.024579432 ;
	setAttr ".tk[95]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[96]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[97]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[98]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[99]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[100]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[101]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[102]" -type "float3" 0.11310077 0.22331437 0 ;
	setAttr ".tk[103]" -type "float3" 0.11310077 0.22331437 0 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[143:144]" "e[146]" "e[148]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.39939850568771362;
	setAttr ".re" 153;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[104:111]" -type "float3"  0.11202933 0.092983879 0 0.074576601
		 -0.0074028037 0 0.11202933 0.092983879 0 0.0076632812 0.12101261 0 0.03814565 0.30498448
		 0 0.037489571 0.38125724 0 0.03814565 0.30498448 0 0.0076632812 0.12101261 0;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[75]" -type "float3" 0.22694936 0.0091654705 0.019269302 ;
	setAttr ".tk[76]" -type "float3" 0.23752519 0.032916997 0.0042377152 ;
	setAttr ".tk[77]" -type "float3" 0.2256552 -0.031342711 -0.0034576412 ;
	setAttr ".tk[78]" -type "float3" 0.20987317 -0.028373888 0.014100935 ;
	setAttr ".tk[79]" -type "float3" 0.24026513 0.030740745 -0.014100928 ;
	setAttr ".tk[80]" -type "float3" 0.22318897 -0.006798666 -0.019269302 ;
	setAttr ".tk[81]" -type "float3" 0.012475135 0.050199628 0 ;
	setAttr ".tk[82]" -type "float3" 0.012475135 0.050199628 0 ;
	setAttr ".tk[83]" -type "float3" 0.012475135 0.050199628 0 ;
	setAttr ".tk[84]" -type "float3" 0.012475135 0.050199628 0 ;
	setAttr ".tk[85]" -type "float3" 0.012475135 0.050199628 0 ;
	setAttr ".tk[86]" -type "float3" 0.012475135 0.050199628 0 ;
	setAttr ".tk[112]" -type "float3" 0.053204041 0.037701037 0 ;
	setAttr ".tk[113]" -type "float3" -0.012512304 0.12310906 0 ;
	setAttr ".tk[114]" -type "float3" -0.037310094 0.14413475 0 ;
	setAttr ".tk[115]" -type "float3" -0.044132147 0.081339769 0 ;
	setAttr ".tk[116]" -type "float3" 0.021584226 -0.0040682578 0 ;
	setAttr ".tk[117]" -type "float3" 0.075844899 0.0077150534 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[24:27]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[10:13]";
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[94:101]" -type "float3"  0.038229965 -0.011459909 -0.021832252
		 0.012727181 0 -0.041081667 0.038386203 -0.015321833 0.011891985 -0.019191561 0.011459909
		 -0.039621476 -0.038386203 0.015321833 -0.011892062 -0.012727097 0 0.041081667 0.019191679
		 -0.011459909 0.039621502 -0.038229935 0.011459909 0.021832116;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[22:23]";
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[56:61]" -type "float3"  0.00018124888 0.030102359
		 0.0555337 -0.034318976 0.034175973 0.0097975703 0.034319006 -0.023822688 0.045017567
		 0.024418844 -0.042637888 -0.0061106579 -0.024669273 0.042637888 -0.045017615 0.0094684456
		 -0.011287468 -0.055533703;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[34:35]";
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[24:26]" "e[70]" "e[82]" "e[91]" "e[93]" "e[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.3248487114906311;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 58 ".tk";
	setAttr ".tk[0]" -type "float3" -0.083123669 0 0.083123669 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.11113614 ;
	setAttr ".tk[2]" -type "float3" 0.083123669 0 0.083123669 ;
	setAttr ".tk[3]" -type "float3" -0.01204786 0.50573325 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[6]" -type "float3" 0.077658631 0.50573325 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[29]" -type "float3" 0.10084446 0.50573325 0.11326722 ;
	setAttr ".tk[30]" -type "float3" 0.075960182 0.56696266 -0.024988491 ;
	setAttr ".tk[31]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.50573325 -0.024988491 ;
	setAttr ".tk[33]" -type "float3" 0 0.50573325 -0.024988491 ;
	setAttr ".tk[34]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[35]" -type "float3" -0.083123669 0 -0.083123669 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.11113614 ;
	setAttr ".tk[37]" -type "float3" 0.083123669 0 -0.083123669 ;
	setAttr ".tk[38]" -type "float3" -0.11113614 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.11113614 0 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.42022732 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[44]" -type "float3" -0.01204789 0.50573325 0 ;
	setAttr ".tk[45]" -type "float3" 0.077658631 0.50573325 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.028184205 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.50573325 -0.024988491 ;
	setAttr ".tk[52]" -type "float3" 0 0.50573325 -0.024988491 ;
	setAttr ".tk[53]" -type "float3" -0.028535554 0.50573325 0 ;
	setAttr ".tk[54]" -type "float3" -0.028535554 0.50573325 0 ;
	setAttr ".tk[55]" -type "float3" -0.028535554 0.50573325 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[63]" -type "float3" 0.043024845 0.56553817 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[65]" -type "float3" 0.043024845 0.56553817 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[69]" -type "float3" 0.0095436703 0.41129941 0 ;
	setAttr ".tk[70]" -type "float3" 0.0095436703 0.41129941 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.50573325 0 ;
	setAttr ".tk[74]" -type "float3" 0.01412653 0.0035750084 0.088749245 ;
	setAttr ".tk[75]" -type "float3" 0.062475178 -0.0032509961 0.019517774 ;
	setAttr ".tk[76]" -type "float3" -0.059682786 -0.015014705 -0.015924959 ;
	setAttr ".tk[77]" -type "float3" -0.062475178 0.015014705 0.064945117 ;
	setAttr ".tk[78]" -type "float3" 0.059961196 -0.0093225921 -0.064945087 ;
	setAttr ".tk[79]" -type "float3" -0.016640555 0.0021176606 -0.088749245 ;
	setAttr ".tk[103]" -type "float3" 0.014880896 0 0 ;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[150:151]" "e[153]" "e[155]" "e[157]" "e[159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.92959320545196533;
	setAttr ".dr" no;
	setAttr ".re" 150;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[1]" -type "float3" 0.070605949 0 0.25755456 ;
	setAttr ".tk[2]" -type "float3" 0.070605941 0 0.25755462 ;
	setAttr ".tk[3]" -type "float3" 0.082721695 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.16674483 0 -0.088798955 ;
	setAttr ".tk[36]" -type "float3" 0.077254884 0 -0.12402143 ;
	setAttr ".tk[37]" -type "float3" 0.077254884 0 -0.12402143 ;
	setAttr ".tk[38]" -type "float3" -0.16674483 0 -0.088798955 ;
	setAttr ".tk[49]" -type "float3" 0.082721695 0 0 ;
	setAttr ".tk[91]" -type "float3" 2.7939677e-009 4.4703484e-008 0 ;
	setAttr ".tk[92]" -type "float3" 2.7939677e-009 4.4703484e-008 0 ;
	setAttr ".tk[93]" -type "float3" 2.7939677e-009 4.4703484e-008 0 ;
	setAttr ".tk[117]" -type "float3" -0.16674483 0 -0.088798955 ;
	setAttr ".tk[118]" -type "float3" -0.16674483 0 -0.088798955 ;
	setAttr ".tk[119]" -type "float3" 0.077254884 0 -0.12402143 ;
	setAttr ".tk[120]" -type "float3" 0.077254884 0 -0.12402143 ;
	setAttr ".tk[122]" -type "float3" 0.070605941 0 0.25755462 ;
	setAttr ".tk[123]" -type "float3" 0.070605949 0 0.25755456 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[74:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[74:79]" -type "float3"  0.0097557306 0.003177166 0.059311628
		 0.042286873 -0.0014157295 0.012729526 -0.039906502 -0.0093312263 -0.011117995 -0.041785359
		 0.010874271 0.043295145 0.040595412 -0.0055007935 -0.04410094 -0.010945797 0.002196312
		 -0.060117483;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[126:127]" "e[129]" "e[131]" "e[133]" "e[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.86150497198104858;
	setAttr ".dr" no;
	setAttr ".re" 126;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 1 "vtx[56:61]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[56:61]" -type "float3"  -0.00088572502 0.016141176
		 0.035119683 -0.022948027 0.018746138 0.0058723986 0.020944595 -0.018342733 0.028394848
		 0.014613628 -0.030374765 -0.0043005645 -0.016777277 0.024157286 -0.029180735 0.0050530434
		 -0.010326862 -0.03590557;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[166:167]" "e[169]" "e[171]" "e[173]" "e[175:176]" "e[179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.84938573837280273;
	setAttr ".dr" no;
	setAttr ".re" 167;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[84:91]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[84:91]" -type "float3"  0.040321112 -0.012086868 -0.023026425
		 0.013423324 0 -0.043328773 0.040485859 -0.016160011 0.01254249 -0.02024132 0.012086868
		 -0.041788708 -0.040485859 0.016160011 -0.012542516 -0.013423264 0 0.043328825 0.020241439
		 -0.012086868 0.04178879 -0.040321052 0.012086868 0.023026329;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[91]" "e[93]" "e[95]" "e[202:203]" "e[211]" "e[213]" "e[215]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.80641943216323853;
	setAttr ".dr" no;
	setAttr ".re" 93;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 113 ".tk";
	setAttr ".tk[0]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[1]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[3]" -type "float3" 0.018257111 0.003858041 -0.017363757 ;
	setAttr ".tk[4]" -type "float3" 0.0025573969 0.003858041 -0.026417717 ;
	setAttr ".tk[5]" -type "float3" -0.019369541 0.003858041 -0.018538952 ;
	setAttr ".tk[6]" -type "float3" 0.015248567 -0.025838908 -0.017724514 ;
	setAttr ".tk[7]" -type "float3" 0.002156347 -0.017665556 -0.026470602 ;
	setAttr ".tk[8]" -type "float3" -0.018149387 -0.011945434 -0.018378073 ;
	setAttr ".tk[9]" -type "float3" 0.019986527 0.0094677499 -0.0062003164 ;
	setAttr ".tk[10]" -type "float3" 0.0063561387 0.0094677499 -0.022520356 ;
	setAttr ".tk[11]" -type "float3" -0.023567244 0.0094677499 -0.14736892 ;
	setAttr ".tk[12]" -type "float3" 0.018208787 -0.0076918802 -0.0067510591 ;
	setAttr ".tk[13]" -type "float3" 0.0045784102 -0.0076918802 -0.023071107 ;
	setAttr ".tk[14]" -type "float3" -0.01190138 -0.0076918802 -0.14851448 ;
	setAttr ".tk[15]" -type "float3" 0.12302618 0.032252487 -0.0018973914 ;
	setAttr ".tk[16]" -type "float3" 0.052645907 0.010199384 -0.076671958 ;
	setAttr ".tk[17]" -type "float3" -0.036060479 -0.016995603 -0.15221369 ;
	setAttr ".tk[18]" -type "float3" 0.10746254 0.032922316 0.023753021 ;
	setAttr ".tk[19]" -type "float3" -0.051380407 -0.03292232 -0.023753041 ;
	setAttr ".tk[20]" -type "float3" 0.044282675 0.016995607 0.12370309 ;
	setAttr ".tk[21]" -type "float3" 0.0034362599 -0.010199384 0.076671958 ;
	setAttr ".tk[22]" -type "float3" -0.049764819 -0.032252487 0.039580438 ;
	setAttr ".tk[23]" -type "float3" 0.010923652 -0.0076918802 0.016764488 ;
	setAttr ".tk[24]" -type "float3" -0.0048720026 -0.0076918802 0.022520356 ;
	setAttr ".tk[25]" -type "float3" -0.0201419 -0.0076918802 0.011492491 ;
	setAttr ".tk[26]" -type "float3" 0.012701383 0.0094677499 0.017315231 ;
	setAttr ".tk[27]" -type "float3" -0.0038031889 0.0094677499 0.023071107 ;
	setAttr ".tk[28]" -type "float3" -0.019444268 0.0094677499 0.01192824 ;
	setAttr ".tk[29]" -type "float3" 0.0092529431 -0.025838908 0.016484957 ;
	setAttr ".tk[30]" -type "float3" -0.007611291 -0.020050826 0.02614039 ;
	setAttr ".tk[31]" -type "float3" -0.022166371 -0.011945434 0.012087848 ;
	setAttr ".tk[32]" -type "float3" 0.015917946 0.003858041 0.022231638 ;
	setAttr ".tk[33]" -type "float3" -0.0042511178 0.003858041 0.026193267 ;
	setAttr ".tk[34]" -type "float3" -0.023386527 0.003858041 0.011926942 ;
	setAttr ".tk[39]" -type "float3" 0.047685076 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.027885791 0.0071890354 -0.0041640778 ;
	setAttr ".tk[41]" -type "float3" -0.025241315 -0.024317216 -0.0038153999 ;
	setAttr ".tk[42]" -type "float3" -0.019907977 0.0094677499 -0.006901755 ;
	setAttr ".tk[43]" -type "float3" -0.020605598 -0.0076918802 -0.007337512 ;
	setAttr ".tk[44]" -type "float3" 0.025441259 0.003858041 0.0028052777 ;
	setAttr ".tk[45]" -type "float3" 0.019206256 -0.028495733 0.0024439692 ;
	setAttr ".tk[46]" -type "float3" 0.020605596 0.015551561 0.0068777204 ;
	setAttr ".tk[47]" -type "float3" 0.019728411 -0.015551561 0.0066059665 ;
	setAttr ".tk[48]" -type "float3" 0.0046607554 0.022017952 -0.026140392 ;
	setAttr ".tk[49]" -type "float3" 0.020701677 0.025665004 -0.016979605 ;
	setAttr ".tk[50]" -type "float3" 0.027885824 0.028495729 0.0031894892 ;
	setAttr ".tk[51]" -type "float3" 0.018831845 0.025665004 0.022615951 ;
	setAttr ".tk[52]" -type "float3" -0.0021477565 0.022017952 0.0264706 ;
	setAttr ".tk[53]" -type "float3" -0.018288923 0.01997681 0.016601494 ;
	setAttr ".tk[54]" -type "float3" -0.022250492 0.01997681 -0.0035676125 ;
	setAttr ".tk[55]" -type "float3" -0.01319655 0.01997681 -0.022020631 ;
	setAttr ".tk[56]" -type "float3" -0.014085125 -0.013737345 0.010119789 ;
	setAttr ".tk[57]" -type "float3" -0.0049361587 0.0014273252 -0.016734771 ;
	setAttr ".tk[58]" -type "float3" 0.0076965191 -0.0034087019 -0.015041888 ;
	setAttr ".tk[59]" -type "float3" 0.013226212 -0.010676332 0.0011787459 ;
	setAttr ".tk[60]" -type "float3" 0.0059140418 -0.0069807619 0.016734771 ;
	setAttr ".tk[61]" -type "float3" -0.0099079944 0.0022514868 0.014677167 ;
	setAttr ".tk[62]" -type "float3" -0.013226212 0.010676333 -0.00057739735 ;
	setAttr ".tk[63]" -type "float3" 0.0083823241 0.01075558 0.11106341 ;
	setAttr ".tk[64]" -type "float3" 0.014146999 0.0090870541 0.12062357 ;
	setAttr ".tk[65]" -type "float3" 0.013979621 0.011690516 0.13171554 ;
	setAttr ".tk[66]" -type "float3" -6.4690346e-007 0.013737345 0.13547924 ;
	setAttr ".tk[67]" -type "float3" -0.0065755164 0.011936306 0.12586513 ;
	setAttr ".tk[68]" -type "float3" -0.0040448345 0.012257039 0.11437009 ;
	setAttr ".tk[69]" -type "float3" 0.018163221 -0.075554766 0 ;
	setAttr ".tk[70]" -type "float3" -0.19332123 0.14299403 -0.013903452 ;
	setAttr ".tk[71]" -type "float3" -0.18520221 0.15373473 -0.011388168 ;
	setAttr ".tk[72]" -type "float3" -0.18558954 0.15768276 0.0023513427 ;
	setAttr ".tk[73]" -type "float3" -0.19303755 0.15373473 0.013903456 ;
	setAttr ".tk[74]" -type "float3" -0.20115657 0.14299403 0.011388168 ;
	setAttr ".tk[75]" -type "float3" -0.20008428 0.14262031 -0.0021391478 ;
	setAttr ".tk[76]" -type "float3" 0.036763884 0.0025023667 -0.11347918 ;
	setAttr ".tk[77]" -type "float3" 0.12463346 -0.046544544 -0.0037115035 ;
	setAttr ".tk[78]" -type "float3" 0.096016556 -0.068457432 0.034568772 ;
	setAttr ".tk[79]" -type "float3" 0.040755674 -0.046544544 0.14257465 ;
	setAttr ".tk[80]" -type "float3" -0.033547986 0.0025023667 0.11347918 ;
	setAttr ".tk[81]" -type "float3" -0.10956289 0.056443889 0.058581453 ;
	setAttr ".tk[82]" -type "float3" -0.090477511 0.088618137 -0.035155959 ;
	setAttr ".tk[83]" -type "float3" -0.080075197 0.056443904 -0.18827209 ;
	setAttr ".tk[85]" -type "float3" 0.019486185 0.006460384 -0.0077394629 ;
	setAttr ".tk[86]" -type "float3" 0.022114057 0.0040835664 0.0077504963 ;
	setAttr ".tk[87]" -type "float3" 0.011012124 0.006460384 0.019613802 ;
	setAttr ".tk[88]" -type "float3" -0.0030923339 0.0052040988 0.025622854 ;
	setAttr ".tk[89]" -type "float3" -0.021622255 -0.003041741 0.013227306 ;
	setAttr ".tk[90]" -type "float3" -0.022114057 -0.006460384 -0.0079379845 ;
	setAttr ".tk[91]" -type "float3" -0.012071571 -0.003041741 -0.15100871 ;
	setAttr ".tk[92]" -type "float3" 0.008700477 0.014333414 -0.025622854 ;
	setAttr ".tk[93]" -type "float3" -0.060295127 0.051095203 -0.03228325 ;
	setAttr ".tk[94]" -type "float3" -0.04329225 0.080131598 -0.029086581 ;
	setAttr ".tk[95]" -type "float3" -0.040117864 0.089773931 0.0047453735 ;
	setAttr ".tk[96]" -type "float3" -0.059088431 0.084380209 0.03228325 ;
	setAttr ".tk[97]" -type "float3" -0.07609129 0.055343829 0.029086579 ;
	setAttr ".tk[98]" -type "float3" -0.066315331 0.041025683 0.0001950778 ;
	setAttr ".tk[99]" -type "float3" -0.066380896 -0.044811644 0 ;
	setAttr ".tk[100]" -type "float3" -0.062785946 -0.075379074 0 ;
	setAttr ".tk[101]" -type "float3" -0.06585107 -0.056276217 0 ;
	setAttr ".tk[102]" -type "float3" -0.072121494 0.018558122 0 ;
	setAttr ".tk[103]" -type "float3" -0.075944193 0.067219339 0 ;
	setAttr ".tk[104]" -type "float3" -0.028636247 0.075379059 0 ;
	setAttr ".tk[105]" -type "float3" -0.075734779 0.06268879 0 ;
	setAttr ".tk[106]" -type "float3" -0.07185106 0.012707466 -2.9802322e-008 ;
	setAttr ".tk[107]" -type "float3" 0.018163221 -0.054211069 0 ;
	setAttr ".tk[108]" -type "float3" 0.018163221 -0.051940866 0 ;
	setAttr ".tk[109]" -type "float3" 0.018163221 -0.049628887 0 ;
	setAttr ".tk[110]" -type "float3" 0.018163221 -0.05008639 0 ;
	setAttr ".tk[111]" -type "float3" 0.018163221 -0.052356709 0 ;
	setAttr ".tk[112]" -type "float3" 0.018163221 -0.056810651 0 ;
	setAttr ".tk[113]" -type "float3" -0.010730858 -0.010841068 0.0061579505 ;
	setAttr ".tk[114]" -type "float3" -0.009473417 -0.012034785 0.0089995796 ;
	setAttr ".tk[115]" -type "float3" -0.0091925887 -0.011096474 0.012105711 ;
	setAttr ".tk[116]" -type "float3" -0.012177022 -0.0091571789 0.012949875 ;
	setAttr ".tk[117]" -type "float3" -0.014147003 -0.0092815198 0.01021399 ;
	setAttr ".tk[118]" -type "float3" -0.013500201 -0.0089772623 0.0069388202 ;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[43:45]" "e[150:151]" "e[153]" "e[161]" "e[163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.51066362857818604;
	setAttr ".dr" no;
	setAttr ".re" 163;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 113 ".tk";
	setAttr ".tk[1]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[2]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[4]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.14247614 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.066859499 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.074488431 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.074488431 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.055642553 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.17982884 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.17982884 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.16463204 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.16463204 ;
	setAttr ".tk[35]" -type "float3" -6.3329935e-008 0 -7.4505806e-008 ;
	setAttr ".tk[36]" -type "float3" -6.3329935e-008 0 -7.4505806e-008 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[47]" -type "float3" 9.3132257e-010 -3.7252903e-009 0.10718507 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.16694032 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[60]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.037208166 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.037208166 ;
	setAttr ".tk[65]" -type "float3" 0 0 -0.037208166 ;
	setAttr ".tk[66]" -type "float3" 0 0 -0.037208166 ;
	setAttr ".tk[67]" -type "float3" 0 0 -0.037208166 ;
	setAttr ".tk[68]" -type "float3" 0 0 -0.037208166 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.062501602 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.16267443 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.16267443 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.16267443 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.2112208 ;
	setAttr ".tk[75]" -type "float3" 0 0 0.16267443 ;
	setAttr ".tk[76]" -type "float3" 0 0 0.065578602 ;
	setAttr ".tk[77]" -type "float3" 0 0 0.065578602 ;
	setAttr ".tk[83]" -type "float3" 0 0 0.065578602 ;
	setAttr ".tk[85]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[86]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[87]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[91]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.028186196 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.071986631 ;
	setAttr ".tk[95]" -type "float3" 0 0 0.071986631 ;
	setAttr ".tk[96]" -type "float3" 0 0 0.071986631 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.12053301 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.071986631 ;
	setAttr ".tk[101]" -type "float3" -6.3329935e-008 0 -7.4505806e-008 ;
	setAttr ".tk[102]" -type "float3" -6.3329935e-008 0 -7.4505806e-008 ;
	setAttr ".tk[105]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[106]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[107]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[108]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[109]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.10718507 ;
	setAttr ".tk[113]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[114]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[115]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[116]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[117]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[118]" -type "float3" 0 0 -0.091323689 ;
	setAttr ".tk[127]" -type "float3" -0.04094987 0 -0.05504486 ;
	setAttr ".tk[128]" -type "float3" -0.040949855 0 -0.055044889 ;
	setAttr ".tk[129]" -type "float3" -0.04094987 0 -0.055044889 ;
	setAttr ".tk[130]" -type "float3" -0.0409499 0 -0.055044867 ;
	setAttr ".tk[131]" -type "float3" -0.04094987 0 -0.055044912 ;
	setAttr ".tk[132]" -type "float3" -0.0409499 0 -0.055044904 ;
	setAttr ".tk[133]" -type "float3" -0.0409499 0 -0.055044882 ;
	setAttr ".tk[134]" -type "float3" -0.04094987 0 -0.055044904 ;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.56564372777938843;
	setAttr ".dr" no;
	setAttr ".re" 109;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[135:142]" -type "float3"  -0.065310344 -0.030614231
		 0 -0.065310344 -0.030614231 0 -0.065310344 -0.030614231 0 -0.065310344 -0.030614231
		 0 -0.065310344 -0.030614231 0 -0.065310344 -0.030614231 0 -0.065310344 -0.030614231
		 0 -0.065310344 -0.030614231 0;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[102:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.51289457082748413;
	setAttr ".re" 107;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[143:148]" -type "float3"  0.056482062 0 0 0.056482062
		 0 0 0.056482062 0 0 0.056482062 0 0 0.056482062 0 0 0.056482062 0 0;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 5 "e[304]" "e[306]" "e[308]" "e[310]" "e[312:313]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[149:154]" -type "float3"  -0.031807963 -0.17859057 0
		 -0.031807963 -0.17859057 0 -0.031807963 -0.17859057 0 -0.039049033 -0.18558605 0
		 -0.039049033 -0.18558605 0 -0.039049033 -0.18558605 0;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[102]" "e[297:301]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.50185149908065796;
	setAttr ".dr" no;
	setAttr ".re" 297;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[133:134]" "e[136]" "e[138]" "e[140]" "e[142]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.50403392314910889;
	setAttr ".dr" no;
	setAttr ".re" 133;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[149:154]" -type "float3"  0.042556927 -0.051310327 0
		 0.042556927 -0.051310327 0 0.042556927 -0.051310327 0 0.042556927 -0.051310327 0
		 0.042556927 -0.051310327 0 0.042556927 -0.051310327 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.03165590763092041 5.751676082611084 0.04916834831237793 ;
	setAttr ".ps" -type "double2" 3.6740517616271973 11.503352165222168 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[56]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[57]" -type "float3" -0.31026807 -0.1304279 0 ;
	setAttr ".tk[58]" -type "float3" -0.31026807 -0.1304279 0 ;
	setAttr ".tk[59]" -type "float3" -0.31026807 -0.1304279 0 ;
	setAttr ".tk[60]" -type "float3" -0.31026807 -0.1304279 0 ;
	setAttr ".tk[61]" -type "float3" -0.31026807 -0.1304279 0 ;
	setAttr ".tk[62]" -type "float3" -0.31026807 -0.1304279 0 ;
	setAttr ".tk[63]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[68]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[76]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[80]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[81]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[82]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[83]" -type "float3" -0.042384081 0 0 ;
	setAttr ".tk[113]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[114]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[115]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[116]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[117]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[118]" -type "float3" -0.4765428 0 0 ;
	setAttr ".tk[143]" -type "float3" -0.57242966 -0.087575167 0 ;
	setAttr ".tk[144]" -type "float3" -0.57242966 -0.087575167 0 ;
	setAttr ".tk[145]" -type "float3" -0.57242966 -0.087575167 0 ;
	setAttr ".tk[146]" -type "float3" -0.57242966 -0.087575167 0 ;
	setAttr ".tk[147]" -type "float3" -0.57242966 -0.087575167 0 ;
	setAttr ".tk[148]" -type "float3" -0.57242966 -0.087575167 0 ;
	setAttr ".tk[149]" -type "float3" -0.17572874 -0.1438621 0 ;
	setAttr ".tk[150]" -type "float3" -0.17572874 -0.1438621 0 ;
	setAttr ".tk[151]" -type "float3" -0.17572874 -0.1438621 0 ;
	setAttr ".tk[152]" -type "float3" -0.17572874 -0.1438621 0 ;
	setAttr ".tk[153]" -type "float3" -0.17572874 -0.1438621 0 ;
	setAttr ".tk[154]" -type "float3" -0.17572874 -0.1438621 0 ;
	setAttr ".tk[155]" -type "float3" -0.065411888 -0.021755891 0 ;
	setAttr ".tk[156]" -type "float3" -0.065411888 -0.021755891 0 ;
	setAttr ".tk[157]" -type "float3" -0.065411888 -0.021755891 0 ;
	setAttr ".tk[158]" -type "float3" -0.065411888 -0.021755891 0 ;
	setAttr ".tk[159]" -type "float3" -0.065411888 -0.021755891 0 ;
	setAttr ".tk[160]" -type "float3" -0.065411888 -0.021755891 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 161 ".uvtk[0:160]" -type "float2" 0.087985843 0 -0.0055744648
		 0 0.0074531436 0 0.096109807 0 -0.089029729 0 -0.069647372 0 0.060316384 0 0.0048854947
		 0 0.0034695268 0 0.049694061 0 -0.072531462 0 -0.068223476 0 0.0008071959 0 0.050768852
		 0 -0.05293864 0 -0.0057090521 0 0.044252664 0 -0.057265222 0 -0.022308052 0 0.010587871
		 0 -0.078242362 0 -0.015257597 0 -0.05827564 0 -0.040349126 0 0.017549247 0 -0.11479115
		 0 -0.096320391 0 -0.036431432 0 0.024065465 0 -0.093763232 0 -0.031016827 0 0.028525472
		 0 -0.082406223 0 -0.019153118 0 0.052057475 0 -0.086714149 0 0.11382073 0 -0.0015851855
		 0 -0.0065259933 0 0.11184996 0 -0.076646328 0 -0.089981318 0 -0.11387354 0 -0.096076369
		 0 -0.093262911 0 -0.095462918 0 -0.098020077 0 -0.11629111 0 0.13997415 0 0.14317539
		 0 0.08568117 0 0.063667387 0 0.053038061 0 0.049822778 0 0.018602788 0 0.068947375
		 0 0.012311816 0 0.094312161 0 0.062345564 0 -0.011726856 0 -0.068716168 0 -0.082703233
		 0 -0.10259968 0 -0.050736606 0 -0.16095847 0 -0.17238331 0 -0.14206839 0 -0.13973844
		 0 -0.14863181 0 -0.13311702 0 -0.19110465 0 -0.21774364 0 -0.21346146 0 -0.18484718
		 0 -0.17944407 0 -0.17187619 0 -0.19486356 0 -0.17880321 0 -0.22822797 0 -0.21246886
		 0 -0.2352252 0 -0.22452539 0 -0.1943084 0 -0.20828557 0 -0.25462794 0 -0.25157911
		 0 -0.19471419 0 -0.25089818 0 -0.22861123 0 -0.25813437 0 -0.24455285 0 -0.26291084
		 0 -0.23841685 0 -0.26134253 0 0.13234186 0 0.10836467 0 0.086874485 0 0.099230498
		 0 0.12832972 0 0.10683951 0 0.24538529 0 0.22037792 0 0.24612314 0 0.26291084 0 0.24419218
		 0 0.26238823 0 0.22125173 0 0.24797714 0 0.19624442 0 0.23118949 0 0.19954723 0 0.23307621
		 0 -0.03012383 0 -0.059982002 0 -0.039206803 0 -0.016269207 0 -0.02258414 0 -0.011033177
		 0 -0.043295324 0 -0.026278913 0 -0.063799381 0 -0.092125773 0 -0.090386748 0 -0.12687671
		 0 -0.13099384 0 -0.092692375 0 -0.09952873 0 -0.068686485 0 -0.015484273 0 -0.031790316
		 0 -0.076840401 0 -0.069597661 0 -0.012455821 0 -0.069456995 0 -0.051623642 0 -0.085832059
		 0 -0.068481684 0 -0.091162324 0 -0.049147129 0 -0.022464275 0 -0.074787259 0 -0.083778918
		 0 -0.067911863 0 -0.091021657 0 0.13957706 0 0.096712321 0 0.10971677 0 0.002312243
		 0 -0.069250584 0 -0.087626934 0 -0.060126007 0 0.014254361 0 0.26158249 0 0.25288287
		 0 0.25920373 0 0.26171964 0 0.25570139 0 0.24700183 0 0.24749514 0 -0.26276082 0
		 -0.08808589 0;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[29]" "e[33]" "e[46]" "e[54]" "e[62:65]" "e[78:81]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[11]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[13]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[16]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[28]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[32]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[35]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[44]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[52]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[53]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[62]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[64]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[65]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[66]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[67]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[68]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[69]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[70]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[71]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[72]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[73]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[74]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[75]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[76]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[77]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[78]" -type "float2" -0.77224803 0.083037436 ;
	setAttr ".uvtk[79]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[80]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[81]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[82]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[83]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[84]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[85]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[86]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[87]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[88]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[89]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[90]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[91]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[92]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[93]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[94]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[95]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[96]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[97]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[98]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[99]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[100]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[101]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[102]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[103]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[104]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[105]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[106]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[107]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[108]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[109]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[110]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[111]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[152]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[153]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[154]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[155]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[156]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[157]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[158]" -type "float2" -0.27568424 -0.053143959 ;
	setAttr ".uvtk[159]" -type "float2" -0.77224803 0.083037406 ;
	setAttr ".uvtk[163]" -type "float2" -0.27568424 -0.053143959 ;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[106]" "e[116]" "e[129]" "e[142]" "e[194]" "e[222]" "e[226]" "e[286]" "e[297]" "e[302]" "e[323]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 79 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" 0.94607621 -0.41121933 ;
	setAttr ".uvtk[11]" -type "float2" 0.89448631 -0.38376313 ;
	setAttr ".uvtk[13]" -type "float2" 0.032307684 0.082519598 ;
	setAttr ".uvtk[16]" -type "float2" 0.089673266 0.10469114 ;
	setAttr ".uvtk[28]" -type "float2" -0.084639482 0.094193883 ;
	setAttr ".uvtk[32]" -type "float2" 1.1318343 -0.36850882 ;
	setAttr ".uvtk[35]" -type "float2" 1.0928962 -0.3941316 ;
	setAttr ".uvtk[44]" -type "float2" 0.81051046 -0.33238193 ;
	setAttr ".uvtk[52]" -type "float2" -0.015081981 0.096410818 ;
	setAttr ".uvtk[53]" -type "float2" -0.12431019 0.1253202 ;
	setAttr ".uvtk[62]" -type "float2" 0.99162585 -0.38683319 ;
	setAttr ".uvtk[64]" -type "float2" 0.97937262 -0.31325698 ;
	setAttr ".uvtk[65]" -type "float2" 0.91341281 -0.3053965 ;
	setAttr ".uvtk[66]" -type "float2" 1.030306 -0.30567828 ;
	setAttr ".uvtk[67]" -type "float2" 0.81304693 -0.28713822 ;
	setAttr ".uvtk[68]" -type "float2" 0.88759279 -0.30983388 ;
	setAttr ".uvtk[69]" -type "float2" 0.86745638 -0.30812591 ;
	setAttr ".uvtk[70]" -type "float2" 0.83730322 -0.25539687 ;
	setAttr ".uvtk[71]" -type "float2" 0.83824384 -0.25430328 ;
	setAttr ".uvtk[72]" -type "float2" 0.8452577 -0.20523036 ;
	setAttr ".uvtk[73]" -type "float2" 0.84495586 -0.2052936 ;
	setAttr ".uvtk[74]" -type "float2" 0.9925496 -0.23981419 ;
	setAttr ".uvtk[75]" -type "float2" 0.98809969 -0.19470537 ;
	setAttr ".uvtk[76]" -type "float2" 0.94608748 -0.24583843 ;
	setAttr ".uvtk[77]" -type "float2" 0.9561829 -0.19468147 ;
	setAttr ".uvtk[78]" -type "float2" 0.88368654 -0.25048476 ;
	setAttr ".uvtk[79]" -type "float2" 0.89724737 -0.19813836 ;
	setAttr ".uvtk[80]" -type "float2" 0.8492803 -0.2554253 ;
	setAttr ".uvtk[81]" -type "float2" 0.86112112 -0.20335168 ;
	setAttr ".uvtk[82]" -type "float2" 0.95531398 -0.16552377 ;
	setAttr ".uvtk[83]" -type "float2" 0.83092076 -0.17751893 ;
	setAttr ".uvtk[84]" -type "float2" 0.82329482 -0.15432549 ;
	setAttr ".uvtk[85]" -type "float2" 0.85305619 -0.14896083 ;
	setAttr ".uvtk[86]" -type "float2" 0.93477279 -0.16823536 ;
	setAttr ".uvtk[87]" -type "float2" 0.84943461 -0.15193778 ;
	setAttr ".uvtk[88]" -type "float2" 0.87719911 -0.1653195 ;
	setAttr ".uvtk[89]" -type "float2" 0.83722556 -0.15146625 ;
	setAttr ".uvtk[90]" -type "float2" 0.84071869 -0.16730237 ;
	setAttr ".uvtk[91]" -type "float2" 0.8272993 -0.15176725 ;
	setAttr ".uvtk[92]" -type "float2" 0.82618421 -0.17371818 ;
	setAttr ".uvtk[93]" -type "float2" 0.82346308 -0.15408671 ;
	setAttr ".uvtk[94]" -type "float2" 0.067557871 0.16648045 ;
	setAttr ".uvtk[95]" -type "float2" 0.0084695127 0.15922841 ;
	setAttr ".uvtk[96]" -type "float2" -0.045586355 0.147374 ;
	setAttr ".uvtk[97]" -type "float2" 0.13492256 0.16012478 ;
	setAttr ".uvtk[98]" -type "float2" 0.10512124 0.16110837 ;
	setAttr ".uvtk[99]" -type "float2" 0.12065232 0.15511739 ;
	setAttr ".uvtk[100]" -type "float2" 0.19398692 0.20928356 ;
	setAttr ".uvtk[101]" -type "float2" 0.19164543 0.20116559 ;
	setAttr ".uvtk[102]" -type "float2" 0.1981295 0.21018967 ;
	setAttr ".uvtk[103]" -type "float2" 0.2026585 0.20828331 ;
	setAttr ".uvtk[104]" -type "float2" 0.1694774 0.21310747 ;
	setAttr ".uvtk[105]" -type "float2" 0.18417215 0.21125898 ;
	setAttr ".uvtk[106]" -type "float2" 0.12358664 0.20760775 ;
	setAttr ".uvtk[107]" -type "float2" 0.15359354 0.21267965 ;
	setAttr ".uvtk[108]" -type "float2" 0.073442362 0.19881204 ;
	setAttr ".uvtk[109]" -type "float2" 0.12455192 0.21375206 ;
	setAttr ".uvtk[110]" -type "float2" 0.19330648 0.20087194 ;
	setAttr ".uvtk[111]" -type "float2" 0.19940004 0.21646139 ;
	setAttr ".uvtk[152]" -type "float2" 0.18907818 0.21616566 ;
	setAttr ".uvtk[153]" -type "float2" 0.18681493 0.21723127 ;
	setAttr ".uvtk[154]" -type "float2" 0.18002044 0.21988586 ;
	setAttr ".uvtk[155]" -type "float2" 0.18244225 0.21725103 ;
	setAttr ".uvtk[156]" -type "float2" 0.17057386 0.21806911 ;
	setAttr ".uvtk[157]" -type "float2" 0.15740678 0.21892586 ;
	setAttr ".uvtk[158]" -type "float2" 0.18650261 0.22237647 ;
	setAttr ".uvtk[159]" -type "float2" 0.827519 -0.14916313 ;
	setAttr ".uvtk[163]" -type "float2" -0.1315099 0.10112893 ;
	setAttr ".uvtk[173]" -type "float2" 0.1101101 0.21785048 ;
	setAttr ".uvtk[174]" -type "float2" 0.1523973 0.22187713 ;
	setAttr ".uvtk[175]" -type "float2" 1.0603797 -0.26859209 ;
	setAttr ".uvtk[176]" -type "float2" 0.81642312 -0.24696353 ;
	setAttr ".uvtk[177]" -type "float2" 1.1406188 -0.30226719 ;
	setAttr ".uvtk[178]" -type "float2" 0.83214557 -0.19866294 ;
	setAttr ".uvtk[179]" -type "float2" 0.82634723 -0.17015183 ;
	setAttr ".uvtk[180]" -type "float2" 0.8233791 -0.14977801 ;
	setAttr ".uvtk[181]" -type "float2" -0.057000361 0.15544546 ;
	setAttr ".uvtk[182]" -type "float2" 0.050452359 0.20446065 ;
	setAttr ".uvtk[183]" -type "float2" 0.11498301 0.13298142 ;
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[25]" "e[28]" "e[31]" "e[34]" "e[37]" "e[86]" "e[145]" "e[162]" "e[182]" "e[210]" "e[237]" "e[260]" "e[270]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 197 ".uvtk[0:196]" -type "float2" -0.014643948 0.0019920615
		 -0.030928217 0.0019920615 -0.030852202 0.0029808911 -0.01704457 0.0028434545 -0.53027189
		 0.0019920615 -0.51084787 0.0010470127 -0.090174787 0.0021435518 -0.10125469 0.0021435518
		 -0.43129468 -0.0012178564 -0.10753523 0.00070722523 -0.16893797 0.020546198 -0.1496893
		 0.051482305 -0.42591414 -5.0087496e-005 0.22732845 0.028142206 -0.43936521 -5.0087496e-005
		 -0.42789966 0.00065187778 0.29213199 -0.08000011 -0.43937612 0.00065187778 -0.17246573
		 0.00011739271 -0.17976214 -0.00065239548 -0.44662103 0.001197644 -0.26142958 -0.00065239548
		 -0.32551208 0.00091096893 -0.30740082 0.00065187778 -0.21628205 0.00065187778 -0.4134385
		 0.001197644 -0.39872709 0.00065187778 -0.30386794 -5.0087496e-005 0.2732777 0.15503743
		 -0.4003118 -5.0087496e-005 -0.30287582 0.0014481285 -0.20832919 0.00070722523 -0.11287896
		 -0.052595228 -0.29412261 0.0021435518 -0.18710835 0.0021435518 -0.14233534 -0.044972122
		 -0.1061217 -5.0583512e-005 -0.27828011 0.0024722847 -0.28273562 0.0019920615 -0.10595354
		 0.0019920615 -0.39265746 0.00065314525 -0.40662804 0.0019920615 -0.48458871 0.0019920615
		 -0.46659419 -5.6209632e-005 -0.12414402 0.086935848 -0.44269681 -5.0087496e-005 -0.44305745
		 0.00065187778 -0.45175263 -0.0012449005 -0.030012615 0.0019920615 -0.032961812 -0.00022867638
		 -0.11204408 0.0021435518 -0.1396772 -0.0010998741 0.2435351 0.097559258 0.41539699
		 0.21588674 -0.19976923 -0.0011649416 -0.078500807 0.0022219422 -0.090667069 0.0021819358
		 -0.1003701 0.00051130058 -0.17394005 0.0022219422 -0.28742567 0.0021819358 -0.37967008
		 0.0016952582 -0.43702626 0.0016952582 -0.1528192 -0.0081337988 -0.45488751 0.0016952582
		 -0.094929993 -0.010048557 -0.10215472 0.013385996 -0.077944577 -0.020715822 -0.090106294
		 0.07632044 -0.10574083 0.03400537 -0.10069226 0.051090658 -0.053112675 0.054577839
		 -0.052243758 0.043387529 0.015567373 0.061372317 0.014042031 0.072898097 -0.025010761
		 -0.0036924966 0.036776129 0.019177027 -0.033516761 0.0087894611 0.031882469 0.029537983
		 -0.0444129 0.020474967 0.024053764 0.040389962 -0.054483879 0.030464303 0.017432343
		 0.050065227 0.083450377 0.038303852 0.063766137 0.083890557 0.09120281 0.076095834
		 0.097496524 0.065521255 0.078230441 0.046053588 0.095136717 0.066785946 0.074911729
		 0.057478011 0.093437329 0.068903521 0.072513297 0.06692028 0.092705742 0.071268693
		 0.067161396 0.074582517 0.090896741 0.073156491 0.42296287 0.040544711 0.43050113
		 0.094226375 0.45620689 0.13967614 0.43574247 -0.10607097 0.41272351 -0.018018611
		 0.42454767 -0.072300531 0.56420064 -0.027590211 0.57461798 -0.059821472 0.65157455
		 -0.05248566 0.63778198 -0.033682592 0.56664217 0.0064997012 0.64206618 -0.0080195423
		 0.57730991 0.041345827 0.6549018 0.015071091 0.60197473 0.076560132 0.67531627 0.031007934
		 0.56868702 -0.088705957 0.65727407 -0.073045582 -0.22425681 -0.0014844197 -0.22783832
		 -0.0018573718 -0.23633832 -0.00013601015 -0.23316163 -0.0029192432 -0.25052837 0.00034842311
		 -0.251784 -0.0020521148 -0.28865892 -0.0014844197 -0.27914974 -0.002241896 -0.33632934
		 -0.0031210645 -0.36576429 -0.0018573718 -0.38170421 -0.00054609013 -0.42239174 -0.002655901
		 -0.44944865 -0.001562102 -0.40323678 -0.0018849296 -0.44636327 -0.002655901 -0.40104216
		 -0.0012231988 -0.25579792 -0.0017153153 -0.2607758 -0.0036888788 -0.36948836 -0.0005194238
		 -0.32794073 -0.0014118245 -0.26668432 -0.0017734894 -0.33364993 -0.0017125895 -0.36425626
		 -0.0013248394 -0.37176087 -0.0035175912 -0.36778653 5.9776437e-005 -0.37267688 -0.0032168261
		 -0.32311618 -0.0019156407 -0.28349113 -0.00038899275 -0.34234732 -0.0014118245 -0.35629189
		 -0.0005194238 -0.35365534 1.483096e-006 -0.366714 -0.0035175912 -0.042042781 0.0012882649
		 -0.024282619 0.00020613668 -0.11371325 0.0010098458 -0.27282012 -0.00010095808 -0.38209739
		 0.0022285585 -0.45508388 0.0016565329 -0.49642554 0.0025461917 -0.47603869 0.00030924109
		 0.7296384 -0.036146507 0.73029208 -0.044546083 0.74674052 -0.029794406 0.73236758
		 -0.026770663 0.73575377 -0.018014137 0.73958063 -0.011012112 0.73714715 -0.052816495
		 0.096597865 0.072345212 -0.36017591 -0.0019919085 -0.1677248 -0.0012844619 -0.14940374
		 0.00065187778 0.34979826 0.19833797 -0.15704393 -0.0020675622 -0.1376915 -5.0087496e-005
		 -0.20846047 -5.0087496e-005 -0.43487677 7.989219e-005 -0.4512035 -0.00062268664 -0.38812488
		 -0.00062268664 -0.45496863 0.0015057343 -0.45508841 0.0021435518 -0.40173644 0.0021435518
		 0.68762076 0.052090153 0.74729007 -0.0046920236 -0.052242205 -0.02616984 -0.049408663
		 0.070026174 -0.071337149 -0.049204633 0.016177546 0.084740348 0.065842286 0.092357397
		 0.093549624 0.077989712 0.49019051 0.16533774 0.61915988 0.11106362 0.35007927 -0.12309164
		 -0.39391115 -0.00013601015 -0.35998833 -0.0036888788 -0.040281724 0.00030924109 -0.43693823
		 0.0021819358 -0.33058146 -0.0005194238 -0.48800796 0.0029808911 -0.43314177 0.00011739271
		 -0.43599007 -0.0018573718 -0.43585378 0.0021435518 -0.14971554 0.00065187778 -0.13605794
		 -5.0087496e-005 -0.11225832 -0.0012178564 -0.50559205 0.0019920615;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[20:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.70174807 0.38465405 0.052341014 ;
	setAttr ".rs" 59484;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.5761762261390686 0 -0.75943368673324585 ;
	setAttr ".cbx" -type "double3" 0.8273199200630188 0.76930809020996094 0.86411571502685547 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[57]" -type "float3" 1.4901161e-008 -1.4901161e-008 0 ;
	setAttr ".tk[58]" -type "float3" 1.4901161e-008 -1.4901161e-008 0 ;
	setAttr ".tk[59]" -type "float3" 1.4901161e-008 -1.4901161e-008 0 ;
	setAttr ".tk[60]" -type "float3" 1.4901161e-008 -1.4901161e-008 0 ;
	setAttr ".tk[61]" -type "float3" 1.4901161e-008 -1.4901161e-008 0 ;
	setAttr ".tk[62]" -type "float3" 1.4901161e-008 -1.4901161e-008 0 ;
	setAttr ".tk[99]" -type "float3" -0.04506056 -0.50742054 0.04176309 ;
	setAttr ".tk[100]" -type "float3" -0.074288666 -0.50742054 -0.016067691 ;
	setAttr ".tk[101]" -type "float3" -0.056059174 -0.50742054 -0.065455869 ;
	setAttr ".tk[102]" -type "float3" 0.015608832 -0.50742054 -0.083234943 ;
	setAttr ".tk[103]" -type "float3" 0.062222455 -0.50742054 -0.064128831 ;
	setAttr ".tk[104]" -type "float3" 0.074288666 -0.50742054 -0.0031675829 ;
	setAttr ".tk[105]" -type "float3" 0.057876036 -0.50742054 0.068389863 ;
	setAttr ".tk[106]" -type "float3" 0.0099959597 -0.50742054 0.083234951 ;
	setAttr ".tk[146]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[147]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[148]" -type "float3" -7.4505806e-009 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[20:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0519075 0.22965598 0.060544282 ;
	setAttr ".rs" 48392;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.90594202280044556 0.011270999908447266 -0.46224099397659302 ;
	setAttr ".cbx" -type "double3" 1.1978729963302612 0.44804096221923828 0.58332955837249756 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[37]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[103]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[161]" -type "float3" 0.37055308 0.011270987 0.24490412 ;
	setAttr ".tk[162]" -type "float3" 0.37055308 0.011270987 0.0064760623 ;
	setAttr ".tk[163]" -type "float3" 0.3297658 -0.37951931 0.29962707 ;
	setAttr ".tk[164]" -type "float3" 0.34115458 -0.3212671 0.0088664712 ;
	setAttr ".tk[165]" -type "float3" 0.37055308 0.011270987 -0.25734875 ;
	setAttr ".tk[166]" -type "float3" 0.3297658 -0.37825224 -0.30658439 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.015609503 0.37830877 0.79194409 ;
	setAttr ".rs" 37231;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.6849486231803894 0 0.53789842128753662 ;
	setAttr ".cbx" -type "double3" 0.65372961759567261 0.75661754608154297 1.0459897518157959 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[167]" -type "float3" 0.26146072 -0.10744184 0.26315379 ;
	setAttr ".tk[168]" -type "float3" 0.095448054 -0.10742596 0.027216252 ;
	setAttr ".tk[169]" -type "float3" 0.52570987 -0.47786343 0.26192838 ;
	setAttr ".tk[170]" -type "float3" 0.40197003 -0.54427058 0.032339584 ;
	setAttr ".tk[171]" -type "float3" 0.26807281 -0.10744236 -0.26315379 ;
	setAttr ".tk[172]" -type "float3" 0.57696438 -0.47460479 -0.25016776 ;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[349:350]" "e[352]" "e[354]" "e[357]" "e[359]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.49169763922691345;
	setAttr ".re" 352;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[173:178]" -type "float3"  0.018776689 -0.022759641 1.98303664
		 -0.56719732 -0.022759641 1.57603276 -0.49456441 -0.64089984 1.56814408 0.11004786
		 -0.56208241 2.023574352 -1.089881659 -0.022759641 1.75217593 -1.020366549 -0.70095754
		 1.73116755;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[362:363]" "e[365]" "e[367]" "e[369]" "e[371]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.45481616258621216;
	setAttr ".re" 362;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[179:184]" -type "float3"  0.31518301 0 -0.35597092 0.31518301
		 0 -0.35597092 0.31518301 0 -0.35597092 0.31518301 0 -0.35597092 0.31518301 0 -0.35597092
		 0.31518301 0 -0.35597092;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[28:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.79775214 0.29510975 -0.096284002 ;
	setAttr ".rs" 49740;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0430361032485962 0 -0.7756916880607605 ;
	setAttr ".cbx" -type "double3" -0.55246812105178833 0.59021949768066406 0.58312368392944336 ;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[99]" -type "float3" 0.1324805 -0.090842627 0 ;
	setAttr ".tk[105]" -type "float3" -0.058440607 -0.1049057 0 ;
	setAttr ".tk[176]" -type "float3" 0.040365323 -0.029735228 0 ;
	setAttr ".tk[177]" -type "float3" 0.028998917 0 0.01337247 ;
	setAttr ".tk[178]" -type "float3" 0.025315082 -0.032329768 0.01337247 ;
	setAttr ".tk[180]" -type "float3" -0.058440607 -0.1049057 0 ;
	setAttr ".tk[183]" -type "float3" -0.00095487759 0 0.22038683 ;
	setAttr ".tk[184]" -type "float3" 0.13152564 -0.090842627 0.22038683 ;
	setAttr ".tk[185]" -type "float3" 0.048834257 0 0.020537928 ;
	setAttr ".tk[186]" -type "float3" 0.064724594 -0.032329768 0.088110507 ;
	setAttr ".tk[187]" -type "float3" 0.06840843 0 0.088110507 ;
	setAttr ".tk[188]" -type "float3" 0.06840843 0 0.088110507 ;
	setAttr ".tk[189]" -type "float3" 0.06840843 0 0.088110507 ;
	setAttr ".tk[190]" -type "float3" 0.10877375 -0.029735228 0.088110507 ;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[385:386]" "e[388]" "e[390]" "e[393]" "e[395]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.31489959359169006;
	setAttr ".re" 388;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[191:196]" -type "float3"  -1.80224586 -0.0069499118
		 0.5940991 -1.6270411 -0.0069499118 0.074198253 -1.54086256 -0.49510044 0.14714298
		 -1.7399857 -0.53317744 0.68661726 -1.95091248 -0.0069499118 -0.52487522 -1.97824478
		 -0.46240613 -0.4845531;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0796597 0.38057399 -0.81016207 ;
	setAttr ".rs" 59489;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.81969797611236572 0 -0.99351167678833008 ;
	setAttr ".cbx" -type "double3" 0.66037857532501221 0.76114797592163086 -0.62681245803833008 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[99]" -type "float3" 0 -0.086255237 0.0030350743 ;
	setAttr ".tk[100]" -type "float3" 0.03289263 0 0.17923862 ;
	setAttr ".tk[101]" -type "float3" 0 -0.14257324 0.14887924 ;
	setAttr ".tk[191]" -type "float3" 0.0993407 0 -0.25961339 ;
	setAttr ".tk[192]" -type "float3" 0.069340929 0 -0.28018913 ;
	setAttr ".tk[193]" -type "float3" 0.07555183 0 -0.2843672 ;
	setAttr ".tk[194]" -type "float3" 0.10636818 -0.018892422 -0.23174265 ;
	setAttr ".tk[195]" -type "float3" 0.025269181 0 -0.2703571 ;
	setAttr ".tk[196]" -type "float3" 0.027347364 0 -0.26788479 ;
	setAttr ".tk[197]" -type "float3" 0.020843429 0 -0.00099520059 ;
	setAttr ".tk[198]" -type "float3" -0.18598679 -0.053834178 -0.10745229 ;
	setAttr ".tk[199]" -type "float3" -0.19127497 0 -0.069193684 ;
	setAttr ".tk[200]" -type "float3" 0.0021051774 0 0.0073377937 ;
	setAttr ".tk[201]" -type "float3" -0.016564744 0 0.0799357 ;
	setAttr ".tk[202]" -type "float3" 0.0040204059 -0.080934592 0.13623059 ;
	setAttr ".tk[203]" -type "float3" 0.14267772 0 0.21161485 ;
	setAttr ".tk[204]" -type "float3" -0.11441509 -0.085748233 0.001839391 ;
	setAttr ".tk[205]" -type "float3" -0.11441509 0 0.093364932 ;
	setAttr ".tk[206]" -type "float3" 0.14267772 0 0.1991452 ;
	setAttr ".tk[207]" -type "float3" -0.069888718 0 0.27385846 ;
	setAttr ".tk[208]" -type "float3" -0.069888718 -0.14257324 0.43855372 ;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[421:422]" "e[424]" "e[426]" "e[429]" "e[431]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".wt" 0.27541983127593994;
	setAttr ".re" 422;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[209:214]" -type "float3"  -0.13512699 -0.38111788 -1.70827448
		 -0.95255154 -0.5836522 -1.50454879 -0.95711011 -0.015272992 -1.58571661 -0.20226476
		 -0.015272992 -1.67811573 -1.42112494 -0.63733172 -1.78565454 -1.44123423 -0.015272992
		 -1.83554995;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[102]" -type "float3" -0.093208008 0 0 ;
	setAttr ".tk[209]" -type "float3" 0.046258003 -0.054858081 -0.055279832 ;
	setAttr ".tk[210]" -type "float3" 0.0070929425 -0.048626676 0.015593166 ;
	setAttr ".tk[211]" -type "float3" 0.0032317031 -0.014443637 0.013256463 ;
	setAttr ".tk[212]" -type "float3" 0.02267256 -0.014443637 -0.024220785 ;
	setAttr ".tk[213]" -type "float3" -0.020480124 -0.077174179 0.045093581 ;
	setAttr ".tk[214]" -type "float3" -0.023396553 -0.014443637 0.027598672 ;
	setAttr ".tk[215]" -type "float3" 0.16746549 0 0 ;
	setAttr ".tk[216]" -type "float3" 0.30505913 -0.089309603 -0.070715338 ;
	setAttr ".tk[217]" -type "float3" 0.20792265 -0.035221603 -0.070715338 ;
	setAttr ".tk[218]" -type "float3" 0.20792265 0 0 ;
	setAttr ".tk[219]" -type "float3" 0.15092736 0 -0.14875463 ;
	setAttr ".tk[220]" -type "float3" 0.076699123 -0.14910814 -0.11254591 ;
	setAttr ".tk[221]" -type "float3" 0.11613906 0 0 ;
	setAttr ".tk[222]" -type "float3" 0.29242569 -0.063183054 0 ;
	setAttr ".tk[223]" -type "float3" 0.15659621 0 0 ;
	setAttr ".tk[224]" -type "float3" 0.15659621 0 0 ;
	setAttr ".tk[225]" -type "float3" 0.15778804 0 -0.16156065 ;
	setAttr ".tk[226]" -type "float3" 0.072358206 -0.16521183 -0.16156065 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.48575008 0.012978077 2.5878034 ;
	setAttr ".rs" 36173;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5643470287322998 -0.022759437561035156 2.5614728927612305 ;
	setAttr ".cbx" -type "double3" -0.40715312957763672 0.048715591430664063 2.6141338348388672 ;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[29]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[32]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[51]" -type "float3" 2.9802322e-008 0 -1.4901161e-008 ;
	setAttr ".tk[128]" -type "float3" 2.9802322e-008 0 -1.4901161e-008 ;
	setAttr ".tk[205]" -type "float3" 0.10417767 0 0.0086289011 ;
	setAttr ".tk[207]" -type "float3" 0.024690239 0 -0.020307763 ;
	setAttr ".tk[208]" -type "float3" 0.024690239 0 -0.020307763 ;
	setAttr ".tk[222]" -type "float3" 0.085505545 0 -0.20523788 ;
	setAttr ".tk[223]" -type "float3" 0.081063464 0 -0.11164071 ;
	setAttr ".tk[225]" -type "float3" -0.0088329799 0 0 ;
	setAttr ".tk[226]" -type "float3" -0.0088329799 0 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[227:232]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[227:232]" -type "float3"  0.041078307 0.025032043 0.091516525
		 -0.026677333 0.025032043 0.044454604 -0.018279098 -0.046442986 0.043542892 0.011266686
		 -0.0075945854 0.096203834 -0.11611556 0.025032043 0.051450044 -0.10439344 -0.021058083
		 0.049021035;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[26:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.4807703 0.022731304 -0.27477282 ;
	setAttr ".rs" 47993;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5087668895721436 -0.0069494247436523438 -0.3374369740486145 ;
	setAttr ".cbx" -type "double3" -2.4527738094329834 0.052412033081054688 -0.21210864186286926 ;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[191]" -type "float3" 0 4.7683716e-007 0 ;
	setAttr ".tk[192]" -type "float3" 0 4.7683716e-007 0 ;
	setAttr ".tk[193]" -type "float3" 0 4.7683716e-007 0 ;
	setAttr ".tk[195]" -type "float3" 0 4.7683716e-007 0 ;
	setAttr ".tk[196]" -type "float3" 0 4.7683716e-007 0 ;
	setAttr ".tk[227]" -type "float3" 3.7252903e-009 -0.028371634 0 ;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 1 "vtx[228:233]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[228:233]" -type "float3"  -0.1523447 0.026640892 -0.011366464
		 -0.10103869 0.026640892 -0.054013617 -0.09677171 -0.032720566 -0.040965386 -0.15180278
		 -0.018458366 -0.027986355 -0.096351616 0.026640892 -0.13669479 -0.10175299 -0.028744698
		 -0.13426396;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[16:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.86685646 0.016735077 -2.4446778 ;
	setAttr ".rs" 46457;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.92946076393127441 -0.029716968536376953 -2.5150964260101318 ;
	setAttr ".cbx" -type "double3" -0.80425220727920532 0.063187122344970703 -2.3742592334747314 ;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[228]" -type "float3" 0.041189786 -0.02573128 0.016757509 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 1 "vtx[229:234]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5 0 1;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[229:234]" -type "float3"  -0.068034962 -0.0062785149
		 -0.14926204 -0.08948417 -0.057795525 -0.057161175 -0.099978402 0.035108566 -0.063512169
		 -0.04714115 0.035108566 -0.16536936 -0.16442342 -0.041250706 -0.039633833 -0.17234977
		 0.035108566 -0.024532162;
createNode objectSet -n "set1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 33 "e[0:1]" "e[22:23]" "e[57:60]" "e[322:324]" "e[329:330]" "e[334:336]" "e[338]" "e[340:343]" "e[345:349]" "e[354:355]" "e[362]" "e[364:367]" "e[374]" "e[376:379]" "e[383:385]" "e[390:391]" "e[398]" "e[400:403]" "e[410]" "e[412:415]" "e[422:424]" "e[428]" "e[430]" "e[434]" "e[436:439]" "e[446]" "e[448:451]" "e[455:456]" "e[459]" "e[461:462]" "e[465]" "e[469:470]" "e[472]";
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[229]" -type "float3" 0 -0.048833907 0 ;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 23 "f[16:17]" "f[160]" "f[163]" "f[166]" "f[169]" "f[172]" "f[175]" "f[180:181]" "f[186:187]" "f[190]" "f[193]" "f[198:199]" "f[204:205]" "f[209]" "f[213]" "f[216:217]" "f[222:223]" "f[226]" "f[229]" "f[232]" "f[235]" "f[239]" "f[243]";
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[124:131]" "f[158:213]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.9843755704568178 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.52177459001541138 0.81092679500579834 0.05902397632598877 ;
	setAttr ".ic" -type "double2" -0.39746570292316447 0.43145846514634689 ;
	setAttr ".ps" -type "double2" 4.0843089818954468 1.8455808162689209 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[23]" "e[26]" "e[29]" "e[32]" "e[75]" "e[134]" "e[151]" "e[171]" "e[198]" "e[225]" "e[248]" "e[258]" "e[333]" "e[341]" "e[350]" "e[414]";
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255:256]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 254 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.94702238 0.10526866 -0.88890332
		 0.08265619 -1.04845345 -0.4984073 -1.18963957 -0.54372865 -1.15340602 -0.44744876
		 -0.969643 0.13827713 -0.97452545 0.16091688 -0.98258668 0.056894019 -0.9935503 0.13564998
		 -0.92974514 0.25067347 -0.92715549 0.2440764 -1.033007383 0.051852409 -1.043594241
		 0.083285987 -1.034202695 0.059008006 -1.040537119 0.051308189 -1.067543507 0.074182138
		 -1.043396473 0.057596955 -1.084467649 0.12241045 -1.072155237 0.10144939 -1.056113482
		 0.053506639 -1.062809587 0.076986998 -1.062722445 0.06922105 -1.049119353 0.075803772
		 -1.054099798 0.085543275 -1.062965155 0.063176185 -1.047118902 0.070108861 -1.039013624
		 0.07976155 -1.019847512 0.069562577 -1.03568697 0.072110519 -0.98347342 0.084651142
		 -0.98829955 0.098065794 -0.94766837 0.25042605 -0.96548909 0.086659133 -0.96519542
		 0.096619546 -0.94305682 0.25413558 -0.93473607 0.12201162 -1.010325432 -0.5262624
		 -0.87111753 0.15387149 -0.78658587 -0.3876977 -1.021102667 0.046599716 -1.14716792
		 -0.60931414 -0.92459261 0.2359722 -1.035671473 0.065954044 -1.044222116 0.063956827
		 -1.059883118 0.059847083 -0.93058592 0.043133795 -0.96651959 0.11479205 -0.99218941
		 0.1146338 -1.030284882 0.077565223 -1.012747765 0.038957074 -1.069035769 0.085267663
		 -0.95068216 0.13953398 -0.95783269 0.16247712 -0.94710153 0.1183607 -0.95071006 0.098951519
		 -0.95317775 0.087031305 -0.956029 0.078391343 -0.95818436 0.068855271 -0.93609196
		 0.2514911 -0.95817637 0.058871582 -0.94311649 0.24268281 -0.93862122 0.24108723 -0.94675404
		 0.24127248 -0.93020326 0.23189566 -0.93498796 0.23925096 -0.93290919 0.2364783 -0.93789321
		 0.22865063 -0.93973988 0.2298153 -0.94481283 0.21714726 -0.94283754 0.21604624 -0.95024836
		 0.23103702 -0.95385933 0.21874115 -0.94731295 0.23091361 -0.95167446 0.21830067 -0.94422406
		 0.23125586 -0.94907206 0.21826121 -0.9414956 0.23166624 -0.94679338 0.21817002 -0.95629835
		 0.20923766 -0.94689977 0.20701197 -0.95130348 0.20363742 -0.95368439 0.20388418 -0.95448285
		 0.20915154 -0.95321292 0.20410514 -0.95231515 0.20834193 -0.95268512 0.20412433 -0.95056349
		 0.20761916 -0.95223111 0.2039637 -0.94874632 0.20756367 -0.9517265 0.20402664 -1.04809773
		 0.043703668 -1.037626982 0.040278904 -1.029451847 0.03351333 -1.077886462 0.046381615
		 -1.059448481 0.047843121 -1.070730686 0.047415517 -1.066771746 0.017879587 -1.073591948
		 0.016946357 -1.074872017 0.0012879521 -1.070617676 0.0033760816 -1.060038567 0.016173851
		 -1.065636396 0.0016027242 -1.053447962 0.012795579 -1.061475039 -0.0017896742 -1.047283649
		 0.0066038482 -1.059015512 -0.0064429417 -1.079159021 0.019164067 -1.079188704 0.00088178366
		 -1.10283947 0.08820942 -1.11097002 0.09941417 -1.13197243 0.06363897 -1.12587166
		 0.060544353 -1.093334079 0.072948724 -1.11847401 0.052240722 -1.089648962 0.067995399
		 -1.11405659 0.048009448 -1.10751987 0.040892653 -1.083698511 0.05805907 -1.10093331
		 0.032117762 -1.079666734 0.052016828 -1.076269031 0.046327028 -1.097100019 0.029378764
		 -1.071830273 0.046152093 -1.092667818 0.028481293 -1.13926136 0.01983089 -1.14320183
		 0.027984269 -1.1296674 -0.0057019913 -1.14194655 -0.002542811 -1.13455677 0.013920225
		 -1.13860607 -0.0052518272 -1.11475062 0.0084820734 -1.13175881 -0.0022487962 -1.11782122
		 0.0077767428 -1.13210905 -0.0027661645 -1.1256907 0.010882248 -1.13169217 0.011012767
		 -1.13772702 -0.0070375828 -1.13520765 -0.0075191883 -1.12106979 0.0085172551 -1.13461697
		 -0.0033777081 -1.30663741 -0.53754228 -1.362113 -0.73916662 -1.47447085 -0.81824499
		 -1.65469909 -0.94472569 -0.85418874 0.065211341 -0.87191242 0.050179541 -1.63293493
		 -0.90284652 -1.35291028 -0.89375061 -1.074390054 -0.014913246 -1.076094031 -0.014744148
		 -1.073729873 -0.018561527 -1.072611928 -0.015793964 -1.070980906 -0.016784057 -1.069716692
		 -0.01779972 -1.077993274 -0.01582025 -0.95251542 0.20323145 -1.13815355 -0.0068259267
		 -1.057463169 0.08872211 -1.055493116 0.10528399 -1.013916612 0.052707449 -1.040329695
		 0.10585576 -1.04571557 0.11439142 -1.042161345 0.093103126 -0.987082 0.072283015
		 -0.97936088 0.066276416 -0.979568 0.079763815 -0.96426469 0.071930543 -0.96778792
		 0.062979072 -0.96538681 0.077546179 -1.055236936 -0.0096573606 -1.068727493 -0.019567773
		 -0.95059103 0.2378965 -0.93591362 0.2262781 -0.95196593 0.24355161 -0.94123822 0.21433705
		 -0.94582021 0.20570436 -0.95128071 0.20305127 -1.025531173 0.025798164 -1.040994167
		 0.0019337069 -1.078233361 0.064127371 -1.088317633 0.028468005 -1.11152077 0.0098465728
		 -0.7729705 0.18662463 -0.96025854 0.054698035 -1.14452612 0.0011248267 -0.98615384
		 -0.55280465 -1.048932791 0.050913606 -1.066798449 0.046144698 -0.96850431 0.054353237
		 -1.064866781 0.13318884 -1.051245928 0.13951641 -0.99154323 0.15731673 -1.60389459
		 -0.67924303 -0.95135248 -0.53549796 -0.90538651 -0.76082605 -1.099736214 -0.9773317
		 -0.98237586 -0.79416537 -1.032981634 -1.0092798471 -0.96653098 -0.782561 -1.072734833
		 -0.80538219 -1.232862 -1.00033891201 -1.11706889 -1.02758944 -0.97135144 -1.12933195
		 -1.0042598248 -1.10815763 -0.97614151 -1.1371392 -1.0017272234 -1.13755143 -1.057451248
		 -1.12147737 -0.88117743 -0.6375826 -0.79245538 -0.5654943 -1.082511663 -0.76568586
		 -0.94175512 -0.7751863 -1.2937429 -0.80438334 -1.32336617 -0.99565035 -0.82460743
		 -0.63683271 -1.41299343 -0.85073543 -1.44688594 -0.98627442 -0.92079693 -0.77252322
		 -0.88435394 -0.6669845 -0.89047909 -0.71963489 -1.61302161 -0.92636621 -1.61840916
		 -0.95368832 -0.92114729 -0.75780112 -0.90875071 -0.74069542 -1.30510116 -0.59162718
		 -1.26352406 -0.52916259 -1.25631452 -0.80683452 -1.35750628 -0.74580133 -1.24721253
		 -0.589347 -1.26478839 -0.73864305 -1.44703507 -0.62286276 -1.43921971 -0.58965474
		 -1.57931876 -0.65173727 -1.57585466 -0.65308851 -1.47534704 -0.70152253 -1.58658302
		 -0.68186557 -1.4408195 -0.62755305 -1.475914 -0.71065825 -1.58159494 -0.68583173
		 -1.57110357 -0.66233236 -1.096866727 -0.63061529 -1.19455075 -0.72253805 -1.25226665
		 -0.8531332 -1.060027361 -0.7313171 -1.12457609 -0.95847934 -1.24859023 -0.81557924
		 -1.17900133 -0.73652333 -1.31570804 -0.84324402 -1.32788301 -0.86357254 -1.28755498
		 -0.88700742 -1.33868027 -0.88209957;
	setAttr ".uvtk[250:253]" -1.17343616 -0.81763071 -1.19899178 -0.93331641 -1.32002354
		 -0.90159404 -1.30529535 -0.8591181;
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
connectAttr "polyTweakUV5.out" "pCubeShape1.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr "set1.mwc" "pCubeShape1.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing3.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing5.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySoftEdge1.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak11.ip";
connectAttr "polySplitRing7.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent4.ig";
connectAttr "polyTweak15.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "deleteComponent4.og" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polySplitRing9.out" "polyTweak17.ip";
connectAttr "polyMergeVert1.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polyTweak18.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polySplitRing10.out" "polyTweak18.ip";
connectAttr "polyMergeVert2.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polyTweak19.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polySplitRing11.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polyMergeVert3.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polySplitRing13.ip";
connectAttr "pCubeShape1.wm" "polySplitRing13.mp";
connectAttr "polySplitRing12.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySplitRing14.ip";
connectAttr "pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polySplitRing13.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polySplitRing15.ip";
connectAttr "pCubeShape1.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyDelEdge1.ip";
connectAttr "polySplitRing15.out" "polyTweak24.ip";
connectAttr "polyDelEdge1.out" "polySplitRing16.ip";
connectAttr "pCubeShape1.wm" "polySplitRing16.mp";
connectAttr "polyTweak25.out" "polySplitRing17.ip";
connectAttr "pCubeShape1.wm" "polySplitRing17.mp";
connectAttr "polySplitRing16.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj1.mp";
connectAttr "polySplitRing17.out" "polyTweak26.ip";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV4.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweakUV4.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polySplitRing18.ip";
connectAttr "pCubeShape1.wm" "polySplitRing18.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplitRing19.ip";
connectAttr "pCubeShape1.wm" "polySplitRing19.mp";
connectAttr "polySplitRing18.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polySplitRing19.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polySplitRing20.ip";
connectAttr "pCubeShape1.wm" "polySplitRing20.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polySplitRing20.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polySplitRing21.ip";
connectAttr "pCubeShape1.wm" "polySplitRing21.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polySoftEdge2.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "polySplitRing21.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polySoftEdge2.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyMergeVert4.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyMergeVert4.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyMergeVert5.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyMergeVert5.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyMergeVert6.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak42.ip";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "set1.dsm" -na;
connectAttr "polyMergeVert6.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "polyTweak43.ip";
connectAttr "polyTweak43.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyPlanarProj2.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV5.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of tallTree_b_SJ_003.ma
