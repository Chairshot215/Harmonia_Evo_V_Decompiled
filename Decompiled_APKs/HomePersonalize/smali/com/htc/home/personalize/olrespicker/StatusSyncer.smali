.class public Lcom/htc/home/personalize/olrespicker/StatusSyncer;
.super Landroid/content/BroadcastReceiver;
.source "StatusSyncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/olrespicker/StatusSyncer$2;
    }
.end annotation


# static fields
.field public static final ACTION_ASPECT_CHANGED:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_ASPECT_CHANGED"

.field public static final ACTION_REQUEST_LOAD_WALLPAPER:Ljava/lang/String; = null

.field public static final ACTION_RES_STATUSCHANGED:Ljava/lang/String; = null

.field public static final ACTION_SCENE_DOWNLOADED:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_DOWNLOAD_COMPLETE"

.field public static final ACTION_SCENE_INSTALLED:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

.field public static final EXTRA_ASPECT_ISTHUMB:Ljava/lang/String; = "EXTRA_ASPECT_ISTHUMB"

.field public static final EXTRA_SCENE_GUID:Ljava/lang/String; = "com.htc.launcher.scene.ONLINE_SCENE_ID"

.field public static final EXTRA_SCENE_ICON:Ljava/lang/String; = "com.htc.launcher.scene.THUMBNAIL_PATH"

.field public static final EXTRA_SCENE_ID:Ljava/lang/String; = "com.htc.launcher.scene.EXTRA_SCENE_ID"

.field private static final EXTRA_SCENE_LABEL:Ljava/lang/String; = "com.htc.launcher.scene.LOCALIZED_SCENE_NAME"

.field public static final EXTRA_SCENE_RES:Ljava/lang/String; = "com.htc.launcher.scene.SCENE_PATH"

.field public static final EXTRA_SCENE_THUMB:Ljava/lang/String; = "com.htc.launcher.scene.PREVIEW_PATH"

.field private static final EXTRA_SCENE_THUMB_LANDSCAPE:Ljava/lang/String; = "com.htc.launcher.scene.PREVIEW_LAND_PATH"

.field public static final PICKER_PACKAGE:Ljava/lang/String; = "com.htc.home.personalize"

.field public static final PREF:Ljava/lang/String; = "PREF"

.field public static final SCENE_ID_INVALID:I = -0x1

.field public static final SCENE_PICKER_CLASS:Ljava/lang/String; = "com.htc.home.personalize.scene.ScenePicker"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PICKER_CLASS:Ljava/lang/String; = "com.htc.home.personalize.WallpaperPicker"

.field private static mIsSyncingSceneDB:Z

.field private static mListPreparingDownloadItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mListPreparingDownloadWallpaper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/home/personalize/onlineresource/OnlineResource;",
            ">;"
        }
    .end annotation
.end field

.field private static mListWaitingDownloadItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/home/personalize/localresource/LocalResource;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.requestLoadWallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_REQUEST_LOAD_WALLPAPER:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/home/personalize/localresource/LocalResource;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_RES_STATUSCHANGED:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mIsSyncingSceneDB:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadWallpaper:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 466
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleLocalResourceStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleDownloadByIntent(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->reloadWallpapers(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleSceneInstalled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/olrespicker/StatusSyncer;ILjava/lang/String;ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->downloadOrCancelOrRemove(ILjava/lang/String;ILandroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadWallpaper:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p8}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mIsSyncingSceneDB:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-boolean p0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mIsSyncingSceneDB:Z

    return p0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static cancelGetDownloadUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "guid"

    .prologue
    .line 567
    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    monitor-enter v1

    .line 568
    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 569
    monitor-exit v1

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static cleanPreview(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, IdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v6, "clean preview"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 686
    .local v2, id:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, portPreview:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/htc/home/personalize/util/FileHelper;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, landPreview:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/home/personalize/util/FileHelper;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, iconPreview:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/home/personalize/util/FileHelper;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .end local v1           #iconPreview:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #landPreview:Ljava/lang/String;
    .end local v4           #portPreview:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private copyScenePreviewImage(Landroid/content/Context;ILcom/htc/home/personalize/localresource/LocalResource;)V
    .locals 8
    .parameter "mContext"
    .parameter "sceneId"
    .parameter "res"

    .prologue
    .line 262
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p3, v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, strSrc:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.htc.home.personalize/files/scenes_picker_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, strDest:Ljava/lang/String;
    sget-object v5, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p3, v5}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, strSrc_land:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.htc.home.personalize/files/scenes_picker_land_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, strDest_land:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 269
    .local v0, filesDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 273
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 274
    sget-object v5, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_RENAME_FILE from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, v3, v1}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v5, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_RENAME_FILE from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, v4, v2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_1
    return-void
.end method

.method public static deleteDownloadSceneId(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "sceneID"

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 639
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sceneID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DOWNLOADED_SCENE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method private downloadOrCancelOrRemove(ILjava/lang/String;ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "type"
    .parameter "guid"
    .parameter "action"
    .parameter "ctx"
    .parameter "intentData"

    .prologue
    .line 342
    if-nez p3, :cond_3

    .line 344
    move-object/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getOnlineResourceByGuid(Ljava/lang/String;ILandroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v25

    .line 345
    .local v25, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-eqz v25, :cond_1

    .line 346
    move-object/from16 v0, p4

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v5

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-static {v4, v0, v5, v1}, Lcom/htc/home/personalize/localresource/LocalResource;->check(Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;Landroid/content/Context;)Ljava/io/File;

    move-result-object v22

    .line 351
    .local v22, details:Ljava/io/File;
    if-eqz v22, :cond_0

    .line 352
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v23, intent:Landroid/content/Intent;
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v4, "storedata_type"

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v4, "store_productid"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->startGetDownloadUrl(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 394
    .end local v22           #details:Ljava/io/File;
    .end local v23           #intent:Landroid/content/Intent;
    .end local v25           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_0
    :goto_0
    return-void

    .line 362
    .restart local v25       #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_1
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadOrCancelOrRemove: fail to get resource info. type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " guid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->syncDB(ILjava/lang/String;Landroid/content/Context;)V

    .line 366
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_2
    const-string v4, "online_item_label"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, displayName:Ljava/lang/String;
    const-string v4, "online_item_icon"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, iconUrl:Ljava/lang/String;
    const-string v4, "online_item_preview"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, previewPortraitUrl:Ljava/lang/String;
    const-string v4, "online_item_preview_landscape"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, previewLandscapeUrl:Ljava/lang/String;
    const-string v4, "online_item_size"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, contentSize:Ljava/lang/String;
    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v7, p2

    .line 374
    invoke-direct/range {v4 .. v12}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleDownloadByDetailData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #contentSize:Ljava/lang/String;
    .end local v10           #iconUrl:Ljava/lang/String;
    .end local v11           #previewPortraitUrl:Ljava/lang/String;
    .end local v12           #previewLandscapeUrl:Ljava/lang/String;
    .end local v25           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v4, v0, :cond_0

    .line 379
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 380
    invoke-static/range {p2 .. p2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->cancelGetDownloadUrl(Ljava/lang/String;)V

    .line 383
    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v24

    .line 384
    .local v24, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v25

    .line 385
    .local v25, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_1
    if-eqz v25, :cond_5

    .line 386
    invoke-virtual/range {v25 .. v25}, Lcom/htc/home/personalize/localresource/LocalResource;->removeOrCancel()V

    goto/16 :goto_0

    .line 384
    .end local v25           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_4
    const/16 v25, 0x0

    goto :goto_1

    .line 388
    .restart local v25       #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_5
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadOrCancelOrRemove: local resource doesn\'t exist. type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " guid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v16, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const/16 v19, -0x1

    const/16 v20, 0xa

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p2

    move/from16 v17, p1

    invoke-direct/range {v13 .. v21}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V

    goto/16 :goto_0
.end method

.method private handleDownloadByDetailData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .parameter "context"
    .parameter "type"
    .parameter "productID"
    .parameter "displayName"
    .parameter "contentSize"
    .parameter "iconUrl"
    .parameter "previewPortraitUrl"
    .parameter "previewLandscapeUrl"

    .prologue
    .line 575
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDownloadByDetailData productID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-nez p4, :cond_0

    .line 578
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v5, "displayName == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string p4, ""

    .line 581
    :cond_0
    if-nez p5, :cond_1

    .line 582
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v5, "contentSize == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string p5, ""

    .line 585
    :cond_1
    if-nez p6, :cond_2

    .line 586
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v5, "iconUrl == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string p6, ""

    .line 589
    :cond_2
    if-nez p7, :cond_3

    .line 590
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v5, "previewPortraitUrl == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string p7, ""

    .line 593
    :cond_3
    if-nez p8, :cond_4

    .line 594
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v5, "previewLandscapeUrl == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string p8, ""

    .line 598
    :cond_4
    const/4 v4, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;Z)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v27

    .line 599
    .local v27, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v27, :cond_6

    const/16 v26, 0x0

    .line 600
    .local v26, lRes:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_0
    if-nez v26, :cond_5

    .line 601
    new-instance v3, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    const-string v6, ""

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v7, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p8

    move-object/from16 v19, p7

    move/from16 v20, p2

    move-object/from16 v21, p1

    invoke-direct/range {v3 .. v23}, Lcom/htc/home/personalize/onlineresource/OnlineResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V

    .line 607
    .local v3, olRes:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v4, v3, v5, v0}, Lcom/htc/home/personalize/localresource/LocalResource;->check(Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;Landroid/content/Context;)Ljava/io/File;

    move-result-object v24

    .line 612
    .local v24, details:Ljava/io/File;
    if-eqz v24, :cond_5

    .line 613
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 614
    .local v25, intent:Landroid/content/Intent;
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v4, "storedata_type"

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const-string v4, "store_productid"

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->startGetDownloadUrl(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 618
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadWallpaper:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadWallpaper:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .end local v3           #olRes:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .end local v24           #details:Ljava/io/File;
    .end local v25           #intent:Landroid/content/Intent;
    :cond_5
    return-void

    .line 599
    .end local v26           #lRes:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_6
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v26

    goto/16 :goto_0
.end method

.method private handleDownloadByIntent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "ctx"
    .parameter "guid"
    .parameter "type"

    .prologue
    .line 226
    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: get start download intent guid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, target2download:Landroid/content/Intent;
    const-class v1, Lcom/htc/home/personalize/olrespicker/DownloadService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    const-string v1, "GUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method private handleLocalResourceStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 397
    const-string v0, "TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 398
    .local v4, type:I
    const-string v0, "GUID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, guid:Ljava/lang/String;
    const-string v0, "OLD_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 400
    .local v12, sOldStatus:Ljava/lang/String;
    const-string v0, "NEW_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 401
    .local v11, sNewStatus:Ljava/lang/String;
    const-string v0, "ACTION"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 403
    .local v7, action:I
    const-string v0, "RESULT"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 406
    .local v8, result:I
    if-nez v11, :cond_4

    const/4 v3, 0x0

    .line 407
    .local v3, newStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_0
    if-nez v12, :cond_5

    const/4 v5, 0x0

    .line 408
    .local v5, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_1
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLocalResourceStatusChanged: guid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " oldStatus="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " newStatus="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " type="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " action="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " result="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {v4, p1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v9

    .line 412
    .local v9, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v9, :cond_6

    const/4 v10, 0x0

    .line 415
    .local v10, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_2
    const/4 v0, 0x1

    if-ne v0, v4, :cond_7

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-eq v0, v5, :cond_1

    :cond_0
    if-nez v3, :cond_7

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v5, :cond_7

    .line 426
    :cond_1
    :goto_3
    const/4 v0, 0x1

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v5, :cond_2

    .line 429
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLocalResourceStatusChanged: install scene guid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz v10, :cond_8

    .line 431
    invoke-direct {p0, p1, v10}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->installScene(Landroid/content/Context;Lcom/htc/home/personalize/localresource/LocalResource;)V

    .line 438
    :cond_2
    :goto_4
    if-eqz v10, :cond_3

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    if-eq v0, v4, :cond_3

    .line 442
    const/4 v0, -0x1

    const-string v1, "com.htc.home.personalize"

    const-string v6, "com.htc.home.personalize.WallpaperPicker"

    invoke-static {p1, v0, v10, v1, v6}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->notify(Landroid/content/Context;ILcom/htc/home/personalize/localresource/LocalResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_3
    return-void

    .line 406
    .end local v3           #newStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v5           #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v9           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    .end local v10           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_4
    invoke-static {v11}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v3

    goto/16 :goto_0

    .line 407
    .restart local v3       #newStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_5
    invoke-static {v12}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v5

    goto/16 :goto_1

    .line 412
    .restart local v5       #oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .restart local v9       #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    :cond_6
    invoke-virtual {v9, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v10

    goto :goto_2

    .line 421
    .restart local v10       #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_7
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V

    goto :goto_3

    .line 433
    :cond_8
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLocalResourceStatusChanged: null res. guid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private handleSceneInstalled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 236
    const/4 v2, 0x1

    .line 237
    .local v2, type:I
    const-string v1, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, guid:Ljava/lang/String;
    const-string v1, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 239
    .local v10, installedSceneId:I
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v13

    .line 240
    .local v13, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v13, :cond_2

    const/4 v14, 0x0

    .line 243
    .local v14, res:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_0
    if-eqz v14, :cond_0

    .line 244
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v14}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->copyScenePreviewImage(Landroid/content/Context;ILcom/htc/home/personalize/localresource/LocalResource;)V

    .line 247
    :cond_0
    const/4 v4, 0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->downloadOrCancelOrRemove(ILjava/lang/String;ILandroid/content/Context;Landroid/content/Intent;)V

    .line 250
    sget-object v7, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    sget-object v9, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const/16 v11, 0xa

    const/4 v12, 0x0

    move-object v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move v8, v2

    invoke-direct/range {v4 .. v12}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V

    .line 253
    move-object/from16 v0, p1

    invoke-static {v0, v3, v10}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->insertDownloadSceneId(Landroid/content/Context;Ljava/lang/String;I)V

    .line 256
    if-eqz v14, :cond_1

    const/4 v1, -0x1

    if-eq v1, v10, :cond_1

    .line 257
    const-string v1, "com.htc.home.personalize"

    const-string v4, "com.htc.home.personalize.scene.ScenePicker"

    move-object/from16 v0, p1

    invoke-static {v0, v10, v14, v1, v4}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->notify(Landroid/content/Context;ILcom/htc/home/personalize/localresource/LocalResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    return-void

    .line 240
    .end local v14           #res:Lcom/htc/home/personalize/localresource/LocalResource;
    :cond_2
    invoke-virtual {v13, v3}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v14

    goto :goto_0
.end method

.method public static insertDownloadSceneId(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "productID"
    .parameter "sceneID"

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 630
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "productID"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "sceneID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    sget-object v2, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DOWNLOADED_SCENE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 634
    return-void
.end method

.method private installScene(Landroid/content/Context;Lcom/htc/home/personalize/localresource/LocalResource;)V
    .locals 4
    .parameter "ctx"
    .parameter "res"

    .prologue
    .line 528
    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installScene: guid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.scene.ACTION_DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, downloadCompleteIntent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.scene.SCENE_PATH"

    invoke-virtual {p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "com.htc.launcher.scene.PREVIEW_PATH"

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p2, v2}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v1, "com.htc.launcher.scene.THUMBNAIL_PATH"

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p2, v2}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v1, "com.htc.launcher.scene.PREVIEW_LAND_PATH"

    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p2, v2}, Lcom/htc/home/personalize/localresource/LocalResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v1, "com.htc.launcher.scene.ONLINE_SCENE_ID"

    invoke-virtual {p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v1, "com.htc.launcher.scene.LOCALIZED_SCENE_NAME"

    invoke-virtual {p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method public static notify(Landroid/content/Context;ILcom/htc/home/personalize/localresource/LocalResource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "ctx"
    .parameter "installedSceneId"
    .parameter "res"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 307
    const v4, 0x1080082

    .line 308
    .local v4, icon:I
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 310
    .local v10, when:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, contentTitle:Ljava/lang/String;
    const v12, 0x7f090040

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, contentText:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v7, notificationIntent:Landroid/content/Intent;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v12, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    invoke-virtual {v7, v12, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v12, "GUID"

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/4 v12, 0x0

    const/high16 v13, 0x800

    invoke-static {p0, v12, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 328
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v4, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 329
    .local v6, notification:Landroid/app/Notification;
    invoke-virtual {v6, p0, v3, v2, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 330
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 333
    const-string v12, "notification"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 334
    .local v5, nManager:Landroid/app/NotificationManager;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 335
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v13

    invoke-virtual {v5, v12, v13, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getProductID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/htc/home/personalize/localresource/LocalResource;->getViewType()I

    move-result v13

    invoke-virtual {v5, v12, v13, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V
    .locals 17
    .parameter "ctx"
    .parameter "guid"
    .parameter "newStatus"
    .parameter "type"
    .parameter "oldStatus"
    .parameter "sceneId"
    .parameter "action"
    .parameter "result"

    .prologue
    .line 451
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 452
    :cond_0
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v15, "invalid guid, does not propagate to detail."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local p3
    :goto_0
    return-void

    .line 456
    .restart local p3
    :cond_1
    const/4 v13, -0x1

    .line 457
    .local v13, status:I
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer$2;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    if-nez p3, :cond_2

    sget-object p3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .end local p3
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 470
    :goto_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v9, intent:Landroid/content/Intent;
    const-string v14, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v14, "requester"

    const-string v15, "com.htc.store_oad"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const-string v14, "online_item_ids"

    invoke-virtual {v9, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 476
    const-string v14, "online_item_content_type"

    invoke-static/range {p4 .. p4}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toStringType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v14, "download_status"

    invoke-virtual {v9, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v4, bundle:Landroid/os/Bundle;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 483
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 484
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v14, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 486
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getOnlineResourceByGuid(Ljava/lang/String;ILandroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v12

    .line 487
    .local v12, res:Lcom/htc/home/personalize/abstractresource/Resource;
    if-nez v12, :cond_3

    .line 488
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadWallpaper:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 489
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v15, "get OnlineResource from mListPreparingDownloadWallpaper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadWallpaper:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #res:Lcom/htc/home/personalize/abstractresource/Resource;
    check-cast v12, Lcom/htc/home/personalize/abstractresource/Resource;

    .line 497
    .restart local v12       #res:Lcom/htc/home/personalize/abstractresource/Resource;
    :cond_3
    :goto_2
    if-nez v12, :cond_4

    .line 498
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot get OnlineResource or LocalResource, productID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_4
    if-nez v12, :cond_9

    const/4 v8, 0x0

    .line 502
    .local v8, iconFile:Ljava/io/File;
    :goto_3
    const/4 v7, 0x0

    .line 503
    .local v7, icon:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    const/4 v14, 0x3

    if-ge v6, v14, :cond_6

    .line 505
    if-eqz v8, :cond_5

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_a

    .line 506
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020010

    invoke-static {v14, v15, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 517
    :cond_6
    :goto_5
    const-string v14, "online_item_optional_icon"

    invoke-virtual {v4, v14, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    const-string v15, "online_item_optional_label"

    if-nez v12, :cond_b

    const-string v14, ""

    :goto_6
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v15, "online_item_optional_version"

    if-nez v12, :cond_c

    const-string v14, ""

    :goto_7
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v14, "online_item_optional_data"

    invoke-virtual {v9, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 524
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 459
    .end local v3           #GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v6           #i:I
    .end local v7           #icon:Landroid/graphics/Bitmap;
    .end local v8           #iconFile:Ljava/io/File;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #res:Lcom/htc/home/personalize/abstractresource/Resource;
    :pswitch_0
    const/4 v13, 0x0

    .line 460
    goto/16 :goto_1

    .line 462
    :pswitch_1
    const/4 v13, 0x2

    .line 463
    goto/16 :goto_1

    .line 465
    :pswitch_2
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 492
    .restart local v3       #GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #bundle:Landroid/os/Bundle;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v11       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #res:Lcom/htc/home/personalize/abstractresource/Resource;
    :cond_7
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    const-string v15, "get LocalResource from LocalResourceList"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v10

    .line 494
    .local v10, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v10, :cond_8

    const/4 v12, 0x0

    :goto_8
    goto :goto_2

    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v12

    goto :goto_8

    .line 501
    .end local v10           #list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    :cond_9
    new-instance v8, Ljava/io/File;

    sget-object v14, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {v12, v14}, Lcom/htc/home/personalize/abstractresource/Resource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 509
    .restart local v6       #i:I
    .restart local v7       #icon:Landroid/graphics/Bitmap;
    .restart local v8       #iconFile:Ljava/io/File;
    :cond_a
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_5

    .line 512
    :catch_0
    move-exception v5

    .line 513
    .local v5, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 514
    sget-object v14, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OutOfMemoryError guid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 519
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    :cond_b
    invoke-virtual {v12}, Lcom/htc/home/personalize/abstractresource/Resource;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 520
    :cond_c
    invoke-virtual {v12}, Lcom/htc/home/personalize/abstractresource/Resource;->getVersionCode()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static queryDownloadSceneId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "productID"

    .prologue
    const/4 v4, 0x0

    .line 653
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 655
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DOWNLOADED_SCENE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/home/personalize/SceneProvider/DownloadedScene;->DOWNLOADED_SCENE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 659
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 660
    .local v7, sceneId:I
    if-eqz v6, :cond_2

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    const-string v1, "sceneID"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 664
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_1
    const/4 v6, 0x0

    .line 667
    :cond_2
    return v7
.end method

.method private reloadWallpapers(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 219
    const/4 v2, 0x2

    invoke-static {v2, p1}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v0

    .line 220
    .local v0, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    invoke-virtual {v0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->size()I

    move-result v1

    .line 221
    .local v1, origSize:I
    invoke-virtual {v0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->reload2()V

    .line 222
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method private renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "strSrc"
    .parameter "strDest"

    .prologue
    .line 283
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, srcFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, desFile:Ljava/io/File;
    if-nez v1, :cond_0

    .line 287
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srcFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 290
    :cond_0
    if-nez v0, :cond_1

    .line 291
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srcFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static resetDownloadSceneId(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "sceneID"

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, where:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "sceneID"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    sget-object v3, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DOWNLOADED_SCENE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method public static resetDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "type"

    .prologue
    .line 671
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset My Activity download status, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v2, "requester"

    const-string v3, "com.htc.store_oad"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v0, GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "setAllItemsToDownloadAvailableByContentType"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    const-string v2, "online_item_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 678
    const-string v2, "online_item_content_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v2, "download_status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 681
    return-void
.end method

.method public static startGetDownloadUrl(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "guid"

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    monitor-enter v1

    .line 562
    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;-><init>(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 216
    return-void
.end method

.method public syncDB(ILjava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "type"
    .parameter "guid"
    .parameter "ctx"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 542
    sget-object v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDB type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-ne p1, v4, :cond_1

    .line 545
    sget-boolean v1, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mIsSyncingSceneDB:Z

    if-ne v1, v4, :cond_0

    .line 557
    :goto_0
    return-void

    .line 548
    :cond_0
    sput-boolean v4, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->mIsSyncingSceneDB:Z

    .line 552
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, intentToService:Landroid/content/Intent;
    const-string v1, "storedata_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v1, "base_idx"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string v1, "page_size"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    invoke-virtual {p3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
