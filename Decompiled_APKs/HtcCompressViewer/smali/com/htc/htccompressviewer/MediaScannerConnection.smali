.class public Lcom/htc/htccompressviewer/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMIMETypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerConnecting:Z

.field private mMediaScannerService:Landroid/media/IMediaScannerService;

.field private mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMIMETypeList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMIMETypeList:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerConnecting:Z

    .line 36
    iput-object p1, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private scanFile()V
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 95
    .local v0, count:I
    const/4 v1, 0x0

    .line 96
    .local v1, i:I
    monitor-enter p0

    .line 97
    :goto_0
    if-ge v1, v0, :cond_0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMIMETypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/htc/htccompressviewer/MediaScannerConnection;->scanFile(Landroid/net/Uri;Ljava/lang/String;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v2, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMIMETypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private shouldScanFile(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .parameter "path"
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, filePath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 132
    const-string v2, "content://drm/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.message"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindScannerService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 48
    iget-object v3, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerConnecting:Z

    if-eqz v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.providers.media"

    const-string v4, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iput-boolean v2, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerConnecting:Z

    .line 55
    :try_start_0
    iget-object v3, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disconnectMediaScanner()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public mediaScannerConnected()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaScannerConnecting()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerConnecting:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerConnecting:Z

    .line 42
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 43
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/htc/htccompressviewer/MediaScannerConnection;->scanFile()V

    .line 45
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 76
    return-void
.end method

.method public scanFile(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 106
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/htc/htccompressviewer/MediaScannerConnection;->shouldScanFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMediaScannerService:Landroid/media/IMediaScannerService;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/media/IMediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/htc/htccompressviewer/MediaScannerConnection;->mMIMETypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_1
.end method
