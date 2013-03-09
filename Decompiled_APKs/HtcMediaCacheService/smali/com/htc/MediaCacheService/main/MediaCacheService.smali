.class public Lcom/htc/MediaCacheService/main/MediaCacheService;
.super Landroid/app/Service;
.source "MediaCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/main/MediaCacheService$1;,
        Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_EJECT:Ljava/lang/String; = "ACTION_EJECT"

.field public static final ACTION_IMAGETABLEUPDATE:Ljava/lang/String; = "ACTION_IMAGETABLEUPDATE"

.field public static final ACTION_SCANFINISH:Ljava/lang/String; = "ACTION_SCANFINISH"

.field public static final ACTION_VIDEOTABLEUPDATE:Ljava/lang/String; = "ACTION_VIDEOTABLEUPDATE"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

.field protected mContext:Landroid/content/Context;

.field private volatile mServiceHandler:Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mVersionMajor:I

.field private mVersionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/MediaCacheService/main/MediaCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mVersionMajor:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mVersionMinor:I

    .line 32
    iput-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    .line 40
    iput-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/MediaCacheService/main/MediaCacheService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/MediaCacheService/main/MediaCacheService;->doScanGalleryCache(ZZ)V

    return-void
.end method

.method private closeDatabase(Ljava/lang/String;)V
    .locals 5
    .parameter "volumeName"

    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://htcmediacache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to close media database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createGalleryCacheScanner()Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;

    invoke-direct {v0, p0}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;-><init>(Landroid/content/Context;)V

    .line 338
    .local v0, scanner:Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;
    return-object v0
.end method

.method private createGalleryThumbnailMaker()Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;

    invoke-direct {v0, p0}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, thumbnailmaker:Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;
    return-object v0
.end method

.method private doScanGalleryCache(ZZ)V
    .locals 7
    .parameter "bImage"
    .parameter "bVideo"

    .prologue
    const/4 v6, 0x0

    .line 220
    sget-object v2, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaCacheService][doScanGalleryCache]+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/MediaCacheService/main/MediaCacheStore;->isContinueSyncMediaProvider(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.HTC_MEDIACACHE_SCANNER_STARTED"

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/htc/MediaCacheService/main/MediaCacheService;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/htc/MediaCacheService/main/MediaCacheService;->createGalleryThumbnailMaker()Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;

    move-result-object v1

    .line 231
    .local v1, thumbnailmaker:Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;
    invoke-virtual {v1, p1, p2}, Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;->doGenGalleryThumbnail(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1           #thumbnailmaker:Lcom/htc/MediaCacheService/gallery/GalleryCacheMaker;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.HTC_MEDIACACHE_MEDIA_SCANNER_FINISHED"

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/htc/MediaCacheService/main/MediaCacheService;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    sget-object v2, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[MediaCacheService][doScanGalleryCache]-"

    invoke-static {v2, v3}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception in doMediaCacheScanner()"

    invoke-static {v2, v3, v0}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private openDatabase()V
    .locals 5

    .prologue
    .line 295
    :try_start_0
    const-string v2, "external"

    .line 296
    .local v2, volumeName:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://htcmediacache/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #volumeName:Ljava/lang/String;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "failed to open media database"

    invoke-static {v3, v4}, Lcom/htc/MediaCacheService/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 133
    sget-object v5, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MediaCacheProvider][MediaCacheService][onBind]+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_1

    .line 137
    :cond_0
    sget-object v5, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[MediaCacheProvider][MediaCacheService][onBind]- invalid intent..."

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v4

    .line 141
    :cond_1
    const-string v5, "MAJOR"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, nVersionMajor:I
    const-string v5, "MINOR"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, nVersionMinor:I
    iget v5, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mVersionMajor:I

    if-ne v5, v0, :cond_2

    iget v5, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mVersionMinor:I

    if-eq v5, v1, :cond_3

    .line 148
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mVersionMajor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mVersionMinor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, szVersionService:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, szVersionClient:Ljava/lang/String;
    sget-object v5, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MediaCacheProvider][MediaCacheService][onBind]- version mismatch: service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/MediaCacheService/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v2           #szVersionClient:Ljava/lang/String;
    .end local v3           #szVersionService:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[MediaCacheProvider][MediaCacheService][onBind]-"

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 45
    sget-object v4, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaCacheProvider][MediaCacheService][onCreate]+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v4, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    .line 48
    iget-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    invoke-virtual {v4}, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->onCreate()V

    .line 50
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mContext:Landroid/content/Context;

    .line 53
    iget-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 58
    :try_start_0
    iget-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 59
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 60
    .local v2, factor:I
    sput v2, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFactor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #factor:I
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "MediaCacheService"

    invoke-direct {v3, v4, p0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 75
    .local v3, thr:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 77
    sget-object v4, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaCacheProvider][MediaCacheService][onCreate]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/MediaCacheService/gallery/ImageThumbnail;->mFactor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 62
    .end local v3           #thr:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 64
    .local v1, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[IteratorFileCacheManager] Exception: "

    invoke-static {v4, v5, v1}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 82
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheService][onDestroy]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    invoke-virtual {v0}, Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;->onDestroy()V

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mBinder:Lcom/htc/MediaCacheService/service/MediaCacheServiceImpl;

    .line 89
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[MediaCacheProvider][MediaCacheService][onDestroy]-"

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 104
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaCacheProvider][MediaCacheService][onStartCommand]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mServiceHandler:Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;

    if-nez v1, :cond_0

    .line 107
    monitor-enter p0

    .line 109
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Intent is null in onStartCommand: "

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/4 v1, 0x2

    .line 126
    :goto_2
    return v1

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mServiceHandler:Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;

    invoke-virtual {v1}, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mServiceHandler:Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    const/4 v1, 0x3

    goto :goto_2

    .line 110
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 280
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 283
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 285
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mServiceLooper:Landroid/os/Looper;

    .line 286
    new-instance v0, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;-><init>(Lcom/htc/MediaCacheService/main/MediaCacheService;Lcom/htc/MediaCacheService/main/MediaCacheService$1;)V

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheService;->mServiceHandler:Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;

    .line 288
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 289
    return-void
.end method
