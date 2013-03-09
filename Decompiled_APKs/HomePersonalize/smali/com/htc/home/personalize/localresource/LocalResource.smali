.class public Lcom/htc/home/personalize/localresource/LocalResource;
.super Lcom/htc/home/personalize/abstractresource/Resource;
.source "LocalResource.java"


# static fields
.field public static final SCENE_LIST_MAX:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appCtx:Landroid/content/Context;

.field private cleaned:Z

.field private final parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

.field private final resPath:Ljava/lang/String;

.field private status:Lcom/htc/home/personalize/abstractresource/Resource$Const;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/home/personalize/localresource/LocalResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;)V
    .locals 2
    .parameter "productID"
    .parameter "iconURL"
    .parameter "strCateID"
    .parameter "displayName"
    .parameter "navigateTo"
    .parameter "displayOrder"
    .parameter "appType"
    .parameter "appId"
    .parameter "appPackageName"
    .parameter "appSource"
    .parameter "versionCode"
    .parameter "publishedDate"
    .parameter "price"
    .parameter "contentSize"
    .parameter "previewImageLandscape"
    .parameter "previewImagePortrait"
    .parameter "viewType"
    .parameter "ctx"
    .parameter "absResPath"
    .parameter "parent"
    .parameter "initStatus"
    .parameter "termStatus"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p17}, Lcom/htc/home/personalize/abstractresource/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/localresource/LocalResource;->cleaned:Z

    .line 48
    invoke-virtual/range {p18 .. p18}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/localresource/LocalResource;->appCtx:Landroid/content/Context;

    .line 49
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->resPath:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    .line 51
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->status:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 52
    move-object/from16 v0, p22

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->doUpdateStatus(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 53
    return-void
.end method

.method public static check(Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;Landroid/content/Context;)Ljava/io/File;
    .locals 33
    .parameter "resPath"
    .parameter "res"
    .parameter "parent"
    .parameter "context"

    .prologue
    .line 350
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getType()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 351
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check: illegal parent type, mismatch with resources\'. parent.type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " res.type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 362
    const/16 v19, 0x0

    .line 546
    :cond_0
    :goto_0
    return-object v19

    .line 366
    :cond_1
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 371
    :cond_2
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check: invalid resPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz p2, :cond_3

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, -0x12

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 382
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 386
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 390
    const/16 v27, 0x0

    .line 391
    .local v27, mExternalStorageAvailable:Z
    const/16 v28, 0x0

    .line 392
    .local v28, mExternalStorageWriteable:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v31

    .line 393
    .local v31, state:Ljava/lang/String;
    const-string v5, "mounted"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 395
    const/16 v28, 0x1

    move/from16 v27, v28

    .line 407
    .end local v27           #mExternalStorageAvailable:Z
    :goto_1
    if-nez v28, :cond_8

    .line 408
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    const-string v6, "check: sd card not ready"

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p2, :cond_5

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, -0xa

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 419
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 396
    .restart local v27       #mExternalStorageAvailable:Z
    :cond_6
    const-string v5, "mounted_ro"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 398
    const/16 v27, 0x1

    .line 399
    const/16 v28, 0x0

    goto :goto_1

    .line 404
    :cond_7
    const/16 v28, 0x0

    move/from16 v27, v28

    .local v27, mExternalStorageAvailable:I
    goto :goto_1

    .line 424
    .end local v27           #mExternalStorageAvailable:I
    .end local v28           #mExternalStorageWriteable:Z
    .end local v31           #state:Ljava/lang/String;
    :cond_8
    new-instance v19, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v19, details:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 427
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check: exists details = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", guid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", parent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz p2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v5

    if-nez v5, :cond_9

    .line 435
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 438
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 439
    if-eqz p2, :cond_a

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, -0xd

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 449
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 453
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    .line 454
    .local v20, dir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    .line 455
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 457
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 458
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check: fail to mkdirs. dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz p2, :cond_d

    .line 460
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, -0xe

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 469
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 473
    :cond_e
    new-instance v29, Ljava/io/File;

    const-string v5, ".nomedia"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 474
    .local v29, nomedia:Ljava/io/File;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    .line 477
    :try_start_0
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 478
    .local v24, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 490
    .end local v24           #fos:Ljava/io/FileOutputStream;
    :cond_f
    :goto_2
    new-instance v30, Landroid/os/StatFs;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 491
    .local v30, stat:Landroid/os/StatFs;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getContentSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/home/personalize/localresource/LocalResource;->parseSize(Ljava/lang/String;)J

    move-result-wide v15

    .line 492
    .local v15, bytesNeeded:J
    invoke-virtual/range {v30 .. v30}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    div-long v13, v15, v5

    .line 493
    .local v13, blocksNeeded:J
    invoke-virtual/range {v30 .. v30}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v13

    if-gez v5, :cond_11

    .line 494
    if-eqz p2, :cond_10

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, -0xb

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 504
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 479
    .end local v13           #blocksNeeded:J
    .end local v15           #bytesNeeded:J
    .end local v30           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v23

    .line 480
    .local v23, e:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    const-string v6, "check: FileNotFoundException on create .nomedia file"

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 482
    .end local v23           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v23

    .line 483
    .local v23, e:Ljava/io/IOException;
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    const-string v6, "check: IOException on close file"

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 507
    .end local v23           #e:Ljava/io/IOException;
    .restart local v13       #blocksNeeded:J
    .restart local v15       #bytesNeeded:J
    .restart local v30       #stat:Landroid/os/StatFs;
    :cond_11
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v6

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_0

    .line 508
    const/16 v26, 0x0

    .line 509
    .local v26, installed:I
    const/16 v22, 0x0

    .line 510
    .local v22, downloading:I
    const/16 v21, 0x0

    .line 511
    .local v21, download2install:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->size()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_14

    .line 512
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->get(I)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v32

    .line 513
    .local v32, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v32

    if-ne v5, v0, :cond_13

    .line 514
    add-int/lit8 v22, v22, 0x1

    .line 511
    :cond_12
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 515
    :cond_13
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v32

    if-ne v5, v0, :cond_12

    .line 516
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 519
    .end local v32           #status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 520
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "content://com.htc.home.personalize.SceneProvider.SceneProvider/scene?notify=true"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 521
    .local v3, URI:Landroid/net/Uri;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    .line 522
    .local v4, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 523
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_17

    .line 524
    :goto_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 525
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 527
    :cond_15
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_16
    const/16 v18, 0x0

    .line 531
    :cond_17
    add-int v5, v22, v21

    add-int v17, v5, v26

    .line 532
    .local v17, current:I
    const/16 v5, 0x14

    move/from16 v0, v17

    if-lt v0, v5, :cond_0

    .line 533
    if-eqz p2, :cond_18

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const/16 v9, -0x14

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v12}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 543
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private doCleanUp()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->cleaned:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->cleaned:Z

    .line 61
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/localresource/LocalResource;->appCtx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUp(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static doCleanUp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "resPath"
    .parameter "ctx"

    .prologue
    .line 196
    invoke-static {p0, p1}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->cancelOrRemove(Ljava/lang/String;Landroid/content/Context;)V

    .line 197
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->cancelOrRemove(Ljava/lang/String;Landroid/content/Context;)V

    .line 198
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->cancelOrRemove(Ljava/lang/String;Landroid/content/Context;)V

    .line 199
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->cancelOrRemove(Ljava/lang/String;Landroid/content/Context;)V

    .line 202
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, res:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, details:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, icon:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v3, thumb:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-static {v5, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, thumbLs:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCleanUp: failed to delete res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCleanUp: failed to delete details="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 221
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCleanUp: failed to delete icon="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 224
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCleanUp: failed to delete thumb="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    .line 227
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCleanUp: failed to delete thumbLs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_4
    return-void
.end method

.method private static doCleanUpByDetails(Ljava/io/File;Landroid/content/Context;)V
    .locals 5
    .parameter "details"
    .parameter "ctx"

    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v2}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v4}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, resPath:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUp(Ljava/lang/String;Landroid/content/Context;)V

    .line 346
    .end local v0           #resPath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static doExport(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource;)Z
    .locals 13
    .parameter "details"
    .parameter "ctx"
    .parameter "res"

    .prologue
    const/4 v9, 0x1

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, bw:Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .line 113
    .local v7, w:Ljava/io/Writer;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, tmp:Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 117
    new-instance v8, Ljava/io/OutputStreamWriter;

    const/4 v10, 0x1

    invoke-virtual {p1, v6, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .end local v6           #tmp:Ljava/lang/String;
    .end local v7           #w:Ljava/io/Writer;
    .local v8, w:Ljava/io/Writer;
    :goto_0
    if-nez v8, :cond_7

    .line 121
    :try_start_1
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 123
    .end local v8           #w:Ljava/io/Writer;
    .restart local v7       #w:Ljava/io/Writer;
    :goto_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 129
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 132
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getTargetUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 134
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getIconURL()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, iconURL:Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, ""

    .end local v3           #iconURL:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 137
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getCategoryID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 139
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 141
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getNavigateTo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 144
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getDisplayOrder()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 146
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getAppType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 148
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 150
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getAppPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 152
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getAppSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 155
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getVersionCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 157
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getPublishedDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 159
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getPrice()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 161
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getContentSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 164
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getPreviewImageLandscape()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, previewImageLandscape:Ljava/lang/String;
    if-nez v4, :cond_1

    const-string v4, ""

    .end local v4           #previewImageLandscape:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 167
    invoke-virtual {p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getPreviewImagePortrait()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, previewImagePortrait:Ljava/lang/String;
    if-nez v5, :cond_2

    const-string v5, ""

    .end local v5           #previewImagePortrait:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    .line 179
    if-eqz v1, :cond_6

    .line 181
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 185
    :goto_2
    const/4 v0, 0x0

    .line 191
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :goto_3
    return v9

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-object v9, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doExport: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " detail="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    if-eqz v0, :cond_3

    .line 181
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 185
    .end local v2           #e:Ljava/io/IOException;
    :goto_5
    const/4 v0, 0x0

    .line 188
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 189
    sget-object v9, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doExport: fail to delete details="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 175
    :catch_1
    move-exception v2

    .line 176
    .local v2, e:Ljava/lang/RuntimeException;
    :goto_6
    :try_start_7
    sget-object v9, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doExport: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " details="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 179
    if-eqz v0, :cond_3

    .line 181
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 182
    :catch_2
    move-exception v2

    .line 183
    .local v2, e:Ljava/io/IOException;
    sget-object v9, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doExport: IOException details="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 179
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #w:Ljava/io/Writer;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v0, :cond_5

    .line 181
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 185
    :goto_8
    const/4 v0, 0x0

    .line 179
    :cond_5
    throw v9

    .line 182
    :catch_3
    move-exception v2

    .line 183
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v10, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doExport: IOException details="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 182
    .restart local v7       #w:Ljava/io/Writer;
    :catch_4
    move-exception v2

    .line 183
    sget-object v9, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doExport: IOException details="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 182
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    .line 183
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v10, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doExport: IOException details="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 179
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 175
    .end local v7           #w:Ljava/io/Writer;
    .restart local v8       #w:Ljava/io/Writer;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8           #w:Ljava/io/Writer;
    .restart local v7       #w:Ljava/io/Writer;
    goto/16 :goto_6

    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_6

    .line 172
    .end local v7           #w:Ljava/io/Writer;
    .restart local v8       #w:Ljava/io/Writer;
    :catch_8
    move-exception v2

    move-object v7, v8

    .end local v8           #w:Ljava/io/Writer;
    .restart local v7       #w:Ljava/io/Writer;
    goto/16 :goto_4

    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_4

    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :cond_6
    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_3

    .end local v7           #w:Ljava/io/Writer;
    .restart local v8       #w:Ljava/io/Writer;
    :cond_7
    move-object v7, v8

    .end local v8           #w:Ljava/io/Writer;
    .restart local v7       #w:Ljava/io/Writer;
    goto/16 :goto_1

    :cond_8
    move-object v8, v7

    .end local v7           #w:Ljava/io/Writer;
    .restart local v8       #w:Ljava/io/Writer;
    goto/16 :goto_0
.end method

.method private static doImportATGServer(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/localresource/LocalResource;
    .locals 29
    .parameter "details"
    .parameter "ctx"
    .parameter "initStatus"
    .parameter "parent"
    .parameter "termStatus"

    .prologue
    .line 234
    :try_start_0
    new-instance v26, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 237
    .local v26, br:Ljava/io/BufferedReader;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 239
    .local v20, viewType:I
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, productID:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .line 242
    .local v28, targetURL:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, iconURL:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, categoryID:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, displayName:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, navigateTo:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 248
    .local v9, displayOrder:I
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 249
    .local v10, appType:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, appId:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, appPackageName:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 253
    .local v13, appSource:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, versionCode:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 255
    .local v15, publishedDate:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, price:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 258
    .local v17, contentSize:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 259
    .local v18, previewImageLandscape:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 261
    .local v19, previewImagePortrait:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    sget-object v25, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual/range {v25 .. v25}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 263
    .local v22, resPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 264
    .local v3, ret:Lcom/htc/home/personalize/localresource/LocalResource;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getType()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v21

    if-nez v21, :cond_1

    .line 265
    :cond_0
    new-instance v3, Lcom/htc/home/personalize/localresource/LocalResource;

    .end local v3           #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    move-object/from16 v21, p1

    move-object/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, p4

    invoke-direct/range {v3 .. v25}, Lcom/htc/home/personalize/localresource/LocalResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 270
    .restart local v3       #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->setTargetUrl(Ljava/lang/String;)V

    .line 272
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 284
    .end local v3           #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    .end local v4           #productID:Ljava/lang/String;
    .end local v5           #iconURL:Ljava/lang/String;
    .end local v6           #categoryID:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #navigateTo:Ljava/lang/String;
    .end local v9           #displayOrder:I
    .end local v10           #appType:Ljava/lang/String;
    .end local v11           #appId:Ljava/lang/String;
    .end local v12           #appPackageName:Ljava/lang/String;
    .end local v13           #appSource:Ljava/lang/String;
    .end local v14           #versionCode:Ljava/lang/String;
    .end local v15           #publishedDate:Ljava/lang/String;
    .end local v16           #price:Ljava/lang/String;
    .end local v17           #contentSize:Ljava/lang/String;
    .end local v18           #previewImageLandscape:Ljava/lang/String;
    .end local v19           #previewImagePortrait:Ljava/lang/String;
    .end local v20           #viewType:I
    .end local v22           #resPath:Ljava/lang/String;
    .end local v26           #br:Ljava/io/BufferedReader;
    .end local v28           #targetURL:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 276
    :catch_0
    move-exception v27

    .line 277
    .local v27, e:Ljava/lang/NumberFormatException;
    sget-object v21, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doImport: NumberFormatException details="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual/range {v27 .. v27}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 284
    .end local v27           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 279
    :catch_1
    move-exception v27

    .line 280
    .local v27, e:Ljava/io/IOException;
    sget-object v21, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doImport: IOException details="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static doImportV1Server(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/localresource/LocalResource;
    .locals 33
    .parameter "details"
    .parameter "ctx"
    .parameter "initStatus"
    .parameter "parent"
    .parameter "termStatus"

    .prologue
    .line 290
    :try_start_0
    new-instance v25, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    .local v25, br:Ljava/io/BufferedReader;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 293
    .local v31, type:I
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, guid:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    .line 296
    .local v29, id:J
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, label:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .line 299
    .local v27, desc:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v32

    .line 300
    .local v32, ver:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 302
    .local v15, size:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 303
    .local v24, author:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .line 305
    .local v26, corp:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 307
    .local v13, date:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v7}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 312
    .local v20, resPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 313
    .local v1, ret:Lcom/htc/home/personalize/localresource/LocalResource;
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v3

    if-nez v3, :cond_1

    .line 314
    :cond_0
    new-instance v1, Lcom/htc/home/personalize/localresource/LocalResource;

    .end local v1           #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    const/4 v3, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "wallpaper-android"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xa

    move-object v9, v2

    move-object/from16 v19, p1

    move-object/from16 v21, p3

    move-object/from16 v22, p2

    move-object/from16 v23, p4

    invoke-direct/range {v1 .. v23}, Lcom/htc/home/personalize/localresource/LocalResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 323
    .restart local v1       #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object/from16 v0, p4

    if-eq v0, v3, :cond_2

    .line 334
    .end local v1           #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    .end local v2           #guid:Ljava/lang/String;
    .end local v5           #label:Ljava/lang/String;
    .end local v13           #date:Ljava/lang/String;
    .end local v15           #size:Ljava/lang/String;
    .end local v20           #resPath:Ljava/lang/String;
    .end local v24           #author:Ljava/lang/String;
    .end local v25           #br:Ljava/io/BufferedReader;
    .end local v26           #corp:Ljava/lang/String;
    .end local v27           #desc:Ljava/lang/String;
    .end local v29           #id:J
    .end local v31           #type:I
    .end local v32           #ver:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 326
    :catch_0
    move-exception v28

    .line 327
    .local v28, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doImport: NumberFormatException details="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 334
    .end local v28           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    :catch_1
    move-exception v28

    .line 330
    .local v28, e:Ljava/io/IOException;
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doImport: IOException details="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private doUpdateStatus(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V
    .locals 11
    .parameter "termStatus"

    .prologue
    .line 65
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, res:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, details:Ljava/io/File;
    const/4 v1, 0x0

    .line 68
    .local v1, icon:Ljava/io/File;
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getIconURL()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, iconURL:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 70
    new-instance v1, Ljava/io/File;

    .end local v1           #icon:Ljava/io/File;
    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v1       #icon:Ljava/io/File;
    :cond_0
    const/4 v6, 0x0

    .line 73
    .local v6, thumb:Ljava/io/File;
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewImagePortrait()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, previewImagePortrait:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    new-instance v6, Ljava/io/File;

    .end local v6           #thumb:Ljava/io/File;
    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v6       #thumb:Ljava/io/File;
    :cond_1
    const/4 v7, 0x0

    .line 78
    .local v7, thumbLs:Ljava/io/File;
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewImageLandscape()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, previewImageLandscape:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    new-instance v7, Ljava/io/File;

    .end local v7           #thumbLs:Ljava/io/File;
    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v7       #thumbLs:Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 87
    :cond_5
    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iput-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->status:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 88
    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v8

    if-nez v8, :cond_6

    .line 89
    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {v8, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->insert(Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 107
    :cond_6
    :goto_0
    return-void

    .line 91
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 92
    sget-object v8, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    iput-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->status:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 93
    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v8

    if-nez v8, :cond_6

    .line 94
    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {v8, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->insert(Lcom/htc/home/personalize/localresource/LocalResource;)V

    goto :goto_0

    .line 99
    :cond_8
    sget-object v8, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doUpdateStatus: unknown status. clean up. ProductID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", details = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUp()V

    .line 102
    iput-object p1, p0, Lcom/htc/home/personalize/localresource/LocalResource;->status:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 103
    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 104
    iget-object v8, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {v8, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->remove(Lcom/htc/home/personalize/localresource/LocalResource;)V

    goto :goto_0
.end method

.method public static download(Ljava/lang/String;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;)Lcom/htc/home/personalize/localresource/LocalResource;
    .locals 29
    .parameter "absResPath"
    .parameter "context"
    .parameter "resource"
    .parameter "parent"

    .prologue
    .line 604
    sget-object v28, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 605
    .local v28, termStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v25

    .line 607
    .local v25, orgStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    const-class v6, Lcom/htc/home/personalize/localresource/LocalResource;

    monitor-enter v6

    .line 609
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/htc/home/personalize/localresource/LocalResource;->check(Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;Landroid/content/Context;)Ljava/io/File;

    move-result-object v24

    .line 610
    .local v24, details:Ljava/io/File;
    if-nez v24, :cond_1

    .line 613
    const/16 v27, 0x0

    monitor-exit v6

    .line 698
    :cond_0
    :goto_0
    return-object v27

    .line 617
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/localresource/LocalResource;->doExport(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource;)Z

    move-result v26

    .line 618
    .local v26, result:Z
    if-eqz v26, :cond_9

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/home/personalize/localresource/LocalResource;->doImportATGServer(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v27

    .line 619
    .local v27, ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_1
    if-nez v27, :cond_2

    .line 620
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUpByDetails(Ljava/io/File;Landroid/content/Context;)V

    .line 622
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    if-eqz v27, :cond_7

    .line 626
    monitor-enter v27

    .line 627
    :try_start_1
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v6

    if-ne v5, v6, :cond_a

    const/16 v26, 0x1

    .line 629
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    const-string v12, "text/xml"

    .line 632
    .local v12, contentMimeType:Ljava/lang/String;
    :goto_3
    if-eqz v26, :cond_c

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getTargetUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v12}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 643
    :goto_4
    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getIconURL()Ljava/lang/String;

    move-result-object v13

    .line 644
    .local v13, iconURL:Ljava/lang/String;
    if-eqz v26, :cond_3

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 645
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v18

    const/16 v19, 0x0

    const-string v20, "image/png"

    move-object/from16 v17, p1

    invoke-static/range {v13 .. v20}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;)Z

    move-result v26

    .line 656
    :cond_3
    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewImagePortrait()Ljava/lang/String;

    move-result-object v14

    .line 657
    .local v14, previewImagePortrait:Ljava/lang/String;
    if-eqz v26, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 658
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v19

    const/16 v20, 0x0

    const-string v21, "image/png"

    move-object/from16 v18, p1

    invoke-static/range {v14 .. v21}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;)Z

    move-result v26

    .line 669
    :cond_4
    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewImageLandscape()Ljava/lang/String;

    move-result-object v15

    .line 670
    .local v15, previewImageLandscape:Ljava/lang/String;
    if-eqz v26, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 671
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v20

    const/16 v21, 0x0

    const-string v22, "image/png"

    move-object/from16 v19, p1

    invoke-static/range {v15 .. v22}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;)Z

    move-result v26

    .line 682
    :cond_5
    if-nez v26, :cond_6

    .line 683
    invoke-direct/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUp()V

    .line 684
    invoke-direct/range {v27 .. v28}, Lcom/htc/home/personalize/localresource/LocalResource;->doUpdateStatus(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 686
    :cond_6
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 689
    .end local v12           #contentMimeType:Ljava/lang/String;
    .end local v13           #iconURL:Ljava/lang/String;
    .end local v14           #previewImagePortrait:Ljava/lang/String;
    .end local v15           #previewImageLandscape:Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_8

    .line 690
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getViewType()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xa

    if-eqz v26, :cond_d

    const/16 v20, 0x0

    :goto_5
    if-eqz v26, :cond_e

    invoke-virtual/range {v27 .. v27}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v22

    :goto_6
    if-eqz v26, :cond_f

    move-object/from16 v23, v27

    :goto_7
    move-object/from16 v16, p3

    move-object/from16 v21, v25

    invoke-virtual/range {v16 .. v23}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 698
    :cond_8
    if-nez v26, :cond_0

    const/16 v27, 0x0

    goto/16 :goto_0

    .line 618
    .end local v27           #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 622
    .end local v24           #details:Ljava/io/File;
    .end local v26           #result:Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 627
    .restart local v24       #details:Ljava/io/File;
    .restart local v26       #result:Z
    .restart local v27       #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 629
    :cond_b
    :try_start_3
    const-string v12, "image/png"

    goto/16 :goto_3

    .line 632
    .restart local v12       #contentMimeType:Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 686
    .end local v12           #contentMimeType:Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 690
    :cond_d
    const/16 v20, -0x1

    goto :goto_5

    :cond_e
    move-object/from16 v22, v28

    goto :goto_6

    :cond_f
    const/16 v23, 0x0

    goto :goto_7
.end method

.method static getGuidByPath(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 9
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 821
    const/4 v1, 0x0

    .line 822
    .local v1, details:Ljava/lang/String;
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v7}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 844
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 845
    .local v4, viewType:I
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 846
    const/4 v5, 0x0

    aput v4, p1, v5

    .line 849
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 866
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #viewType:I
    :goto_1
    return-object v3

    .line 826
    :cond_1
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v7}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 830
    :cond_2
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v7}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 834
    :cond_3
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 835
    move-object v1, p0

    goto/16 :goto_0

    .line 837
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 852
    :catch_0
    move-exception v2

    .line 853
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGuidByPath: NumberFormatException path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 862
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz p1, :cond_5

    array-length v5, p1

    if-lez v5, :cond_5

    .line 863
    const/4 v5, -0x1

    aput v5, p1, v8

    .line 865
    :cond_5
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGuidByPath: failed path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 855
    :catch_1
    move-exception v2

    .line 856
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGuidByPath: FileNotFoundException path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 858
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 859
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGuidByPath: IOException path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "aspect"
    .parameter "resPath"

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized initLoad(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;I)Lcom/htc/home/personalize/localresource/LocalResource;
    .locals 10
    .parameter "details"
    .parameter "context"
    .parameter "initStatus"
    .parameter "parent"
    .parameter "termStatus"
    .parameter "wallpaperDataType"

    .prologue
    const/4 v8, 0x0

    .line 744
    const-class v9, Lcom/htc/home/personalize/localresource/LocalResource;

    monitor-enter v9

    const/4 v7, 0x0

    .line 745
    .local v7, ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :try_start_0
    invoke-static {p5}, Lcom/htc/home/personalize/localresource/LocalResource;->isATGserverWallpaperDataType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 746
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/home/personalize/localresource/LocalResource;->doImportATGServer(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v7

    .line 750
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v0

    if-ne v0, p4, :cond_6

    .line 752
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUpByDetails(Ljava/io/File;Landroid/content/Context;)V

    .line 753
    if-eqz p3, :cond_2

    .line 755
    invoke-virtual {p3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v7, :cond_5

    move-object v6, v8

    :goto_1
    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 764
    :cond_2
    sget-object v0, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLoad: failed initStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " termStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v8

    .line 780
    .end local v7           #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_3
    :goto_2
    monitor-exit v9

    return-object v7

    .line 747
    .restart local v7       #ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_4
    :try_start_1
    invoke-static {p5}, Lcom/htc/home/personalize/localresource/LocalResource;->isV1serverWallpaperDataType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/home/personalize/localresource/LocalResource;->doImportV1Server(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v7

    goto :goto_0

    .line 755
    :cond_5
    invoke-virtual {v7}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v6

    goto :goto_1

    .line 770
    :cond_6
    if-eqz p3, :cond_3

    .line 771
    invoke-virtual {v7}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v1

    invoke-virtual {v7}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v6

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method static isATGserverWallpaperDataType(I)Z
    .locals 1
    .parameter "wallpaperDataType"

    .prologue
    .line 785
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isV1serverWallpaperDataType(I)Z
    .locals 1
    .parameter "wallpaperDataType"

    .prologue
    .line 789
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSize(Ljava/lang/String;)J
    .locals 10
    .parameter "size"

    .prologue
    .line 551
    const-string v0, "B"

    .line 552
    .local v0, B:Ljava/lang/String;
    const-string v1, "KB"

    .line 553
    .local v1, KB:Ljava/lang/String;
    const-string v2, "MB"

    .line 555
    .local v2, MB:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 556
    const-string v6, "B"

    .line 557
    .local v6, unitS:Ljava/lang/String;
    const/4 v5, 0x1

    .line 558
    .local v5, unit:I
    const-string v7, "KB"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 559
    const-string v6, "KB"

    .line 560
    const/16 v5, 0x400

    .line 566
    :cond_0
    :goto_0
    const/high16 v4, 0x4a00

    .line 568
    .local v4, tmp:F
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 569
    int-to-float v7, v5

    mul-float/2addr v4, v7

    .line 577
    :goto_1
    const/high16 v7, 0x4a00

    add-float/2addr v4, v7

    .line 578
    float-to-long v7, v4

    return-wide v7

    .line 561
    .end local v4           #tmp:F
    :cond_1
    const-string v7, "MB"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 562
    const-string v6, "MB"

    .line 563
    const/high16 v5, 0x10

    goto :goto_0

    .line 570
    .restart local v4       #tmp:F
    :catch_0
    move-exception v3

    .line 571
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSize: NumberFormatException size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 573
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 574
    .local v3, e:Ljava/lang/StringIndexOutOfBoundsException;
    sget-object v7, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSize: StringIndexOutOfBoundsException size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;
    .locals 1
    .parameter "aspect"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPathByResPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->resPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->status:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    return-object v0
.end method

.method public declared-synchronized removeOrCancel()V
    .locals 8

    .prologue
    .line 702
    monitor-enter p0

    const/4 v3, 0x1

    .line 703
    .local v3, action:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v5

    .line 704
    .local v5, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v5, :cond_1

    .line 705
    const/16 v3, 0xd

    .line 725
    :goto_0
    invoke-direct {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUp()V

    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->doUpdateStatus(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 727
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 706
    :cond_1
    :try_start_1
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v5, :cond_2

    .line 707
    const/16 v3, 0xc

    goto :goto_0

    .line 709
    :cond_2
    sget-object v0, Lcom/htc/home/personalize/localresource/LocalResource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOrCancel: operation not supported in this status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0xf

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 702
    .end local v5           #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 728
    .restart local v5       #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method declared-synchronized updateDownloadStatus(Z)V
    .locals 8
    .parameter "success"

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v5

    .line 795
    .local v5, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    if-nez p1, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->doCleanUp()V

    .line 798
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->doUpdateStatus(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 800
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v0

    if-eq v0, v5, :cond_1

    .line 802
    if-eqz p1, :cond_2

    .line 803
    const/4 v4, 0x0

    .line 808
    .local v4, result:I
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResource;->parent:Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    .end local v4           #result:I
    :cond_1
    monitor-exit p0

    return-void

    .line 805
    :cond_2
    const/4 v4, -0x1

    .restart local v4       #result:I
    goto :goto_0

    .line 794
    .end local v4           #result:I
    .end local v5           #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
