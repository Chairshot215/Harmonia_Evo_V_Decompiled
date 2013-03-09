.class public Lcom/htc/home/personalize/localresource/LocalResourceList;
.super Ljava/lang/Object;
.source "LocalResourceList.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final ACTION_CANCEL:I = 0xc

.field public static final ACTION_DOWNLOAD:I = 0xa

.field public static final ACTION_INITLOAD:I = 0xb

.field public static final ACTION_PREPARE:I = 0xf

.field public static final ACTION_REMOVE:I = 0xd

.field public static final ACTION_UNKNOWN:I = 0x1

.field public static final ACTION_UPDATE:I = 0xe

.field private static final DOWNLOADS_WALLPAPER:Ljava/lang/String; = "downloads/wallpaper"

.field public static final GUID:Ljava/lang/String; = "GUID"

.field public static final NEW_STATUS:Ljava/lang/String; = "NEW_STATUS"

.field public static final OLD_STATUS:Ljava/lang/String; = "OLD_STATUS"

.field public static final RESULT:Ljava/lang/String; = "RESULT"

.field public static final RESULT_CANCEL:I = 0x1

.field public static final RESULT_ERROR_FILE_EXISTS:I = -0xd

.field public static final RESULT_ERROR_INVALID_PATH:I = -0x12

.field public static final RESULT_ERROR_LIMIT_REACHED:I = -0x14

.field public static final RESULT_ERROR_NO_ENOUGH_STORAGE:I = -0xb

.field public static final RESULT_ERROR_OPERATION_IN_INVALID_STATUS:I = -0xf

.field public static final RESULT_ERROR_PATH_NOT_AVAILABLE:I = -0xe

.field public static final RESULT_ERROR_SD_NOT_READY:I = -0xa

.field public static final RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RES_PATH:Ljava/lang/String; = "RES_PATH"

.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field private static mSceneList:Lcom/htc/home/personalize/localresource/LocalResourceList;

.field private static mWallpaperList:Lcom/htc/home/personalize/localresource/LocalResourceList;


# instance fields
.field private final appCtx:Landroid/content/Context;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/localresource/LocalResource;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReloading:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/home/personalize/localresource/LocalResource;",
            ">;"
        }
    .end annotation
.end field

.field private volatile toNotify:Z

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->TAG:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/htc/home/personalize/localresource/LocalResourceList;->mWallpaperList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    .line 27
    sput-object v1, Lcom/htc/home/personalize/localresource/LocalResourceList;->mSceneList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->map:Ljava/util/Map;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->toNotify:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->mIsReloading:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->type:I

    .line 39
    return-void
.end method

.method private static broadcast(Landroid/content/Context;ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "guid"
    .parameter "action"
    .parameter "result"
    .parameter "oldStatus"
    .parameter "newStatus"
    .parameter "resPath"

    .prologue
    const/4 v2, 0x0

    .line 287
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_RES_STATUSCHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "GUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "ACTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v3, "OLD_STATUS"

    if-nez p5, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "NEW_STATUS"

    if-nez p6, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "RES_PATH"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void

    .line 293
    :cond_0
    invoke-virtual {p5}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p6}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getInstance(Landroid/content/Context;IZ)Lcom/htc/home/personalize/localresource/LocalResourceList;
    .locals 6
    .parameter "context"
    .parameter "nType"
    .parameter "bNeedInitialized"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, bNeedToReload:Z
    const/4 v2, 0x0

    .line 128
    .local v2, localResourceList:Lcom/htc/home/personalize/localresource/LocalResourceList;
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 129
    const-class v4, Lcom/htc/home/personalize/localresource/LocalResourceList;

    monitor-enter v4

    .line 130
    :try_start_0
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->mWallpaperList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-direct {v3, p0, p1}, Lcom/htc/home/personalize/localresource/LocalResourceList;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->mWallpaperList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v2, Lcom/htc/home/personalize/localresource/LocalResourceList;->mWallpaperList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    .line 147
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 150
    if-eqz v2, :cond_5

    .line 151
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->TAG:Ljava/lang/String;

    const-string v4, "getInstance: reload list directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->reload2()V

    .line 165
    :cond_2
    :goto_1
    return-object v2

    .line 134
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 137
    :cond_3
    const/4 v3, 0x1

    if-ne v3, p1, :cond_1

    .line 138
    const-class v4, Lcom/htc/home/personalize/localresource/LocalResourceList;

    monitor-enter v4

    .line 139
    :try_start_2
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->mSceneList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    if-nez v3, :cond_4

    .line 140
    new-instance v3, Lcom/htc/home/personalize/localresource/LocalResourceList;

    invoke-direct {v3, p0, p1}, Lcom/htc/home/personalize/localresource/LocalResourceList;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->mSceneList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    .line 141
    const/4 v0, 0x1

    .line 143
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    sget-object v2, Lcom/htc/home/personalize/localresource/LocalResourceList;->mSceneList:Lcom/htc/home/personalize/localresource/LocalResourceList;

    goto :goto_0

    .line 143
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 155
    :cond_5
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalResourceList instance is null, nType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :cond_6
    if-eqz v0, :cond_2

    .line 160
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->TAG:Ljava/lang/String;

    const-string v4, "getInstance: reload list non-directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_REQUEST_LOAD_WALLPAPER:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;
    .locals 1
    .parameter "nType"
    .parameter "context"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance(Landroid/content/Context;IZ)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance2(ILandroid/content/Context;Z)Lcom/htc/home/personalize/localresource/LocalResourceList;
    .locals 1
    .parameter "nType"
    .parameter "context"
    .parameter "bNeedInitialized"

    .prologue
    .line 171
    invoke-static {p1, p0, p2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance(Landroid/content/Context;IZ)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v0

    return-object v0
.end method

.method public static getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "resource"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, ret:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downloads/wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    if-eqz p2, :cond_0

    .line 217
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->suggestResourcePath(Ljava/io/File;Lcom/htc/home/personalize/abstractresource/Resource;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static suggestResourcePath(Ljava/io/File;Lcom/htc/home/personalize/abstractresource/Resource;)Ljava/io/File;
    .locals 3
    .parameter "directory"
    .parameter "resource"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, orgBase:Ljava/lang/String;
    move-object v0, v1

    .line 45
    .local v0, base:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v2, res:Ljava/io/File;
    return-object v2
.end method


# virtual methods
.method fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V
    .locals 8
    .parameter "type"
    .parameter "guid"
    .parameter "action"
    .parameter "result"
    .parameter "oldStatus"
    .parameter "newStatus"
    .parameter "resource"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->toNotify:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/home/personalize/localresource/LocalResource;->isV1serverWallpaperDataType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getType()I

    move-result v1

    if-nez p7, :cond_1

    const/4 v7, 0x0

    :goto_0
    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->broadcast(Landroid/content/Context;ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p7}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public declared-synchronized get(I)Lcom/htc/home/personalize/localresource/LocalResource;
    .locals 6
    .parameter "i"

    .prologue
    .line 180
    monitor-enter p0

    const/4 v2, 0x0

    .line 182
    .local v2, ret:Lcom/htc/home/personalize/localresource/LocalResource;
    :try_start_0
    iget-object v3, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/home/personalize/localresource/LocalResource;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    monitor-exit p0

    return-object v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get: RuntimeException i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;
    .locals 1
    .parameter "guid"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/localresource/LocalResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->type:I

    return v0
.end method

.method public declared-synchronized indexOfGuid(Ljava/lang/String;)I
    .locals 3
    .parameter "guid"

    .prologue
    .line 199
    monitor-enter p0

    const/4 v1, -0x1

    .line 200
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/localresource/LocalResource;

    .line 201
    .local v0, res:Lcom/htc/home/personalize/localresource/LocalResource;
    if-eqz v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 204
    :cond_0
    monitor-exit p0

    return v1

    .line 199
    .end local v0           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized insert(Lcom/htc/home/personalize/localresource/LocalResource;)V
    .locals 2
    .parameter "resource"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reload2()V
    .locals 22

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->mIsReloading:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 122
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->mIsReloading:Z

    .line 59
    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->map:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    .local v20, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/home/personalize/localresource/LocalResource;>;"
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->type:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v12, download:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 63
    .local v14, files:[Ljava/io/File;
    if-eqz v14, :cond_8

    array-length v3, v14

    if-ltz v3, :cond_8

    .line 65
    new-instance v3, Lcom/htc/home/personalize/localresource/LocalResourceList$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/home/personalize/localresource/LocalResourceList$1;-><init>(Lcom/htc/home/personalize/localresource/LocalResourceList;)V

    invoke-static {v14, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 71
    move-object v11, v14

    .local v11, arr$:[Ljava/io/File;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-object v2, v11, v17

    .line 72
    .local v2, tmp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, file:Ljava/lang/String;
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DETAILS:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v3}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 77
    :cond_2
    sget-object v3, Lcom/htc/home/personalize/localresource/LocalResourceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reload: import tmp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 79
    .local v21, tmpType:[I
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->getGuidByPath(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, guid:Ljava/lang/String;
    if-nez v15, :cond_3

    const/16 v19, 0x0

    .line 81
    .local v19, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_3
    if-eqz v19, :cond_4

    .line 85
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 80
    .end local v19           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_3
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/localresource/LocalResource;

    move-object/from16 v19, v3

    goto :goto_3

    .line 86
    .restart local v19       #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_4
    const/4 v3, 0x0

    aget v3, v21, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->type:I

    if-eq v3, v4, :cond_5

    const/4 v3, 0x0

    aget v3, v21, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 88
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    aget v7, v21, v5

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/home/personalize/localresource/LocalResource;->initLoad(Ljava/io/File;Landroid/content/Context;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResourceList;Lcom/htc/home/personalize/abstractresource/Resource$Const;I)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v19

    .line 93
    if-eqz v19, :cond_1

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/localresource/LocalResource;->getStatus()Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget v3, v21, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->type:I

    if-ne v3, v4, :cond_1

    .line 94
    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->hasTask(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->hasTask(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->hasTask(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->appCtx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/home/personalize/localresource/DownloadDelegant;->hasTask(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/16 v16, 0x1

    .line 98
    .local v16, hasTasks:Z
    :goto_4
    if-nez v16, :cond_1

    .line 99
    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/localresource/LocalResource;->removeOrCancel()V

    goto/16 :goto_2

    .line 94
    .end local v16           #hasTasks:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_4

    .line 110
    .end local v2           #tmp:Ljava/io/File;
    .end local v11           #arr$:[Ljava/io/File;
    .end local v13           #file:Ljava/lang/String;
    .end local v15           #guid:Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v19           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    .end local v21           #tmpType:[I
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/home/personalize/localresource/LocalResource;

    .line 111
    .restart local v19       #res:Lcom/htc/home/personalize/localresource/LocalResource;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/localresource/LocalResource;->removeOrCancel()V

    goto :goto_5

    .line 120
    .end local v19           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->mIsReloading:Z

    .line 121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/localresource/LocalResourceList;->type:I

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/htc/home/personalize/localresource/LocalResourceList;->fireDataChanged(ILjava/lang/String;IILcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/abstractresource/Resource$Const;Lcom/htc/home/personalize/localresource/LocalResource;)V

    goto/16 :goto_0
.end method

.method declared-synchronized remove(Lcom/htc/home/personalize/localresource/LocalResource;)V
    .locals 2
    .parameter "resource"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/localresource/LocalResourceList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
