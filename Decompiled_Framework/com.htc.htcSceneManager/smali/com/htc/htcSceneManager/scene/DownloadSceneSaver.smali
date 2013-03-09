.class public Lcom/htc/htcSceneManager/scene/DownloadSceneSaver;
.super Ljava/lang/Object;
.source "DownloadSceneSaver.java"


# static fields
.field private static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_SCENE_SAVED:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

.field public static final ACTION_UPDATE_SCENE:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_UPDATE_SCENE"

.field public static final EXTRA_DOWNLOAD_SCENE_ID:Ljava/lang/String; = "com.htc.launcher.scene.EXTRA_SCENE_ID"

.field private static final EXTRA_LOCALIZED_NAME:Ljava/lang/String; = "com.htc.launcher.scene.LOCALIZED_SCENE_NAME"

.field public static final EXTRA_ONLINE_SCENE_ID:Ljava/lang/String; = "com.htc.launcher.scene.ONLINE_SCENE_ID"

.field private static final EXTRA_PREVIEW_LAND_PATH:Ljava/lang/String; = "com.htc.launcher.scene.PREVIEW_LAND_PATH"

.field private static final EXTRA_PREVIEW_PATH:Ljava/lang/String; = "com.htc.launcher.scene.PREVIEW_PATH"

.field private static final EXTRA_SCENE_PATH:Ljava/lang/String; = "com.htc.launcher.scene.SCENE_PATH"

.field private static final EXTRA_THUMBNAIL_LAND_PATH:Ljava/lang/String; = "com.htc.launcher.scene.THUMBNAIL_LAND_PATH"

.field private static final EXTRA_THUMBNAIL_PATH:Ljava/lang/String; = "com.htc.launcher.scene.THUMBNAIL_PATH"

.field public static final PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_"

.field public static final PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

.field private static final TAG:Ljava/lang/String; = "DownloadSceneReceiver"

.field private static final localLOG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveSceneData(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/4 v15, -0x1

    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v8

    new-instance v14, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v14}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    const-string v23, "com.htc.launcher.scene.SCENE_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v23, "com.htc.launcher.scene.PREVIEW_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v23, "com.htc.launcher.scene.THUMBNAIL_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v23, "com.htc.launcher.scene.PREVIEW_LAND_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v23, "com.htc.launcher.scene.THUMBNAIL_LAND_PATH"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v23, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v23, "com.htc.launcher.scene.LOCALIZED_SCENE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_2

    const-string v23, "zip"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    new-instance v22, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    const/16 v21, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v23, ".xml"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v21

    goto :goto_0

    :cond_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v20

    goto :goto_0

    :cond_1
    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v12, v11, v1, v7}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    new-instance v23, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/data/data/com.htc.home.personalize/files/home_wallpaper_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-virtual {v14, v15}, Lcom/htc/htcSceneManager/scene/Scene;->setId(I)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/data/com.htc.home.personalize/files/home_wallpaper_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    new-instance v13, Landroid/content/Intent;

    const-string v23, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_3
    const/4 v12, 0x0

    :try_start_1
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v12, v11, v1, v7}, Lcom/htc/htcSceneManager/scene/XmlUtils;->startParsing(Landroid/content/Context;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v13, Landroid/content/Intent;

    const-string v23, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v13, Landroid/content/Intent;

    const-string v23, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :catchall_0
    move-exception v23

    new-instance v13, Landroid/content/Intent;

    const-string v24, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v24, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    throw v23
.end method
