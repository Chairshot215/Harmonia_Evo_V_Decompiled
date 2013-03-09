.class public Lcom/htc/sunny/Sunny;
.super Ljava/lang/Object;
.source "Sunny.java"


# static fields
.field public static final ABGR_8888:I = 0x148888

.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final RENDER_BY_CHILD_DEFAULT_ORDER:I = 0x0

.field public static final RENDER_BY_CHILD_RENDER_ORDER:I = 0x1

.field public static final RGBA_5551:I = 0x25551

.field public static final RGB_565:I = 0x25650

.field public static final RGB_OP_DEFAULT:I = 0x0

.field public static final RGB_OP_T_m_C:I = 0x1

.field public static final RIGHT_BORDER:I = 0x2

.field public static final TI_SOURCE_IMAGE_DIMENSION:I = 0x0

.field public static final TI_TEXTURE_DIMENSION:I = 0x1

.field public static final TI_VALID_AREA_DIMENSION:I = 0x2

.field public static final TOP_BORDER:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "3DGlideMode"

    const-string v1, "[Sunny] Load htcsunnyengine+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "htcsunnyengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const-string v0, "3DGlideMode"

    const-string v1, "[Sunny] Load htcsunnyengine-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap_LoadFromFile(ILjava/lang/String;III)Z
    .locals 8
    .parameter "bitmap"
    .parameter "filePath"
    .parameter "targetPixelFormat"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v7, 0x0

    .line 217
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move v6, v7

    .line 243
    :cond_1
    :goto_0
    return v6

    .line 222
    :cond_2
    const/4 v6, 0x0

    .line 224
    .local v6, rs:Z
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->CreateCapsSessionByFilePath(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, session:I
    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/htc/sunny/Sunny;->CreateCapsIterator()I

    move-result v5

    .line 228
    .local v5, iterator:I
    if-eqz v5, :cond_4

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p0

    .line 231
    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->CapsSession_StretchRenderToBitmap(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-static {v5, v7}, Lcom/htc/sunny/Sunny;->CapsIterator_Next(II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 235
    const/4 v6, 0x1

    .line 238
    :cond_3
    invoke-static {v5}, Lcom/htc/sunny/Sunny;->DestroyCapsIterator(I)V

    .line 240
    :cond_4
    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyCapsSession(I)V

    goto :goto_0
.end method

.method public static native Bitmap_Set(ILandroid/graphics/Bitmap;)Z
.end method

.method public static native Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z
.end method

.method public static native Camera_2DIsometricSetup(IFFF)V
.end method

.method public static native CapsIterator_Next(II)I
.end method

.method public static native CapsSession_Crop(IIIII)Z
.end method

.method public static native CapsSession_GetHeight(I)I
.end method

.method public static native CapsSession_GetWidth(I)I
.end method

.method public static native CapsSession_StretchRenderToBitmap(IIIIII)Z
.end method

.method public static native CapsSession_StretchRenderToJpegFile(IIIILjava/lang/String;I)Z
.end method

.method public static native Context_RemoveFromCurrentThread(I)V
.end method

.method public static native Context_RunOnCurrentThread(I)Z
.end method

.method public static native CreateBitmap(I)I
.end method

.method public static native CreateCapsIterator()I
.end method

.method public static native CreateCapsSessionByBitmap(I)I
.end method

.method public static native CreateCapsSessionByFilePath(Ljava/lang/String;)I
.end method

.method public static native CreateContext(IIIIIIII)I
.end method

.method public static native CreateScene(I)I
.end method

.method public static native CreateSceneNode(I)I
.end method

.method public static native CreateScissor(I)I
.end method

.method public static native CreateSprite(II)I
.end method

.method public static native CreateSpriteWithConfig(IIZ)I
.end method

.method public static native CreateTexture(I)I
.end method

.method public static native CreateWindow(I)I
.end method

.method public static native CreateWindowByContext(II)I
.end method

.method public static native DeinitEnvironment(I)V
.end method

.method public static native DestroyBitmap(I)V
.end method

.method public static native DestroyCapsIterator(I)V
.end method

.method public static native DestroyCapsSession(I)V
.end method

.method public static native DestroyContext(I)V
.end method

.method public static native DestroyScene(I)V
.end method

.method public static native DestroySceneNode(I)V
.end method

.method public static native DestroyScissor(I)V
.end method

.method public static native DestroySprite(I)V
.end method

.method public static native DestroyTexture(I)V
.end method

.method public static native DestroyWindow(I)V
.end method

.method public static native Environment_LogStatus(I)V
.end method

.method public static native InitEnvironment()I
.end method

.method public static native InitEnvironmentWithConfig(IIIIIII)I
.end method

.method public static native SceneNode_AddChild(II)Z
.end method

.method public static native SceneNode_GetChildrenRenderOrderMode(I)I
.end method

.method public static native SceneNode_GetRenderOrder(I)I
.end method

.method public static native SceneNode_GetUserData(I)Ljava/lang/Object;
.end method

.method public static native SceneNode_GetUserFlag(I)I
.end method

.method public static native SceneNode_GetVisible(I)Z
.end method

.method public static native SceneNode_RemoveChild(II)V
.end method

.method public static native SceneNode_SetChildrenRenderOrderMode(II)V
.end method

.method public static native SceneNode_SetGroupAlpha(IF)V
.end method

.method public static native SceneNode_SetPosition(IFFF)V
.end method

.method public static native SceneNode_SetRenderOrder(II)V
.end method

.method public static native SceneNode_SetRotate(IFFF)V
.end method

.method public static native SceneNode_SetScale(IFFF)V
.end method

.method public static native SceneNode_SetUserData(ILjava/lang/Object;)V
.end method

.method public static native SceneNode_SetUserFlag(II)V
.end method

.method public static native SceneNode_SetVisible(IZ)V
.end method

.method public static native Scene_GetDefaultCamera(I)I
.end method

.method public static native Scene_GetRootNode(I)I
.end method

.method public static native Scissor_SetArea(IIIII)V
.end method

.method public static native Sprite_EnableColorBlending(IIZ)V
.end method

.method public static native Sprite_SetAlpha(III)V
.end method

.method public static native Sprite_SetColor(IIIII)V
.end method

.method public static native Sprite_SetLayerRenderable(IIZ)V
.end method

.method public static native Sprite_SetLayerTouchable(IIZ)V
.end method

.method public static native Sprite_SetLayerVisible(IIZ)V
.end method

.method public static native Sprite_SetRGBOperation(III)V
.end method

.method public static native Sprite_SetTexture(IIII)Z
.end method

.method public static native Sprite_SetTextureCoordinatesBy2P(IIFFFF)V
.end method

.method public static native Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V
.end method

.method public static native Sprite_SetTouchable(IZ)V
.end method

.method public static native Sprite_SetupGeometry(IIFFFFF)V
.end method

.method public static Sprite_SetupTextureCoordinatesByInfo(IIII)Z
    .locals 22
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "textureWithUserInfo"
    .parameter "displayRotate"

    .prologue
    .line 248
    const/high16 v5, 0x3f80

    .line 249
    .local v5, right:F
    const/high16 v4, 0x3f80

    .line 251
    .local v4, bottom:F
    if-eqz p2, :cond_0

    .line 253
    const/4 v1, 0x1

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->Texture_QueryInfo(II)I

    move-result v16

    .line 254
    .local v16, textureDimension:I
    const/4 v1, 0x2

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->Texture_QueryInfo(II)I

    move-result v19

    .line 255
    .local v19, validAreaDimension:I
    if-eqz v16, :cond_0

    if-eqz v19, :cond_0

    .line 257
    const/high16 v1, -0x1

    and-int v1, v1, v16

    shr-int/lit8 v18, v1, 0x10

    .line 258
    .local v18, textureWidth:I
    const v1, 0xffff

    and-int v17, v16, v1

    .line 259
    .local v17, textureHeight:I
    const/high16 v1, -0x1

    and-int v1, v1, v19

    shr-int/lit8 v21, v1, 0x10

    .line 260
    .local v21, validWidth:I
    const v1, 0xffff

    and-int v20, v19, v1

    .line 261
    .local v20, validHeight:I
    if-eqz v18, :cond_0

    if-eqz v17, :cond_0

    if-eqz v21, :cond_0

    if-eqz v20, :cond_0

    .line 263
    move/from16 v0, v21

    int-to-float v1, v0

    move/from16 v0, v18

    int-to-float v2, v0

    div-float v5, v1, v2

    .line 264
    move/from16 v0, v20

    int-to-float v1, v0

    move/from16 v0, v17

    int-to-float v2, v0

    div-float v4, v1, v2

    .line 269
    .end local v16           #textureDimension:I
    .end local v17           #textureHeight:I
    .end local v18           #textureWidth:I
    .end local v19           #validAreaDimension:I
    .end local v20           #validHeight:I
    .end local v21           #validWidth:I
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 280
    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v6, p0

    move/from16 v7, p1

    move v10, v5

    move v11, v4

    invoke-static/range {v6 .. v11}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 282
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 271
    :sswitch_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v1, p0

    move/from16 v2, p1

    move v6, v4

    move v9, v5

    invoke-static/range {v1 .. v10}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 274
    :sswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v1, p0

    move/from16 v2, p1

    move v3, v5

    move v8, v4

    invoke-static/range {v1 .. v10}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 277
    :sswitch_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move/from16 v6, p0

    move/from16 v7, p1

    move v8, v5

    move v12, v5

    move v13, v4

    move v15, v4

    invoke-static/range {v6 .. v15}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static native Texture_QueryInfo(II)I
.end method

.method public static native Texture_Realize(I)V
.end method

.method public static native Texture_RecordInfo(III)V
.end method

.method public static native Texture_SetupByBitmap(IIZ)Z
.end method

.method public static native Texture_SetupByBitmap_InRenderThread(IIZ)Z
.end method

.method public static native Viewport_LinkCamera(II)V
.end method

.method public static native Window_BindSurface(ILandroid/view/Surface;II)Z
.end method

.method public static native Window_GetDefaultViewport(I)I
.end method

.method public static native Window_HitTest(III)I
.end method

.method public static native Window_Present(I)V
.end method

.method public static native Window_QuerySceneNodeOriginPositionOnViewport(III)Z
.end method

.method public static native Window_Render(I)V
.end method

.method public static native Window_RenderWithoutPresent(I)V
.end method

.method public static native Window_SetClearColor(IFFFF)V
.end method

.method public static native Window_SetShowFrameInfoThreshold(II)V
.end method

.method public static native Window_UnbindSurface(I)V
.end method

.method public static native getOutputVectorX()F
.end method

.method public static native getOutputVectorY()F
.end method

.method public static native getOutputVectorZ()F
.end method
