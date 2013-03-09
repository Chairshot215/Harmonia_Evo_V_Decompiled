.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;
.super Landroid/database/ContentObserver;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainContentObserver"
.end annotation


# instance fields
.field private mLatestTime:J

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "handler"

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    .line 1273
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;->mLatestTime:J

    .line 1274
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    .line 1278
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1279
    const/16 v0, 0xbb8

    .line 1280
    .local v0, delatTime:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;->mLatestTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 1281
    const/4 v0, 0x0

    .line 1282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;->mLatestTime:J

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$MainContentObserver;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$600(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1285
    return-void
.end method
