.class public Lcom/htc/store/service/ClearCachedImagesService;
.super Landroid/app/IntentService;
.source "ClearCachedImagesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;,
        Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/store/service/ClearCachedImagesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/store/service/ClearCachedImagesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private deleteUnusedFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 13
    .parameter "dir"
    .parameter "filter"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 158
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 159
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 160
    .local v2, file:Ljava/io/File;
    sget-object v6, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Delete: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 168
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_1
    move-exception v1

    .line 169
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v1, v7, v11

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private deleteUnusedFiles(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, fileNamesToRetained:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;

    invoke-direct {v0, p0, p2}, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;-><init>(Lcom/htc/store/service/ClearCachedImagesService;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/store/service/ClearCachedImagesService;->deleteUnusedFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 149
    return-void
.end method

.method private deleteUnusedFilesPartialMatch(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, fileNamesToRetained:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;

    invoke-direct {v0, p0, p2}, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;-><init>(Lcom/htc/store/service/ClearCachedImagesService;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/store/service/ClearCachedImagesService;->deleteUnusedFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 34
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 26
    .parameter "intent"

    .prologue
    .line 38
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "onHandleIntent"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 40
    new-instance v22, Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 44
    :cond_0
    :try_start_0
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Clear expired promo images"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/store/util/StorageUtils;->getPromoDirectoryPath(Z)Ljava/lang/String;

    move-result-object v20

    .line 46
    .local v20, promoDirectoryPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/store/provider/AccessHelper;->getAllPromoItems()Ljava/util/ArrayList;

    move-result-object v17

    .line 50
    .local v17, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    if-eqz v17, :cond_2

    .line 51
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/PromoItem;

    .line 52
    .local v12, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {v12}, Lcom/htc/store/module/vo/PromoItem;->getCategoryId()J

    move-result-wide v22

    invoke-virtual {v12}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, fileName:Ljava/lang/String;
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "promo fileName: "

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v6, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v3           #dir:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v17           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .end local v20           #promoDirectoryPath:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 142
    .local v4, e:Ljava/lang/Exception;
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v4, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .end local v4           #e:Ljava/lang/Exception;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/htc/store/util/NotificationUtils;->scheduleNextClearCachedImages(Landroid/content/Context;)V

    .line 145
    return-void

    .line 56
    .restart local v3       #dir:Ljava/io/File;
    .restart local v7       #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v17       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    .restart local v20       #promoDirectoryPath:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/htc/store/service/ClearCachedImagesService;->deleteUnusedFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 57
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 58
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 62
    .end local v7           #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v17           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    :cond_2
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Clear expired featured images"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/store/util/StorageUtils;->getFeaturedDirectoryPath(Z)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, featuredDirectoryPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    .end local v3           #dir:Ljava/io/File;
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v3       #dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 66
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v7       #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/store/provider/AccessHelper;->getAllFeaturedItems()Ljava/util/ArrayList;

    move-result-object v16

    .line 68
    .local v16, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    if-eqz v16, :cond_4

    .line 69
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/FeaturedItem;

    .line 70
    .local v12, item:Lcom/htc/store/module/vo/FeaturedItem;
    invoke-virtual {v12}, Lcom/htc/store/module/vo/FeaturedItem;->getCategoryId()J

    move-result-wide v22

    invoke-virtual {v12}, Lcom/htc/store/module/vo/FeaturedItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .restart local v6       #fileName:Ljava/lang/String;
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "featured fileName: "

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v6, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    .end local v6           #fileName:Ljava/lang/String;
    .end local v12           #item:Lcom/htc/store/module/vo/FeaturedItem;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/htc/store/service/ClearCachedImagesService;->deleteUnusedFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 75
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 76
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 97
    .end local v7           #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v16           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/store/provider/AccessHelper;->getAllItemOnlineIds()Ljava/util/ArrayList;

    move-result-object v14

    .line 98
    .local v14, itemOnlienIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_8

    .line 100
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Clear expired item icons"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/store/util/StorageUtils;->getItemIconDirectoryPath(Z)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, itemIconDirectoryPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    .end local v3           #dir:Ljava/io/File;
    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v3       #dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .restart local v7       #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 106
    .local v18, onlineId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/store/util/StorageUtils;->getCachedItemIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    .end local v18           #onlineId:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/htc/store/service/ClearCachedImagesService;->deleteUnusedFilesPartialMatch(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 109
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 112
    .end local v7           #fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_6
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Clear expired item previews"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/htc/store/util/StorageUtils;->getItemSnapshotDirectoryPath(Z)Ljava/lang/String;

    move-result-object v15

    .line 114
    .local v15, itemSnapshotDirectoryPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    .end local v3           #dir:Ljava/io/File;
    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v3       #dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/htc/store/service/ClearCachedImagesService;->deleteUnusedFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 118
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 121
    .end local v13           #itemIconDirectoryPath:Ljava/lang/String;
    .end local v15           #itemSnapshotDirectoryPath:Ljava/lang/String;
    :cond_8
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Clear expired shared images"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/store/provider/AccessHelper;->getExpiredImageCacheIds()Ljava/util/ArrayList;

    move-result-object v21

    .line 123
    .local v21, sharedImageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    .line 124
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 125
    .local v9, id:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, imageFilePath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v10, imageFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v22

    if-eqz v22, :cond_9

    .line 129
    :try_start_2
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Delete: "

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/service/ClearCachedImagesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/htc/store/provider/AccessHelper;->removeImageCacheMappingItem(J)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 132
    :catch_1
    move-exception v4

    .line 133
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_3
    sget-object v22, Lcom/htc/store/service/ClearCachedImagesService;->TAG:Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v4, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 139
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #id:Ljava/lang/Long;
    .end local v10           #imageFile:Ljava/io/File;
    .end local v11           #imageFilePath:Ljava/lang/String;
    :cond_a
    new-instance v19, Lcom/htc/store/module/PreferenceManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 140
    .local v19, prefManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/PreferenceManager;->setLastTimeMillisClearCachedImages(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method
