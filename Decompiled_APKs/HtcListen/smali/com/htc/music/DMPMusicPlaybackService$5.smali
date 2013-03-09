.class Lcom/htc/music/DMPMusicPlaybackService$5;
.super Landroid/os/Handler;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "handleMessage: mPlayer==null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$4000(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$2400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$4100(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$5;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$4200(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
