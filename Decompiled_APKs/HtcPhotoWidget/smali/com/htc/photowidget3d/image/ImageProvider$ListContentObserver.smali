.class Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;
.super Landroid/database/ContentObserver;
.source "ImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListContentObserver"
.end annotation


# instance fields
.field mIsMonitoring:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/image/ImageProvider;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/image/ImageProvider;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    .line 379
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->mIsMonitoring:Z

    .line 381
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageProvider;->mIsContentChanged:Z

    .line 391
    return-void
.end method

.method public startMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->mIsMonitoring:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->stopMonitor()V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v0, v0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v0, v0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 404
    :cond_1
    iput-boolean v2, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->mIsMonitoring:Z

    .line 405
    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v0, v0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->mIsMonitoring:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->this$0:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v0, v0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->mIsMonitoring:Z

    .line 414
    return-void
.end method
