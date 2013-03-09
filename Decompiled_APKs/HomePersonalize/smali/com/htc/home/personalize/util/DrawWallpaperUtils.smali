.class public Lcom/htc/home/personalize/util/DrawWallpaperUtils;
.super Ljava/lang/Object;
.source "DrawWallpaperUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/system/customize/resource/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "DrawWallpaperUtils"

    sput-object v0, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawWallpaper(Landroid/content/Context;)V
    .locals 40
    .parameter "context"

    .prologue
    .line 40
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "drawWallpaper+"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static/range {p0 .. p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v13

    .line 42
    .local v13, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 43
    .local v22, res:Landroid/content/res/Resources;
    const/4 v11, 0x1

    .line 45
    .local v11, isPortrait:Z
    if-eqz v11, :cond_2

    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenShortAxisLength()I

    move-result v36

    .line 47
    .local v36, screenWidth:I
    :goto_0
    if-eqz v11, :cond_3

    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenLongAxisLength()I

    move-result v35

    .line 50
    .local v35, screenHeight:I
    :goto_1
    if-eqz v36, :cond_0

    if-nez v35, :cond_1

    .line 51
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/htc/home/personalize/config/SettingUtil;->loadSettings(Landroid/content/Context;)V

    .line 53
    if-eqz v11, :cond_4

    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenShortAxisLength()I

    move-result v36

    .line 55
    :goto_2
    if-eqz v11, :cond_5

    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenLongAxisLength()I

    move-result v35

    .line 59
    :cond_1
    :goto_3
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "screenWidth:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "screenHeight:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v13}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v30

    .line 64
    .local v30, sceneId:I
    move/from16 v0, v30

    invoke-static {v11, v0}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneFileName(ZI)Ljava/lang/String;

    move-result-object v29

    .line 65
    .local v29, sceneFileName:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScenePreviewPath(Z)Ljava/lang/String;

    move-result-object v28

    .line 66
    .local v28, sceneCacheName:Ljava/lang/String;
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "sceneFileName:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "sceneCacheName:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v32, screenCacheFile:Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v37

    if-nez v37, :cond_6

    .line 71
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "return directly due to no screen capture"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_4
    return-void

    .line 45
    .end local v28           #sceneCacheName:Ljava/lang/String;
    .end local v29           #sceneFileName:Ljava/lang/String;
    .end local v30           #sceneId:I
    .end local v32           #screenCacheFile:Ljava/io/File;
    .end local v35           #screenHeight:I
    .end local v36           #screenWidth:I
    :cond_2
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenLongAxisLength()I

    move-result v36

    goto/16 :goto_0

    .line 47
    .restart local v36       #screenWidth:I
    :cond_3
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenShortAxisLength()I

    move-result v35

    goto/16 :goto_1

    .line 53
    .restart local v35       #screenHeight:I
    :cond_4
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenLongAxisLength()I

    move-result v36

    goto/16 :goto_2

    .line 55
    :cond_5
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->getScreenShortAxisLength()I

    move-result v35

    goto/16 :goto_3

    .line 76
    .restart local v28       #sceneCacheName:Ljava/lang/String;
    .restart local v29       #sceneFileName:Ljava/lang/String;
    .restart local v30       #sceneId:I
    .restart local v32       #screenCacheFile:Ljava/io/File;
    :cond_6
    :try_start_0
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .local v15, paint:Landroid/graphics/Paint;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    const v37, 0x7f070008

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 80
    .local v17, panelWidth:F
    const v37, 0x7f07000a

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 82
    .local v16, panelHeight:F
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v25, v17, v37

    .line 83
    .local v25, scaleX:F
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v26, v16, v37

    .line 85
    .local v26, scaleY:F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v38, v0

    sget-object v39, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v37 .. v39}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 87
    .local v19, previewBitmap:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v20, previewCanvas:Landroid/graphics/Canvas;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 93
    .local v24, saveStateOriginal:I
    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v36

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->drawWallpaperOnCanvas(Landroid/content/Context;Landroid/graphics/Canvas;II)V

    .line 98
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "BitmapFactory.decodeFile+"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static/range {v28 .. v28}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 100
    .local v5, cache:Landroid/graphics/Bitmap;
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "BitmapFactory.decodeFile-, cache="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v5, :cond_7

    .line 102
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v21, v37, v38

    .line 103
    .local v21, ratio:F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .line 106
    .local v23, saveState:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->getHeight()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->getWidth()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 107
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 111
    :goto_5
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "previewCancas.drawBimap+"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "previewCancas.drawBimap-"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 116
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "cache.recycle()"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v5, 0x0

    .line 120
    .end local v21           #ratio:F
    .end local v23           #saveState:I
    :cond_7
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v37

    invoke-static/range {v37 .. v37}, Landroid/os/Process;->getThreadPriority(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 122
    .local v6, currentPriority:I
    const/16 v37, 0xa

    :try_start_1
    invoke-static/range {v37 .. v37}, Landroid/os/Process;->setThreadPriority(I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 126
    .local v9, filesDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v37

    if-nez v37, :cond_8

    .line 127
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 130
    :cond_8
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 131
    .local v14, out:Ljava/io/FileOutputStream;
    sget-object v37, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v38, 0x64

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 133
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 135
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    const/16 v19, 0x0

    .line 138
    move/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v27

    .line 139
    .local v27, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual/range {v27 .. v27}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, portPath:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, landPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 142
    .local v4, bFileNameChange:Z
    if-eqz v11, :cond_d

    .line 143
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a

    .line 144
    :cond_9
    move-object/from16 v18, v29

    .line 145
    const/4 v4, 0x1

    .line 154
    :cond_a
    :goto_6
    if-eqz v4, :cond_b

    .line 155
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "update preview path to: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1, v12}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateScenePreviewPath(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    const/16 v37, 0x3

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput v30, v38, v39

    move/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v13, v0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[I)V

    .line 159
    :cond_b
    new-instance v31, Ljava/io/File;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v31, scenePickerFile:Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->lastModified()J

    move-result-wide v33

    .line 161
    .local v33, screenCacheTime:J
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "screenCacheTime1:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, v31

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 166
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v10, intent:Landroid/content/Intent;
    const-string v37, "com.htc.home.personalize.finishCreatePreview"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "sendBroadcast+, intent="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "sendBroadcast-"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :try_start_2
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    .end local v4           #bFileNameChange:Z
    .end local v5           #cache:Landroid/graphics/Bitmap;
    .end local v6           #currentPriority:I
    .end local v9           #filesDir:Ljava/io/File;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #landPath:Ljava/lang/String;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #panelHeight:F
    .end local v17           #panelWidth:F
    .end local v18           #portPath:Ljava/lang/String;
    .end local v19           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v20           #previewCanvas:Landroid/graphics/Canvas;
    .end local v24           #saveStateOriginal:I
    .end local v25           #scaleX:F
    .end local v26           #scaleY:F
    .end local v27           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v31           #scenePickerFile:Ljava/io/File;
    .end local v33           #screenCacheTime:J
    :goto_7
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "drawWallpaper-"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 109
    .restart local v5       #cache:Landroid/graphics/Bitmap;
    .restart local v15       #paint:Landroid/graphics/Paint;
    .restart local v16       #panelHeight:F
    .restart local v17       #panelWidth:F
    .restart local v19       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #previewCanvas:Landroid/graphics/Canvas;
    .restart local v21       #ratio:F
    .restart local v23       #saveState:I
    .restart local v24       #saveStateOriginal:I
    .restart local v25       #scaleX:F
    .restart local v26       #scaleY:F
    :cond_c
    :try_start_3
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 178
    .end local v5           #cache:Landroid/graphics/Bitmap;
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #panelHeight:F
    .end local v17           #panelWidth:F
    .end local v19           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v20           #previewCanvas:Landroid/graphics/Canvas;
    .end local v21           #ratio:F
    .end local v23           #saveState:I
    .end local v24           #saveStateOriginal:I
    .end local v25           #scaleX:F
    .end local v26           #scaleY:F
    :catch_0
    move-exception v8

    .line 179
    .local v8, ex:Ljava/lang/RuntimeException;
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "draw failed : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_7

    .line 148
    .end local v8           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #bFileNameChange:Z
    .restart local v5       #cache:Landroid/graphics/Bitmap;
    .restart local v6       #currentPriority:I
    .restart local v9       #filesDir:Ljava/io/File;
    .restart local v12       #landPath:Ljava/lang/String;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #paint:Landroid/graphics/Paint;
    .restart local v16       #panelHeight:F
    .restart local v17       #panelWidth:F
    .restart local v18       #portPath:Ljava/lang/String;
    .restart local v19       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #previewCanvas:Landroid/graphics/Canvas;
    .restart local v24       #saveStateOriginal:I
    .restart local v25       #scaleX:F
    .restart local v26       #scaleY:F
    .restart local v27       #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_d
    if-eqz v12, :cond_e

    :try_start_4
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v37

    if-nez v37, :cond_a

    .line 149
    :cond_e
    move-object/from16 v12, v29

    .line 150
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 171
    .end local v4           #bFileNameChange:Z
    .end local v9           #filesDir:Ljava/io/File;
    .end local v12           #landPath:Ljava/lang/String;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v18           #portPath:Ljava/lang/String;
    .end local v27           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :catch_1
    move-exception v7

    .line 172
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    const-string v38, "write failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :try_start_6
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    .line 181
    .end local v5           #cache:Landroid/graphics/Bitmap;
    .end local v6           #currentPriority:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #panelHeight:F
    .end local v17           #panelWidth:F
    .end local v19           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v20           #previewCanvas:Landroid/graphics/Canvas;
    .end local v24           #saveStateOriginal:I
    .end local v25           #scaleX:F
    .end local v26           #scaleY:F
    :catch_2
    move-exception v8

    .line 182
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-object v37, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "OutOfMemory : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 184
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_7

    .line 176
    .end local v8           #ex:Ljava/lang/OutOfMemoryError;
    .restart local v5       #cache:Landroid/graphics/Bitmap;
    .restart local v6       #currentPriority:I
    .restart local v15       #paint:Landroid/graphics/Paint;
    .restart local v16       #panelHeight:F
    .restart local v17       #panelWidth:F
    .restart local v19       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v20       #previewCanvas:Landroid/graphics/Canvas;
    .restart local v24       #saveStateOriginal:I
    .restart local v25       #scaleX:F
    .restart local v26       #scaleY:F
    :catchall_0
    move-exception v37

    :try_start_7
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    throw v37
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
.end method

.method private static drawWallpaperOnCanvas(Landroid/content/Context;Landroid/graphics/Canvas;II)V
    .locals 34
    .parameter "context"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 189
    invoke-static/range {p0 .. p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v6

    .line 190
    .local v6, currentScene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v25

    .line 191
    .local v25, wallpaperComponent:Ljava/lang/String;
    const/16 v26, 0x0

    .line 192
    .local v26, wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v14, 0x0

    .line 193
    .local v14, isLiveWallpaper:Z
    const/4 v15, 0x0

    .line 194
    .local v15, isLoadThumbnailFromWallpaperInfo:Z
    sget-object v30, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "currentScene : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v25, :cond_2

    .line 197
    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 199
    .local v5, componentName:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 200
    .local v21, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 202
    .local v12, info:Landroid/content/pm/ResolveInfo;
    new-instance v13, Landroid/content/Intent;

    const-string v30, "android.service.wallpaper.WallpaperService"

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v13, intent:Landroid/content/Intent;
    const/16 v30, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 204
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 205
    .local v17, listSize:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 206
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 207
    .local v22, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v22, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 209
    move-object/from16 v12, v22

    .line 205
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 213
    .end local v22           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v12, :cond_2

    .line 216
    :try_start_0
    new-instance v28, Landroid/app/WallpaperInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 218
    .local v28, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-eqz v28, :cond_7

    .line 219
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 220
    .local v20, liveWallpaperName:Ljava/lang/CharSequence;
    invoke-virtual/range {v28 .. v28}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->getCurrentLiveWallpaperFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 221
    .local v19, liveWallpaperImagePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 222
    .local v18, liveWallpaperImageBitmap:Landroid/graphics/Bitmap;
    if-nez v18, :cond_6

    .line 223
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    const/4 v15, 0x1

    .line 229
    :goto_1
    const/4 v14, 0x1

    .line 244
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v11           #i:I
    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17           #listSize:I
    .end local v18           #liveWallpaperImageBitmap:Landroid/graphics/Bitmap;
    .end local v19           #liveWallpaperImagePath:Ljava/lang/String;
    .end local v20           #liveWallpaperName:Ljava/lang/CharSequence;
    .end local v21           #pm:Landroid/content/pm/PackageManager;
    .end local v28           #wallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_2
    :goto_2
    if-nez v14, :cond_3

    .line 245
    new-instance v26, Landroid/graphics/drawable/BitmapDrawable;

    .end local v26           #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 251
    .restart local v26       #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    .line 252
    .local v24, wallpaperBitmap:Landroid/graphics/Bitmap;
    if-eqz v26, :cond_5

    .line 254
    if-eqz v24, :cond_5

    .line 255
    new-instance v23, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    .local v23, srcRect:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 258
    .local v7, dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v8, v30, 0x2

    .line 259
    .local v8, dx:I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v9, v30, 0x2

    .line 260
    .local v9, dy:I
    sget-object v30, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dx:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " dy:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v31

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 264
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 267
    if-nez v15, :cond_4

    .line 268
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    :cond_4
    const/16 v24, 0x0

    .line 273
    .end local v7           #dstRect:Landroid/graphics/Rect;
    .end local v8           #dx:I
    .end local v9           #dy:I
    .end local v23           #srcRect:Landroid/graphics/Rect;
    :cond_5
    return-void

    .line 226
    .end local v24           #wallpaperBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #componentName:Landroid/content/ComponentName;
    .restart local v11       #i:I
    .restart local v12       #info:Landroid/content/pm/ResolveInfo;
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v16       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17       #listSize:I
    .restart local v18       #liveWallpaperImageBitmap:Landroid/graphics/Bitmap;
    .restart local v19       #liveWallpaperImagePath:Ljava/lang/String;
    .restart local v20       #liveWallpaperName:Ljava/lang/CharSequence;
    .restart local v21       #pm:Landroid/content/pm/PackageManager;
    .restart local v28       #wallpaperInfo:Landroid/app/WallpaperInfo;
    :cond_6
    :try_start_1
    new-instance v27, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v26           #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v27, wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v26, v27

    .end local v27           #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v26       #wallpaperDrawable:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_1

    .line 231
    .end local v18           #liveWallpaperImageBitmap:Landroid/graphics/Bitmap;
    .end local v19           #liveWallpaperImagePath:Ljava/lang/String;
    .end local v20           #liveWallpaperName:Ljava/lang/CharSequence;
    :cond_7
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v29

    .line 232
    .local v29, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual/range {v29 .. v29}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 235
    .end local v28           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v29           #wallpaperManager:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v10

    .line 236
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 237
    .end local v10           #e:Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 239
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public static getCurrentLiveWallpaperFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "serviceName"

    .prologue
    .line 276
    const-string v2, "%s.jpg"

    invoke-static {v2}, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, liveWallpaperFormat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, staticWallpaperFileName:Ljava/lang/String;
    return-object v1
.end method

.method public static manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 284
    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/customize/resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
