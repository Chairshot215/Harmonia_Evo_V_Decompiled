.class public Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;
.super Landroid/app/IntentService;
.source "SaveHomeWallpaperService.java"


# static fields
.field public static final DRAWABLE_TOKEN:Ljava/lang/String; = "Local_"

.field public static final LIVE_TOKEN:Ljava/lang/String; = "Live_"

.field private static final TAG:Ljava/lang/String; = "SaveHomeWallpaperService"

.field private static final WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field static final WIDGET_UTILITY_PACKAGE:Ljava/lang/String; = "com.htc.AddProgramWidget"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "SaveHomeWallpaperService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private getPresetWallpaperKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;Lcom/htc/htcSceneManager/scene/SceneManager;Z)V
    .locals 29
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "strWallpaperKey"
    .parameter "sm"
    .parameter "isOOBE"

    .prologue
    .line 210
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "initWallpaper() - workspaceId: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", strWallpaperKey: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p4, :cond_3

    .line 214
    move-object/from16 v16, p4

    .line 216
    .local v16, key:Ljava/lang/String;
    const-string v26, "SaveHomeWallpaperService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cust_DefaultThemeWallpaper: ThemeNumber> "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v25, "_"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x0

    const-string v28, "_"

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    :goto_0
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, p6

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 226
    const-string v25, "SaveHomeWallpaperService"

    const-string v26, "apply Wallpaper from OOBE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static/range {p2 .. p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v24

    .line 228
    .local v24, wm:Landroid/app/WallpaperManager;
    invoke-virtual/range {v24 .. v24}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v23

    .line 230
    .local v23, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v23, :cond_5

    .line 231
    const-string v25, "SaveHomeWallpaperService"

    const-string v26, "apply static wallpaper from OOBE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual/range {v24 .. v24}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 234
    .local v12, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v0, v12, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 235
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 236
    .local v6, WallpaperBitmap:Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 237
    .local v20, target:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 238
    const/16 v25, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 239
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 242
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 243
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p3

    move/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v6           #WallpaperBitmap:Landroid/graphics/Bitmap;
    .end local v20           #target:Ljava/lang/String;
    .end local v23           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v24           #wm:Landroid/app/WallpaperManager;
    :cond_1
    :goto_2
    return-void

    .line 216
    :cond_2
    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto/16 :goto_0

    .line 220
    .end local v16           #key:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->getPresetWallpaperKey(I)Ljava/lang/String;

    move-result-object v16

    .line 222
    .restart local v16       #key:Ljava/lang/String;
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cust_DefaultThemeWallpaper: ThemeNumber> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    .restart local v12       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v23       #wallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v24       #wm:Landroid/app/WallpaperManager;
    :cond_4
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "The wallpaper must be a BitmapDrawable."

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 248
    .end local v12           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v25, "SaveHomeWallpaperService"

    const-string v26, "apply live wallpaper from OOBE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual/range {v23 .. v23}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, componentName:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 252
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p3

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    .end local v10           #componentName:Ljava/lang/String;
    .end local v23           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v24           #wm:Landroid/app/WallpaperManager;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 260
    .local v22, wallpaperBundle:Landroid/os/Bundle;
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "wallpaperBundle : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz v22, :cond_e

    .line 263
    const-string v16, "image"

    .line 264
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 266
    .local v21, value:Ljava/lang/String;
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cust_DefaultThemeWallpaper: Wallpaper> "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v25, "Local_"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 268
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Use Local drawable : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v25, "Local_"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 271
    .local v19, source:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 272
    .local v17, pm:Landroid/content/pm/PackageManager;
    const-string v25, "com.htc.AddProgramWidget"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v18

    .line 273
    .local v18, resources:Landroid/content/res/Resources;
    const-string v25, "drawable"

    const-string v26, "com.htc.AddProgramWidget"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 274
    .local v5, DrawableResId:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 275
    .local v7, WallpaperDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v0, v7, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 276
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #WallpaperDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 277
    .restart local v6       #WallpaperBitmap:Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 278
    .restart local v20       #target:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 279
    const/16 v25, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 280
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 282
    :cond_7
    invoke-static/range {p2 .. p3}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 283
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 284
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p3

    move/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 290
    .end local v5           #DrawableResId:I
    .end local v6           #WallpaperBitmap:Landroid/graphics/Bitmap;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v18           #resources:Landroid/content/res/Resources;
    .end local v20           #target:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 291
    .local v14, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resource not found : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 287
    .end local v14           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #DrawableResId:I
    .restart local v7       #WallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    .restart local v18       #resources:Landroid/content/res/Resources;
    :cond_8
    :try_start_1
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "The wallpaper must be a BitmapDrawable."

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .end local v5           #DrawableResId:I
    .end local v7           #WallpaperDrawable:Landroid/graphics/drawable/Drawable;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v18           #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v13

    .line 293
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v25, "SaveHomeWallpaperService"

    const-string v26, "Rosie Utility not found : com.htc.AddProgramWidget"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 295
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #source:Ljava/lang/String;
    :cond_9
    const-string v25, "Live_"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 296
    const-string v25, "Live_"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, component:Ljava/lang/String;
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p3

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 299
    .end local v9           #component:Ljava/lang/String;
    :cond_a
    invoke-static/range {v21 .. v21}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 300
    .restart local v19       #source:Ljava/lang/String;
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "source - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_b

    .line 302
    const-string v19, "/system/customize/resource/htc_wallpaper_01.jpg"

    .line 305
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    .line 306
    .local v15, filesDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_c

    .line 307
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 310
    :cond_c
    const/16 v20, 0x0

    .line 311
    .restart local v20       #target:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 312
    const/16 v25, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 313
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "target() - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v11, dest:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_d

    .line 316
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "target(1) - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v26}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 320
    .end local v11           #dest:Ljava/io/File;
    :cond_d
    invoke-static/range {p2 .. p3}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 321
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "target - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v26}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    .line 323
    .local v8, bCopySuc:Z
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Copy wallpape from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p3

    move/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 327
    .end local v8           #bCopySuc:Z
    .end local v15           #filesDir:Ljava/io/File;
    .end local v19           #source:Ljava/lang/String;
    .end local v20           #target:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_e
    const-string v25, "SaveHomeWallpaperService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "no wallpaper for - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 336
    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
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

.method public static saveHomeWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "context"
    .parameter "bitmap"

    .prologue
    const/4 v11, -0x1

    .line 139
    const-string v9, "SaveHomeWallpaperService"

    const-string v10, "saveHomeWallpaper"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v5

    .line 145
    .local v5, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v6

    .line 146
    .local v6, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v6, :cond_0

    .line 147
    const-string v9, "SaveHomeWallpaperService"

    const-string v10, "Current scene is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 152
    .local v4, filesDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 156
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v11}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v10

    invoke-static {p0, v10}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/io/File;

    invoke-static {p0, v11}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, defaultWallpaper:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v11}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, defaultWallpaperTemp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 163
    :cond_2
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 165
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v9

    invoke-static {p0, v9}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v7, sceneWallpaper:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v10

    invoke-static {p0, v10}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v8, sceneWallpaperTemp:Ljava/io/File;
    const/4 v0, 0x0

    .local v0, bDelete:Z
    const/4 v1, 0x0

    .line 168
    .local v1, bRename:Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 169
    const-string v9, "SaveHomeWallpaperService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SceneWallpaper exists and will be removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    .line 172
    :cond_3
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 173
    const-string v9, "SaveHomeWallpaperService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bDelete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bRename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v6}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v9

    invoke-static {p0, v9}, Lcom/htc/htcSceneManager/scene/Scene;->getHomeWallpaper(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateScene(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public static saveLiveWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)V
    .locals 5
    .parameter "context"
    .parameter "wallpaperInfo"

    .prologue
    .line 120
    const-string v2, "SaveHomeWallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveLiveWallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    .line 125
    .local v0, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v1

    .line 126
    .local v1, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v1, :cond_0

    .line 127
    const-string v2, "SaveHomeWallpaperService"

    const-string v3, "Current scene is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateScene(Landroid/content/ContentResolver;Lcom/htc/htcSceneManager/scene/Scene;)V

    goto :goto_0
.end method

.method private static writeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "bitmap"
    .parameter "filename"

    .prologue
    .line 183
    if-eqz p1, :cond_1

    .line 185
    :try_start_0
    const-string v4, "SaveHomeWallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saving bitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 188
    .local v1, filesDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 192
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 195
    .local v3, success:Z
    const-string v4, "SaveHomeWallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved bitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1           #filesDir:Ljava/io/File;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #success:Z
    :cond_1
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/io/IOException;
    const-string v4, "SaveHomeWallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not save bitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 41
    const-string v2, "extra_intent_service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 42
    .local v14, saveWallpaperIntent:Landroid/content/Intent;
    const-string v2, "SaveHomeWallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onHandleIntent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 45
    .local v4, mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 46
    .local v7, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, action:Ljava/lang/String;
    const-string v2, "com.htc.home.personalize.initWallpaper"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string v2, "com.htc.home.personalize.init_scene_id"

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 49
    .local v5, sceneId:I
    const-string v2, "com.htc.home.personalize.isOOBE"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 50
    .local v8, isOOBE:Z
    const-string v2, "com.htc.home.personalize.wallpaperKey"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, strWallpaperKey:Ljava/lang/String;
    const-string v2, "SaveHomeWallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_INIT_WALLPAPER sceneId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", strWallpaperKey: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isOOBE: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v2, "com.htc.home.personalize.moduleBundle"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, moduleBundle:Landroid/os/Bundle;
    move-object/from16 v2, p0

    .line 53
    invoke-direct/range {v2 .. v8}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;Lcom/htc/htcSceneManager/scene/SceneManager;Z)V

    .line 117
    .end local v3           #moduleBundle:Landroid/os/Bundle;
    .end local v5           #sceneId:I
    .end local v6           #strWallpaperKey:Ljava/lang/String;
    .end local v8           #isOOBE:Z
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    const-string v2, "com.htc.home.personalize.current_scene_id"

    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 57
    .restart local v5       #sceneId:I
    const-string v2, "SaveHomeWallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_WALLPAPER_CHANGED : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->getInstance()Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;

    move-result-object v18

    .line 62
    .local v18, wallpaperChangeManager:Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->isInSceneChange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual/range {v18 .. v18}, Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;->unsetInSceneChange()V

    goto :goto_0

    .line 67
    :cond_2
    const/4 v2, -0x1

    if-eq v5, v2, :cond_0

    .line 68
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v20

    .line 69
    .local v20, wm:Landroid/app/WallpaperManager;
    invoke-virtual/range {v20 .. v20}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v19

    .line 70
    .local v19, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v19, :cond_4

    .line 71
    invoke-virtual/range {v20 .. v20}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 73
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x1

    .local v13, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v13, v2, :cond_3

    .line 76
    :try_start_0
    instance-of v2, v10, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 77
    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->saveHomeWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v13           #i:I
    :cond_3
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->drawWallpaper(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    .restart local v10       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v13       #i:I
    :catch_0
    move-exception v11

    .line 82
    .local v11, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 83
    const-string v2, "SaveHomeWallpaperService"

    const-string v21, "saveHomeWallpaper() OutOfMemoryError"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "SaveHomeWallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "retry times = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 90
    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #e:Ljava/lang/OutOfMemoryError;
    .end local v13           #i:I
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/htc/home/personalize/WallpaperLoader;->WALLPAPER_PATH:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v16, strLiveWallpaper:Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v2, ".jpg"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaperService;->saveLiveWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)V

    goto :goto_2

    .line 101
    .end local v5           #sceneId:I
    .end local v16           #strLiveWallpaper:Ljava/lang/StringBuilder;
    .end local v18           #wallpaperChangeManager:Lcom/htc/home/personalize/SceneProvider/WallpaperChangedManager;
    .end local v19           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v20           #wm:Landroid/app/WallpaperManager;
    :cond_5
    const-string v2, "com.htc.home.personalize.copyFile"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    const-string v2, "com.htc.home.personalize.fileSrc"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 103
    .local v17, strSrc:Ljava/lang/String;
    const-string v2, "com.htc.home.personalize.fileDest"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 104
    .local v15, strDest:Ljava/lang/String;
    const-string v2, "SaveHomeWallpaperService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_COPY_FILE from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 107
    .local v12, filesDir:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 111
    :cond_6
    if-eqz v17, :cond_0

    if-eqz v15, :cond_0

    .line 112
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_0

    .line 114
    .end local v12           #filesDir:Ljava/io/File;
    .end local v15           #strDest:Ljava/lang/String;
    .end local v17           #strSrc:Ljava/lang/String;
    :cond_7
    const-string v2, "com.htc.home.personalize.initFinish"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    invoke-static {v4, v2}, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
