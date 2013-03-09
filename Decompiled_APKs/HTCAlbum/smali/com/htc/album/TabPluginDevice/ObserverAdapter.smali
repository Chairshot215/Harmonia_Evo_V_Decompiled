.class public abstract Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "ObserverAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ObserverAdapter"


# instance fields
.field private mEnableObserverNotify:Z

.field protected mHandler:Landroid/os/Handler;

.field private mLocker:Ljava/lang/Object;

.field protected mMediaTypes:I

.field protected mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "mediaTypes"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    .line 31
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    .line 44
    iput p3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    .line 45
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/ObserverAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    return v0
.end method


# virtual methods
.method protected enableObserverNotify()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    .line 58
    return-void
.end method

.method public final isObservedDataChange()Z
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->isChanged()Z

    move-result v0

    .line 53
    :cond_0
    return v0
.end method

.method protected onLoadDataBegin(Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin(Landroid/os/AsyncTask;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->unregisterObserver()V

    .line 116
    return-void
.end method

.method protected onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->registerObserver()V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V

    .line 129
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 208
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public onUnloadData()V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->unregisterObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 143
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ObserverAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ObserverAdapter][onUnloadData]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerObserver()V
    .locals 6

    .prologue
    .line 61
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 64
    :cond_0
    monitor-exit v3

    .line 91
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-nez v2, :cond_6

    .line 68
    new-instance v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;-><init>(Lcom/htc/album/TabPluginDevice/ObserverAdapter;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    .line 69
    const-string v2, "ObserverAdapter"

    const-string v4, "[HTCAlbum][ObserverAdapter][registerObserver]: register new observer.."

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    .line 77
    .local v0, mediaTypes:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 79
    .local v1, resolver:Landroid/content/ContentResolver;
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    .line 80
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    :cond_2
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    .line 83
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    :cond_3
    and-int/lit8 v2, v0, 0xe

    if-eqz v2, :cond_4

    .line 86
    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    :cond_4
    and-int/lit16 v2, v0, 0xe0

    if-eqz v2, :cond_5

    .line 89
    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    :cond_5
    monitor-exit v3

    goto :goto_0

    .end local v0           #mediaTypes:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 73
    :cond_6
    :try_start_1
    const-string v2, "ObserverAdapter"

    const-string v4, "[HTCAlbum][ObserverAdapter][registerObserver]: already registered skip.."

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 197
    return-void
.end method

.method protected unregisterObserver()V
    .locals 4

    .prologue
    .line 95
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-nez v1, :cond_0

    .line 98
    monitor-exit v2

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v1, "ObserverAdapter"

    const-string v3, "[HTCAlbum][ObserverAdapter][unregisterObserver]: unregister observer.."

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    .line 104
    monitor-exit v2

    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
