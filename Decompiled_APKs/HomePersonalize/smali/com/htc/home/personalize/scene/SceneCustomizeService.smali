.class public Lcom/htc/home/personalize/scene/SceneCustomizeService;
.super Landroid/app/IntentService;
.source "SceneCustomizeService.java"


# static fields
.field private static final ICE_CREAM_SANDWICH:I = 0xe

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SceneCustomizeService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "SceneCustomizeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private getLocalPreviewPath(Lcom/htc/htcSceneManager/scene/Scene;Z)Ljava/lang/String;
    .locals 3
    .parameter "scene"
    .parameter "isPortrait"

    .prologue
    .line 345
    if-eqz p2, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, srcPath:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 348
    .end local v0           #srcPath:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #srcPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private isDoCustomizationToICS(Ljava/lang/String;I)Z
    .locals 4
    .parameter "strAction"
    .parameter "nCurVersion"

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_0

    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    const-string v1, "SceneCustomizeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDoCustomizeToICS action fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return v0

    .line 133
    :cond_1
    const/16 v1, 0xe

    if-ge p2, v1, :cond_2

    .line 134
    const-string v1, "SceneCustomizeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "androidCurrentVer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentVersion is small than ICS ,no need do get launch bar shortcuts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFotaCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "strAction"
    .parameter "strCustomizeMsg"
    .parameter "preferences"

    .prologue
    const/4 v0, 0x1

    .line 93
    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE_SCENE_GB2ICS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    :cond_0
    if-eqz p2, :cond_2

    const-string v1, "com.htc.FOTA_UPGRADE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE_SCENE_GB2ICS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {p3, v0}, Lcom/htc/home/personalize/util/Utilities;->editReDrawFlag(Landroid/content/SharedPreferences;Z)V

    .line 104
    :cond_1
    :goto_0
    return v0

    .line 103
    :cond_2
    const-string v0, "SceneCustomizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFotaCase fail: Action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CUSTOMIZED_REASON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedReDrawSceneImage(Ljava/lang/String;Ljava/lang/String;IILandroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "strAction"
    .parameter "strCustomizeMsg"
    .parameter "nPreVersion"
    .parameter "nCurVersion"
    .parameter "preferences"

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    const-string v3, "NeedRedrawScenePreivewImage"

    invoke-interface {p5, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, b_needRedrawScene:Z
    if-eqz v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    if-ge p4, v4, :cond_2

    .line 152
    const-string v1, "SceneCustomizeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "androidCurrentVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentVersion is small than ICS ,no need do fota "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    if-lt p3, v4, :cond_0

    .line 157
    const-string v1, "SceneCustomizeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "androidPreviousVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", androidPreviousVer is bigger than ICS ,no need do fota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 159
    goto :goto_0
.end method

.method private isNeedToUpdateVersionInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "strAction"

    .prologue
    .line 123
    const-string v0, "com.htc.android.rosie.scene.ACTION_SCENE_INIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.htc.intent.action.CUSTOMIZATION_CHANGE_SCENE_GB2ICS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedtoDeletePreviewImage()Z
    .locals 2

    .prologue
    .line 308
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refactoryPreviewImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "context"
    .parameter "srcPath"

    .prologue
    .line 257
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 258
    .local v17, src:Landroid/graphics/Bitmap;
    if-nez v17, :cond_0

    .line 259
    const/4 v10, 0x0

    .line 303
    .end local v17           #src:Landroid/graphics/Bitmap;
    :goto_0
    return-object v10

    .line 261
    .restart local v17       #src:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 262
    .local v14, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    .line 263
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const v19, 0x7f02001f

    move/from16 v0, v19

    invoke-static {v14, v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 265
    .local v13, refactoryBar:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 266
    .local v9, paint:Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070008

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 271
    .local v7, imageWidth:F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f07000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 272
    .local v6, imageHeight:F
    float-to-int v0, v7

    move/from16 v19, v0

    float-to-int v0, v6

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 274
    .local v10, previewBitmap:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v11, previewCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 276
    .local v16, saveStateOriginal:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v7, v19

    .line 277
    .local v12, ratio:F
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 278
    .local v15, saveState:I
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    .local v18, srcRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    float-to-int v0, v7

    move/from16 v21, v0

    float-to-int v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 281
    .local v4, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 283
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 284
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 289
    :goto_1
    const/16 v19, 0x0

    div-float v20, v6, v12

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v13, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 290
    invoke-virtual {v11, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 295
    .end local v4           #dstRect:Landroid/graphics/Rect;
    .end local v6           #imageHeight:F
    .end local v7           #imageWidth:F
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v11           #previewCanvas:Landroid/graphics/Canvas;
    .end local v12           #ratio:F
    .end local v13           #refactoryBar:Landroid/graphics/Bitmap;
    .end local v14           #res:Landroid/content/res/Resources;
    .end local v15           #saveState:I
    .end local v16           #saveStateOriginal:I
    .end local v17           #src:Landroid/graphics/Bitmap;
    .end local v18           #srcRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    .line 296
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v19, "SceneCustomizeService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "draw failed : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 298
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 286
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #dstRect:Landroid/graphics/Rect;
    .restart local v6       #imageHeight:F
    .restart local v7       #imageWidth:F
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #paint:Landroid/graphics/Paint;
    .restart local v10       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v11       #previewCanvas:Landroid/graphics/Canvas;
    .restart local v12       #ratio:F
    .restart local v13       #refactoryBar:Landroid/graphics/Bitmap;
    .restart local v14       #res:Landroid/content/res/Resources;
    .restart local v15       #saveState:I
    .restart local v16       #saveStateOriginal:I
    .restart local v17       #src:Landroid/graphics/Bitmap;
    .restart local v18       #srcRect:Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    invoke-virtual {v11, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 299
    .end local v4           #dstRect:Landroid/graphics/Rect;
    .end local v6           #imageHeight:F
    .end local v7           #imageWidth:F
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v11           #previewCanvas:Landroid/graphics/Canvas;
    .end local v12           #ratio:F
    .end local v13           #refactoryBar:Landroid/graphics/Bitmap;
    .end local v14           #res:Landroid/content/res/Resources;
    .end local v15           #saveState:I
    .end local v16           #saveStateOriginal:I
    .end local v17           #src:Landroid/graphics/Bitmap;
    .end local v18           #srcRect:Landroid/graphics/Rect;
    :catch_1
    move-exception v5

    .line 300
    .local v5, ex:Ljava/lang/OutOfMemoryError;
    const-string v19, "SceneCustomizeService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OutOfMemory : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 302
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 303
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private saveScenePreviewImage(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Ljava/util/ArrayList;Z)V
    .locals 18
    .parameter "context"
    .parameter "mSceneManager"
    .parameter
    .parameter "isPortrait"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/htcSceneManager/scene/SceneManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, mSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 191
    .local v13, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v13, :cond_a

    .line 193
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htcSceneManager/scene/Scene;

    .line 194
    .local v10, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v10, :cond_1

    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    :cond_1
    if-eqz p4, :cond_7

    .line 198
    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, srcPath:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->refactoryPreviewImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 204
    .local v7, mPreviewBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v12

    .line 208
    .local v12, sceneId:I
    move/from16 v0, p4

    invoke-static {v0, v12}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneFileName(ZI)Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, sceneFileName:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 212
    .local v4, filesDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 216
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 217
    .local v8, out:Ljava/io/FileOutputStream;
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 218
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 219
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 221
    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, portPath:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, landPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 226
    .local v2, bFileNameChange:Z
    if-eqz p4, :cond_8

    .line 227
    if-eqz v9, :cond_3

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 228
    :cond_3
    move-object v9, v11

    .line 229
    const/4 v2, 0x1

    .line 238
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 239
    const-string v15, "SceneCustomizeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update preview path to: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateScenePreviewPath(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v12, v16, v17

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[I)V

    .line 243
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v15

    if-nez v15, :cond_6

    .line 244
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 200
    .end local v2           #bFileNameChange:Z
    .end local v4           #filesDir:Ljava/io/File;
    .end local v6           #landPath:Ljava/lang/String;
    .end local v7           #mPreviewBitmap:Landroid/graphics/Bitmap;
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v9           #portPath:Ljava/lang/String;
    .end local v11           #sceneFileName:Ljava/lang/String;
    .end local v12           #sceneId:I
    .end local v14           #srcPath:Ljava/lang/String;
    :cond_7
    invoke-virtual {v10}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #srcPath:Ljava/lang/String;
    goto/16 :goto_2

    .line 232
    .restart local v2       #bFileNameChange:Z
    .restart local v4       #filesDir:Ljava/io/File;
    .restart local v6       #landPath:Ljava/lang/String;
    .restart local v7       #mPreviewBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    .restart local v9       #portPath:Ljava/lang/String;
    .restart local v11       #sceneFileName:Ljava/lang/String;
    .restart local v12       #sceneId:I
    :cond_8
    if-eqz v6, :cond_9

    :try_start_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    if-nez v15, :cond_4

    .line 233
    :cond_9
    move-object v6, v11

    .line 234
    const/4 v2, 0x1

    goto :goto_3

    .line 247
    .end local v2           #bFileNameChange:Z
    .end local v4           #filesDir:Ljava/io/File;
    .end local v6           #landPath:Ljava/lang/String;
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v9           #portPath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 248
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v15, "SceneCustomizeService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update preview fail with scene: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", isPortrait: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 250
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    throw v15

    .line 253
    .end local v7           #mPreviewBitmap:Landroid/graphics/Bitmap;
    .end local v10           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v11           #sceneFileName:Ljava/lang/String;
    .end local v12           #sceneId:I
    .end local v14           #srcPath:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private startDeleteScenePreviewImageAndChangeFilePath(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Landroid/content/SharedPreferences;)V
    .locals 12
    .parameter "mContext"
    .parameter "mSceneManager"
    .parameter "preferences"

    .prologue
    const/4 v11, 0x0

    .line 312
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v3

    .line 314
    .local v3, mSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    if-nez v3, :cond_0

    .line 315
    const-string v8, "SceneCustomizeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSceneList = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 319
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 320
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v7, srcPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcSceneManager/scene/Scene;

    .line 322
    .local v4, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v4, :cond_2

    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {p0, v4, v9}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->getLocalPreviewPath(Lcom/htc/htcSceneManager/scene/Scene;Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v11}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->getLocalPreviewPath(Lcom/htc/htcSceneManager/scene/Scene;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v8, v9, v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateScenePreviewPath(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 330
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v6, srcFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 332
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v6           #srcFile:Ljava/io/File;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "SceneCustomizeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete scene preview image file srcPath= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",scene.getId() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 340
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #j:I
    .end local v4           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v7           #srcPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-static {p3, v11}, Lcom/htc/home/personalize/util/Utilities;->editReDrawFlag(Landroid/content/SharedPreferences;Z)V

    goto/16 :goto_0
.end method

.method private updateVersionInfo(Ljava/lang/String;Landroid/content/SharedPreferences;IILjava/lang/String;)V
    .locals 6
    .parameter "strAction"
    .parameter "preferences"
    .parameter "nAndroidPreviousVer"
    .parameter "nAndroidCurrentVer"
    .parameter "strCustomizeMsg"

    .prologue
    .line 113
    const-string v0, "SceneCustomizeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVersionInfo strAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->isNeedToUpdateVersionInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v3, p3

    move v4, p4

    move-object v5, p2

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->isNeedReDrawSceneImage(Ljava/lang/String;Ljava/lang/String;IILandroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/htc/home/personalize/util/Utilities;->editReDrawFlag(Landroid/content/SharedPreferences;Z)V

    .line 118
    :cond_0
    invoke-static {p2}, Lcom/htc/home/personalize/util/Utilities;->recordVersion(Landroid/content/SharedPreferences;)V

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public CustomizeICSBottomBarImage(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Landroid/content/SharedPreferences;)V
    .locals 10
    .parameter "context"
    .parameter "manager"
    .parameter "preferences"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 166
    const-string v6, "SceneCustomizeService"

    const-string v7, "Customize scene preview+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 168
    .local v3, startTime:Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v2

    .line 170
    .local v2, mSceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_0

    move v1, v4

    .line 172
    .local v1, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 173
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->saveScenePreviewImage(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Ljava/util/ArrayList;Z)V

    .line 174
    if-nez v1, :cond_1

    :goto_1
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->saveScenePreviewImage(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Ljava/util/ArrayList;Z)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 184
    .local v0, diff:Ljava/lang/Long;
    invoke-static {p3, v5}, Lcom/htc/home/personalize/util/Utilities;->editReDrawFlag(Landroid/content/SharedPreferences;Z)V

    .line 185
    const-string v4, "SceneCustomizeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Customize scene preview- ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0           #diff:Ljava/lang/Long;
    :goto_2
    return-void

    .end local v1           #isPortrait:Z
    :cond_0
    move v1, v5

    .line 170
    goto :goto_0

    .restart local v1       #isPortrait:Z
    :cond_1
    move v4, v5

    .line 174
    goto :goto_1

    .line 176
    :cond_2
    if-eqz v2, :cond_3

    .line 177
    const-string v4, "SceneCustomizeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSceneList.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    const-string v4, "SceneCustomizeService"

    const-string v5, "Customize scene preview- ,didn\'t reDrawPreviewImage due to mSceneList = null or mSceneList.size() <= 0 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 45
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, strAction:Ljava/lang/String;
    const-string v0, "PersonalizeSummary"

    invoke-virtual {v7, v0, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 48
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v0, "AndroidCurrentVersion"

    const/4 v10, -0x1

    invoke-interface {v2, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, nAndroidPreviousVer:I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .local v4, nAndroidCurrentVer:I
    const-string v0, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, strCustomizeMsg:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v9

    .local v9, sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->updateVersionInfo(Ljava/lang/String;Landroid/content/SharedPreferences;IILjava/lang/String;)V

    .line 61
    invoke-direct {p0, v1, v4}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->isDoCustomizationToICS(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {v7, v9}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->saveDefaultBottomBarApps(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V

    .line 71
    :cond_0
    invoke-direct {p0, v1, v5, v2}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->isFotaCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "NeedRedrawScenePreivewImage"

    invoke-interface {v2, v0, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 73
    .local v6, bIsNeedRedrawScene:Z
    const-string v0, "SceneCustomizeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bISNeedRedrawScene = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v9, v12}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList(Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 76
    .local v8, mSceneList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcSceneManager/scene/Scene;>;"
    if-eqz v8, :cond_1

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ge v0, v10, :cond_3

    .line 77
    :cond_1
    const-string v0, "SceneCustomizeService"

    const-string v10, "SceneList size < 1, no need do fota"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v6           #bIsNeedRedrawScene:Z
    .end local v8           #mSceneList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcSceneManager/scene/Scene;>;"
    :cond_2
    :goto_0
    return-void

    .line 79
    .restart local v6       #bIsNeedRedrawScene:Z
    .restart local v8       #mSceneList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htcSceneManager/scene/Scene;>;"
    :cond_3
    invoke-direct {p0}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->isNeedtoDeletePreviewImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-direct {p0, v7, v9, v2}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->startDeleteScenePreviewImageAndChangeFilePath(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0, v7, v9, v2}, Lcom/htc/home/personalize/scene/SceneCustomizeService;->CustomizeICSBottomBarImage(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method
