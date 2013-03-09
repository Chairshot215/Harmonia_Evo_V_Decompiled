.class public Lcom/jme3/material/RenderState;
.super Ljava/lang/Object;
.source "RenderState.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/RenderState$StencilOperation;,
        Lcom/jme3/material/RenderState$FaceCullMode;,
        Lcom/jme3/material/RenderState$BlendMode;,
        Lcom/jme3/material/RenderState$TestFunction;
    }
.end annotation


# static fields
.field public static final ADDITIONAL:Lcom/jme3/material/RenderState;

.field public static final DEFAULT:Lcom/jme3/material/RenderState;

.field public static final NULL:Lcom/jme3/material/RenderState;


# instance fields
.field alphaFallOff:F

.field alphaTest:Z

.field applyAlphaFallOff:Z

.field applyAlphaTest:Z

.field applyBlendMode:Z

.field applyColorWrite:Z

.field applyCullMode:Z

.field applyDepthTest:Z

.field applyDepthWrite:Z

.field applyPointSprite:Z

.field applyPolyOffset:Z

.field applyStencilTest:Z

.field applyWireFrame:Z

.field backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field blendMode:Lcom/jme3/material/RenderState$BlendMode;

.field colorWrite:Z

.field cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

.field depthTest:Z

.field depthWrite:Z

.field frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

.field frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

.field offsetEnabled:Z

.field offsetFactor:F

.field offsetUnits:F

.field pointSprite:Z

.field stencilTest:Z

.field wireframe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/RenderState;->DEFAULT:Lcom/jme3/material/RenderState;

    .line 67
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/RenderState;->NULL:Lcom/jme3/material/RenderState;

    .line 76
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    .line 264
    sget-object v0, Lcom/jme3/material/RenderState;->NULL:Lcom/jme3/material/RenderState;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v1, v0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 265
    sget-object v0, Lcom/jme3/material/RenderState;->NULL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->depthTest:Z

    .line 269
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    .line 270
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    .line 271
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    .line 272
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    .line 273
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    .line 274
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    .line 275
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    .line 276
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    .line 277
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    .line 278
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    iput-boolean v2, v0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean v2, p0, Lcom/jme3/material/RenderState;->pointSprite:Z

    .line 282
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    .line 284
    iput-boolean v2, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    .line 285
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    .line 287
    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 288
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    .line 290
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    .line 291
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    .line 293
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    .line 294
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    .line 296
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    .line 297
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    .line 299
    sget-object v0, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 300
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    .line 302
    iput-boolean v2, p0, Lcom/jme3/material/RenderState;->alphaTest:Z

    .line 303
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    .line 305
    iput v3, p0, Lcom/jme3/material/RenderState;->alphaFallOff:F

    .line 306
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    .line 308
    iput v3, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    .line 309
    iput v3, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    .line 310
    iput-boolean v2, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    .line 311
    iput-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    .line 313
    iput-boolean v2, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    .line 314
    iput-boolean v2, p0, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    .line 315
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 316
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 317
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 318
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 319
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 320
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 321
    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 322
    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/material/RenderState;
    .locals 2

    .prologue
    .line 406
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/RenderState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v0

    return-object v0
.end method

.method public copyMergedTo(Lcom/jme3/material/RenderState;Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;
    .locals 1
    .parameter "additionalState"
    .parameter "state"

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 1063
    .end local p0
    :goto_0
    return-object p0

    .line 980
    .restart local p0
    :cond_0
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    if-eqz v0, :cond_1

    .line 981
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->pointSprite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->pointSprite:Z

    .line 985
    :goto_1
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    if-eqz v0, :cond_2

    .line 986
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->wireframe:Z

    .line 991
    :goto_2
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyCullMode:Z

    if-eqz v0, :cond_3

    .line 992
    iget-object v0, p1, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 996
    :goto_3
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    if-eqz v0, :cond_4

    .line 997
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthWrite:Z

    .line 1001
    :goto_4
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    if-eqz v0, :cond_5

    .line 1002
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthTest:Z

    .line 1006
    :goto_5
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    if-eqz v0, :cond_6

    .line 1007
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->colorWrite:Z

    .line 1011
    :goto_6
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    if-eqz v0, :cond_7

    .line 1012
    iget-object v0, p1, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 1016
    :goto_7
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    if-eqz v0, :cond_8

    .line 1017
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->alphaTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->alphaTest:Z

    .line 1022
    :goto_8
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    if-eqz v0, :cond_9

    .line 1023
    iget v0, p1, Lcom/jme3/material/RenderState;->alphaFallOff:F

    iput v0, p2, Lcom/jme3/material/RenderState;->alphaFallOff:F

    .line 1027
    :goto_9
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    if-eqz v0, :cond_a

    .line 1028
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    .line 1029
    iget v0, p1, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetFactor:F

    .line 1030
    iget v0, p1, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetUnits:F

    .line 1036
    :goto_a
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    if-eqz v0, :cond_b

    .line 1037
    iget-boolean v0, p1, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->stencilTest:Z

    .line 1039
    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1040
    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1041
    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1043
    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1044
    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1045
    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1047
    iget-object v0, p1, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 1048
    iget-object v0, p1, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    :goto_b
    move-object p0, p2

    .line 1063
    goto/16 :goto_0

    .line 983
    :cond_1
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->pointSprite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->pointSprite:Z

    goto :goto_1

    .line 988
    :cond_2
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->wireframe:Z

    goto :goto_2

    .line 994
    :cond_3
    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    goto :goto_3

    .line 999
    :cond_4
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthWrite:Z

    goto :goto_4

    .line 1004
    :cond_5
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->depthTest:Z

    goto :goto_5

    .line 1009
    :cond_6
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->colorWrite:Z

    goto :goto_6

    .line 1014
    :cond_7
    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    goto :goto_7

    .line 1019
    :cond_8
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->alphaTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->alphaTest:Z

    goto :goto_8

    .line 1025
    :cond_9
    iget v0, p0, Lcom/jme3/material/RenderState;->alphaFallOff:F

    iput v0, p2, Lcom/jme3/material/RenderState;->alphaFallOff:F

    goto :goto_9

    .line 1032
    :cond_a
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    .line 1033
    iget v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetFactor:F

    .line 1034
    iget v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    iput v0, p2, Lcom/jme3/material/RenderState;->offsetUnits:F

    goto :goto_a

    .line 1050
    :cond_b
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v0, p2, Lcom/jme3/material/RenderState;->stencilTest:Z

    .line 1052
    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1053
    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1054
    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1056
    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1057
    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1058
    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 1060
    iget-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 1061
    iget-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p2, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    goto :goto_b
.end method

.method public getBlendMode()Lcom/jme3/material/RenderState$BlendMode;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    return-object v0
.end method

.method public getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    return-object v0
.end method

.method public getPolyOffsetFactor()F
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    return v0
.end method

.method public getPolyOffsetUnits()F
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    return v0
.end method

.method public isAlphaTest()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->alphaTest:Z

    return v0
.end method

.method public isColorWrite()Z
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    return v0
.end method

.method public isDepthTest()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    return v0
.end method

.method public isDepthWrite()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    return v0
.end method

.method public isPointSprite()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->pointSprite:Z

    return v0
.end method

.method public isPolyOffset()Z
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 363
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 364
    const-string v0, "pointSprite"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->pointSprite:Z

    .line 365
    const-string v0, "wireframe"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    .line 366
    const-string v0, "cullMode"

    const-class v2, Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v3, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$FaceCullMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 367
    const-string v0, "depthWrite"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    .line 368
    const-string v0, "depthTest"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    .line 369
    const-string v0, "colorWrite"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    .line 370
    const-string v0, "blendMode"

    const-class v2, Lcom/jme3/material/RenderState$BlendMode;

    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$BlendMode;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 371
    const-string v0, "alphaTest"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->alphaTest:Z

    .line 372
    const-string v0, "alphaFallOff"

    invoke-interface {v1, v0, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->alphaFallOff:F

    .line 373
    const-string v0, "offsetEnabled"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    .line 374
    const-string v0, "offsetFactor"

    invoke-interface {v1, v0, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    .line 375
    const-string v0, "offsetUnits"

    invoke-interface {v1, v0, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    .line 376
    const-string v0, "stencilTest"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->stencilTest:Z

    .line 377
    const-string v0, "frontStencilStencilFailOperation"

    const-class v2, Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 378
    const-string v0, "frontStencilDepthFailOperation"

    const-class v2, Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 379
    const-string v0, "frontStencilDepthPassOperation"

    const-class v2, Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 380
    const-string v0, "backStencilStencilFailOperation"

    const-class v2, Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilStencilFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 381
    const-string v0, "backStencilDepthFailOperation"

    const-class v2, Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthFailOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 382
    const-string v0, "backStencilDepthPassOperation"

    const-class v2, Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilDepthPassOperation:Lcom/jme3/material/RenderState$StencilOperation;

    .line 383
    const-string v0, "frontStencilFunction"

    const-class v2, Lcom/jme3/material/RenderState$TestFunction;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->frontStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 384
    const-string v0, "backStencilFunction"

    const-class v2, Lcom/jme3/material/RenderState$TestFunction;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$TestFunction;

    iput-object v0, p0, Lcom/jme3/material/RenderState;->backStencilFunction:Lcom/jme3/material/RenderState$TestFunction;

    .line 386
    const-string v0, "applyPointSprite"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    .line 387
    const-string v0, "applyWireFrame"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    .line 388
    const-string v0, "applyCullMode"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    .line 389
    const-string v0, "applyDepthWrite"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    .line 390
    const-string v0, "applyDepthTest"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    .line 391
    const-string v0, "applyColorWrite"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    .line 392
    const-string v0, "applyBlendMode"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    .line 393
    const-string v0, "applyAlphaTest"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    .line 394
    const-string v0, "applyAlphaFallOff"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    .line 395
    const-string v0, "applyPolyOffset"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    .line 396
    return-void
.end method

.method public setAlphaFallOff(F)V
    .locals 1
    .parameter "alphaFallOff"

    .prologue
    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    .line 443
    iput p1, p0, Lcom/jme3/material/RenderState;->alphaFallOff:F

    .line 444
    return-void
.end method

.method public setAlphaTest(Z)V
    .locals 1
    .parameter "alphaTest"

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    .line 460
    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->alphaTest:Z

    .line 461
    return-void
.end method

.method public setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V
    .locals 1
    .parameter "blendMode"

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    .line 510
    iput-object p1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 511
    return-void
.end method

.method public setColorWrite(Z)V
    .locals 1
    .parameter "colorWrite"

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    .line 474
    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    .line 475
    return-void
.end method

.method public setDepthTest(Z)V
    .locals 1
    .parameter "depthTest"

    .prologue
    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    .line 525
    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    .line 526
    return-void
.end method

.method public setDepthWrite(Z)V
    .locals 1
    .parameter "depthWrite"

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    .line 539
    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    .line 540
    return-void
.end method

.method public setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V
    .locals 1
    .parameter "cullMode"

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    .line 491
    iput-object p1, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 492
    return-void
.end method

.method public setPointSprite(Z)V
    .locals 1
    .parameter "pointSprite"

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    .line 426
    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->pointSprite:Z

    .line 427
    return-void
.end method

.method public setPolyOffset(FF)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    .line 570
    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    .line 571
    iput p1, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    .line 572
    iput p2, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    .line 573
    return-void
.end method

.method public setWireframe(Z)V
    .locals 1
    .parameter "wireframe"

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    .line 553
    iput-boolean p1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    .line 554
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderState[\npointSprite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->pointSprite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyPointSprite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwireframe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->wireframe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyWireFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncullMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyCullMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyCullMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndepthWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyDepthWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndepthTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->depthTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyDepthTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncolorWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->colorWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyColorWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nblendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyBlendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nalphaTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->alphaTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyAlphaTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nalphaFallOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/material/RenderState;->alphaFallOff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyAlphaFallOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffsetEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\napplyPolyOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffsetFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/material/RenderState;->offsetFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffsetUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/material/RenderState;->offsetUnits:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
