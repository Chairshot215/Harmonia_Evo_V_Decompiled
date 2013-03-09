.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;
.super Ljava/lang/Object;
.source "LiveGalleryEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_LiveGalleryEngine"


# instance fields
.field private mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

.field private mPassword:Ljava/lang/String;

.field private mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

.field private mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

.field private mPhotoListDownloadThread:Ljava/lang/Thread;

.field private mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

.field private mThumbnailCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

.field private mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

.field private mToken:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->GetInstance()Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-static {}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->GetInstance()Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    return-void
.end method


# virtual methods
.method public CancelAllDownloadPhoto()V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->CancelAll()V

    return-void
.end method

.method public CancelAllDownloadThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->CancelAll()V

    return-void
.end method

.method public CancelDownloadPhoto(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->Cancel(Ljava/lang/String;)Z

    return-void
.end method

.method public CancelDownloadPhotoList()V
    .locals 2

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "CancelDownloadPhotoList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->Cancel()V

    :cond_0
    return-void
.end method

.method public CancelDownloadThumbnail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->Cancel(Ljava/lang/String;)Z

    return-void
.end method

.method public DownloadPhoto(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    iget-object v6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DownloadPhotoList()V
    .locals 4

    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "DownloadPhotoList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "download photo list thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->Init(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public DownloadPhotoList2()V
    .locals 5

    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "DownloadPhotoList2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "download photo list thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->Init2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public DownloadThumbnail(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    iget-object v6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetCache(Ljava/lang/String;JJ)V
    .locals 7

    const-string v4, "TMUS_LiveGalleryEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetCache:Path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TMUS_LiveGalleryEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetCache:Photosize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TMUS_LiveGalleryEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetCache:Thumbnailsize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "thumbnail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-direct {v4, v1, p2, p3}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    new-instance v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-direct {v4, v2, p4, p5}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    return-void
.end method

.method public SetCallback(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V
    .locals 2

    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "SetCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    return-void
.end method

.method public SetToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TMUS_LiveGalleryEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mToken:Ljava/lang/String;

    return-void
.end method

.method public setUserNamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "TMUS_LiveGalleryEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUsername:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TMUS_LiveGalleryEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPassword:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    return-void
.end method
