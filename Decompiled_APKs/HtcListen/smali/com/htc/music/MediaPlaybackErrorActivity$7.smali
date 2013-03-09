.class Lcom/htc/music/MediaPlaybackErrorActivity$7;
.super Landroid/os/Handler;
.source "MediaPlaybackErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackErrorActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v4, v4, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[MediaPlaybackErrorActivity]"

    const-string v4, "###### mPluginReScanHandler: plugin service is ready and have to start back to HtcMusic..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v3, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #setter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$502(Lcom/htc/music/MediaPlaybackErrorActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "[MediaPlaybackErrorActivity]"

    const-string v4, "mErrorMessage is null!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
