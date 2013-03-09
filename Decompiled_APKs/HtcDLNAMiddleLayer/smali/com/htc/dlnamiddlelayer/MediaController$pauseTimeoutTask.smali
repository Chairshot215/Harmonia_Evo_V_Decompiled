.class Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;
.super Ljava/util/TimerTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "pauseTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/MediaController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2071
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2074
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "pauseTimer : stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->stop()V

    .line 2076
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    sget-object v2, Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;->NOT_SUPPORT:Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/PlaybackController;->setPauseSupport(Lcom/htc/dlnamiddlelayer/PlaybackController$PauseSupport;)V

    .line 2077
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2079
    const/16 v0, -0x13a

    .line 2080
    .local v0, resID:I
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getMediaCtrlNotify()Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget v2, v2, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/MediaController;->getRendererID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$pauseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/MediaController;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;->controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V

    .line 2083
    .end local v0           #resID:I
    :cond_0
    return-void
.end method
