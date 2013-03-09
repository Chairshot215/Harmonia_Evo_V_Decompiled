.class public Lcom/htc/dlnamiddlelayer/DLNAServiceObject;
.super Ljava/lang/Object;
.source "DLNAServiceObject.java"


# instance fields
.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field protected mMediaControllerNotify:Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

.field protected mNotificationCBHandler:Landroid/os/Handler;

.field protected mThumbnailDownloadThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mContext:Landroid/content/Context;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mMediaControllerNotify:Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    .line 10
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mCallbackHandler:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mThumbnailDownloadThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    .line 12
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mNotificationCBHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mMediaControllerNotify:Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    return-object v0
.end method

.method public getNotificationCBHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mNotificationCBHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getResponseHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getThumbnailDownloadThread()Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mThumbnailDownloadThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "aContext"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public setMediaCtrlNotify(Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;)V
    .locals 0
    .parameter "aMediaCtrlNotify"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mMediaControllerNotify:Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    .line 27
    return-void
.end method

.method public setNotificationCBHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "aHandler"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mNotificationCBHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public setResponseHanlder(Landroid/os/Handler;)V
    .locals 0
    .parameter "aHandler"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mCallbackHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public setThumbnailDownloadThread(Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->mThumbnailDownloadThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    .line 47
    return-void
.end method
