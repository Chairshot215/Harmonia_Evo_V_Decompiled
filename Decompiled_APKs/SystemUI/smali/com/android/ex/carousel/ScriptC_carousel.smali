.class public Lcom/android/ex/carousel/ScriptC_carousel;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_carousel.java"


# static fields
.field private static final mExportFuncIdx_createCards:I = 0x1

.field private static final mExportFuncIdx_doLongPress:I = 0xd

.field private static final mExportFuncIdx_doMotion:I = 0xe

.field private static final mExportFuncIdx_doStart:I = 0xb

.field private static final mExportFuncIdx_doStop:I = 0xc

.field private static final mExportFuncIdx_invalidateDetailTexture:I = 0x6

.field private static final mExportFuncIdx_invalidateTexture:I = 0x5

.field private static final mExportFuncIdx_lookAt:I = 0x2

.field private static final mExportFuncIdx_setCarouselRotationAngle:I = 0xa

.field private static final mExportFuncIdx_setCarouselRotationAngle2:I = 0xf

.field private static final mExportFuncIdx_setDetailTexture:I = 0x4

.field private static final mExportFuncIdx_setGeometry:I = 0x7

.field private static final mExportFuncIdx_setMatrix:I = 0x8

.field private static final mExportFuncIdx_setProgramStoresCard:I = 0x9

.field private static final mExportFuncIdx_setRadius:I = 0x0

.field private static final mExportFuncIdx_setTexture:I = 0x3

.field private static final mExportVarIdx_backgroundColor:I = 0x1b

.field private static final mExportVarIdx_backgroundTexture:I = 0x2d

.field private static final mExportVarIdx_cardCount:I = 0xa

.field private static final mExportVarIdx_cardCreationFadeDuration:I = 0x18

.field private static final mExportVarIdx_cardRotation:I = 0x12

.field private static final mExportVarIdx_cards:I = 0x7

.field private static final mExportVarIdx_cardsFaceTangent:I = 0x13

.field private static final mExportVarIdx_debugCamera:I = 0x0

.field private static final mExportVarIdx_debugDetails:I = 0x4

.field private static final mExportVarIdx_debugGeometryLoading:I = 0x3

.field private static final mExportVarIdx_debugRays:I = 0x6

.field private static final mExportVarIdx_debugRendering:I = 0x5

.field private static final mExportVarIdx_debugSelection:I = 0x1

.field private static final mExportVarIdx_debugTextureLoading:I = 0x2

.field private static final mExportVarIdx_defaultCardMatrix:I = 0x32

.field private static final mExportVarIdx_defaultGeometry:I = 0x30

.field private static final mExportVarIdx_defaultTexture:I = 0x2b

.field private static final mExportVarIdx_detailFadeRate:I = 0x1a

.field private static final mExportVarIdx_detailLineTexture:I = 0x2e

.field private static final mExportVarIdx_detailLoadingTexture:I = 0x2f

.field private static final mExportVarIdx_detailTextureAlignment:I = 0xf

.field private static final mExportVarIdx_dragFactor:I = 0x16

.field private static final mExportVarIdx_dragModel:I = 0x20

.field private static final mExportVarIdx_drawRuler:I = 0x10

.field private static final mExportVarIdx_fadeInDuration:I = 0x17

.field private static final mExportVarIdx_fillDirection:I = 0x21

.field private static final mExportVarIdx_firstCardTop:I = 0x1e

.field private static final mExportVarIdx_frictionCoeff:I = 0x15

.field private static final mExportVarIdx_linearClamp:I = 0x36

.field private static final mExportVarIdx_loadingGeometry:I = 0x31

.field private static final mExportVarIdx_loadingTexture:I = 0x2c

.field private static final mExportVarIdx_modelviewMatrix:I = 0x34

.field private static final mExportVarIdx_multiTextureBlendingFragmentProgram:I = 0x28

.field private static final mExportVarIdx_multiTextureFragmentProgram:I = 0x27

.field private static final mExportVarIdx_overscrollSlots:I = 0x1f

.field private static final mExportVarIdx_prefetchCardCount:I = 0xe

.field private static final mExportVarIdx_programStoreBackground:I = 0x23

.field private static final mExportVarIdx_programStoreDetail:I = 0x24

.field private static final mExportVarIdx_programStoresCard:I = 0x22

.field private static final mExportVarIdx_programStoresCardCount:I = 0xb

.field private static final mExportVarIdx_projectionMatrix:I = 0x33

.field private static final mExportVarIdx_radius:I = 0x11

.field private static final mExportVarIdx_rasterProgram:I = 0x2a

.field private static final mExportVarIdx_rezInCardCount:I = 0x19

.field private static final mExportVarIdx_rowCount:I = 0x1c

.field private static final mExportVarIdx_rowSpacing:I = 0x1d

.field private static final mExportVarIdx_shaderConstants:I = 0x35

.field private static final mExportVarIdx_singleTextureBlendingFragmentProgram:I = 0x26

.field private static final mExportVarIdx_singleTextureFragmentProgram:I = 0x25

.field private static final mExportVarIdx_slotCount:I = 0x9

.field private static final mExportVarIdx_startAngle:I = 0x8

.field private static final mExportVarIdx_swaySensitivity:I = 0x14

.field private static final mExportVarIdx_vertexProgram:I = 0x29

.field private static final mExportVarIdx_visibleDetailCount:I = 0xd

.field private static final mExportVarIdx_visibleSlotCount:I = 0xc


# instance fields
.field private mExportVar_backgroundColor:Landroid/renderscript/Float4;

.field private mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

.field private mExportVar_cardCount:I

.field private mExportVar_cardCreationFadeDuration:I

.field private mExportVar_cardRotation:F

.field private mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

.field private mExportVar_cardsFaceTangent:Z

.field private mExportVar_debugCamera:Z

.field private mExportVar_debugDetails:Z

.field private mExportVar_debugGeometryLoading:Z

.field private mExportVar_debugRays:Z

.field private mExportVar_debugRendering:Z

.field private mExportVar_debugSelection:Z

.field private mExportVar_debugTextureLoading:Z

.field private mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_defaultTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailFadeRate:F

.field private mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailTextureAlignment:I

.field private mExportVar_dragFactor:F

.field private mExportVar_dragModel:I

.field private mExportVar_drawRuler:Z

.field private mExportVar_fadeInDuration:I

.field private mExportVar_fillDirection:I

.field private mExportVar_firstCardTop:Z

.field private mExportVar_frictionCoeff:F

.field private mExportVar_linearClamp:Landroid/renderscript/Sampler;

.field private mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_loadingTexture:Landroid/renderscript/Allocation;

.field private mExportVar_modelviewMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_overscrollSlots:F

.field private mExportVar_prefetchCardCount:I

.field private mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

.field private mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

.field private mExportVar_programStoresCardCount:I

.field private mExportVar_projectionMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_radius:F

.field private mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

.field private mExportVar_rezInCardCount:F

.field private mExportVar_rowCount:I

.field private mExportVar_rowSpacing:F

.field private mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

.field private mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_slotCount:I

.field private mExportVar_startAngle:F

.field private mExportVar_swaySensitivity:F

.field private mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

.field private mExportVar_visibleDetailCount:I

.field private mExportVar_visibleSlotCount:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugCamera:Z

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugSelection:Z

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugTextureLoading:Z

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugGeometryLoading:Z

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugDetails:Z

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRendering:Z

    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRays:Z

    iput v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    return-void
.end method


# virtual methods
.method public bind_cards(Lcom/android/ex/carousel/ScriptField_Card;)V
    .locals 2

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_Card;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_programStoresCard(Lcom/android/ex/carousel/ScriptField_ProgramStore_s;)V
    .locals 2

    const/16 v1, 0x22

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public bind_shaderConstants(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;)V
    .locals 2

    const/16 v1, 0x35

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_0
.end method

.method public get_backgroundColor()Landroid/renderscript/Float4;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundColor:Landroid/renderscript/Float4;

    return-object v0
.end method

.method public get_backgroundTexture()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_cardCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCount:I

    return v0
.end method

.method public get_cardCreationFadeDuration()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCreationFadeDuration:I

    return v0
.end method

.method public get_cardRotation()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardRotation:F

    return v0
.end method

.method public get_cards()Lcom/android/ex/carousel/ScriptField_Card;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

    return-object v0
.end method

.method public get_cardsFaceTangent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardsFaceTangent:Z

    return v0
.end method

.method public get_debugCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugCamera:Z

    return v0
.end method

.method public get_debugDetails()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugDetails:Z

    return v0
.end method

.method public get_debugGeometryLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugGeometryLoading:Z

    return v0
.end method

.method public get_debugRays()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRays:Z

    return v0
.end method

.method public get_debugRendering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRendering:Z

    return v0
.end method

.method public get_debugSelection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugSelection:Z

    return v0
.end method

.method public get_debugTextureLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugTextureLoading:Z

    return v0
.end method

.method public get_defaultCardMatrix()Landroid/renderscript/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

    return-object v0
.end method

.method public get_defaultGeometry()Landroid/renderscript/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_defaultTexture()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_detailFadeRate()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailFadeRate:F

    return v0
.end method

.method public get_detailLineTexture()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_detailLoadingTexture()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_detailTextureAlignment()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailTextureAlignment:I

    return v0
.end method

.method public get_dragFactor()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragFactor:F

    return v0
.end method

.method public get_dragModel()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    return v0
.end method

.method public get_drawRuler()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_drawRuler:Z

    return v0
.end method

.method public get_fadeInDuration()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fadeInDuration:I

    return v0
.end method

.method public get_fillDirection()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fillDirection:I

    return v0
.end method

.method public get_firstCardTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_firstCardTop:Z

    return v0
.end method

.method public get_frictionCoeff()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_frictionCoeff:F

    return v0
.end method

.method public get_linearClamp()Landroid/renderscript/Sampler;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_linearClamp:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public get_loadingGeometry()Landroid/renderscript/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_loadingTexture()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_modelviewMatrix()Landroid/renderscript/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_modelviewMatrix:Landroid/renderscript/Matrix4f;

    return-object v0
.end method

.method public get_multiTextureBlendingFragmentProgram()Landroid/renderscript/ProgramFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_multiTextureFragmentProgram()Landroid/renderscript/ProgramFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_overscrollSlots()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_overscrollSlots:F

    return v0
.end method

.method public get_prefetchCardCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_prefetchCardCount:I

    return v0
.end method

.method public get_programStoreBackground()Landroid/renderscript/ProgramStore;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_programStoreDetail()Landroid/renderscript/ProgramStore;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_programStoresCard()Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    return-object v0
.end method

.method public get_programStoresCardCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCardCount:I

    return v0
.end method

.method public get_projectionMatrix()Landroid/renderscript/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_projectionMatrix:Landroid/renderscript/Matrix4f;

    return-object v0
.end method

.method public get_radius()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_radius:F

    return v0
.end method

.method public get_rasterProgram()Landroid/renderscript/ProgramRaster;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

    return-object v0
.end method

.method public get_rezInCardCount()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rezInCardCount:F

    return v0
.end method

.method public get_rowCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowCount:I

    return v0
.end method

.method public get_rowSpacing()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowSpacing:F

    return v0
.end method

.method public get_shaderConstants()Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    return-object v0
.end method

.method public get_singleTextureBlendingFragmentProgram()Landroid/renderscript/ProgramFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_singleTextureFragmentProgram()Landroid/renderscript/ProgramFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_slotCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_slotCount:I

    return v0
.end method

.method public get_startAngle()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_startAngle:F

    return v0
.end method

.method public get_swaySensitivity()F
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_swaySensitivity:F

    return v0
.end method

.method public get_vertexProgram()Landroid/renderscript/ProgramVertex;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_visibleDetailCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleDetailCount:I

    return v0
.end method

.method public get_visibleSlotCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleSlotCount:I

    return v0
.end method

.method public invoke_createCards(II)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_doLongPress()V
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(I)V

    return-void
.end method

.method public invoke_doMotion(FFJ)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_doStart(FFJ)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_doStop(FFJ)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_invalidateDetailTexture(IZ)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_invalidateTexture(IZ)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_lookAt(FFFFFFFFF)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p7}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p8}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p9}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setCarouselRotationAngle(F)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setCarouselRotationAngle2(FIIF)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setDetailTexture(IFFFFLandroid/renderscript/Allocation;)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setGeometry(ILandroid/renderscript/Mesh;)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setMatrix(ILandroid/renderscript/Matrix4f;)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setProgramStoresCard(ILandroid/renderscript/ProgramStore;)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setRadius(F)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public invoke_setTexture(ILandroid/renderscript/Allocation;)V
    .locals 2

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public set_backgroundColor(Landroid/renderscript/Float4;)V
    .locals 2

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundColor:Landroid/renderscript/Float4;

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public set_backgroundTexture(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_cardCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCount:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_cardCreationFadeDuration(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCreationFadeDuration:I

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_cardRotation(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardRotation:F

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_cardsFaceTangent(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardsFaceTangent:Z

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    return-void
.end method

.method public set_defaultCardMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public set_defaultGeometry(Landroid/renderscript/Mesh;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_defaultTexture(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultTexture:Landroid/renderscript/Allocation;

    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_detailFadeRate(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailFadeRate:F

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_detailLineTexture(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_detailLoadingTexture(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_detailTextureAlignment(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailTextureAlignment:I

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_dragFactor(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragFactor:F

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_dragModel(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_drawRuler(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_drawRuler:Z

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    return-void
.end method

.method public set_fadeInDuration(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fadeInDuration:I

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_fillDirection(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fillDirection:I

    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_firstCardTop(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_firstCardTop:Z

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    return-void
.end method

.method public set_frictionCoeff(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_frictionCoeff:F

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_linearClamp(Landroid/renderscript/Sampler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_linearClamp:Landroid/renderscript/Sampler;

    const/16 v0, 0x36

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_loadingGeometry(Landroid/renderscript/Mesh;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

    const/16 v0, 0x31

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_loadingTexture(Landroid/renderscript/Allocation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingTexture:Landroid/renderscript/Allocation;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_modelviewMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_modelviewMatrix:Landroid/renderscript/Matrix4f;

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public set_multiTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_multiTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_overscrollSlots(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_overscrollSlots:F

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_prefetchCardCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_prefetchCardCount:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_programStoreBackground(Landroid/renderscript/ProgramStore;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_programStoreDetail(Landroid/renderscript/ProgramStore;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

    const/16 v0, 0x24

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_programStoresCardCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCardCount:I

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_projectionMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_projectionMatrix:Landroid/renderscript/Matrix4f;

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public set_radius(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_radius:F

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_rasterProgram(Landroid/renderscript/ProgramRaster;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_rezInCardCount(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rezInCardCount:F

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_rowCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowCount:I

    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_rowSpacing(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowSpacing:F

    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_singleTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_singleTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_slotCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_slotCount:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_startAngle(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_startAngle:F

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_swaySensitivity(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_swaySensitivity:F

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    return-void
.end method

.method public set_vertexProgram(Landroid/renderscript/ProgramVertex;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public set_visibleDetailCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleDetailCount:I

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method

.method public set_visibleSlotCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleSlotCount:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    return-void
.end method
