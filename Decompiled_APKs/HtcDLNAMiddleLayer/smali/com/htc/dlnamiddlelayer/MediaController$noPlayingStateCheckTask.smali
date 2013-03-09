.class Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;
.super Ljava/util/TimerTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "noPlayingStateCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/MediaController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2094
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->noPlayingStateCheckTimerDisable()V

    .line 2100
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaybackCtrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaybackCtrl:Lcom/htc/dlnamiddlelayer/PlaybackController;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlaybackController;->getDMRPlayState()I

    move-result v0

    sget-object v1, Lcom/htc/dlnamiddlelayer/PlayState;->PLAYING:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController$noPlayingStateCheckTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->setControlling(Z)V

    .line 2106
    :cond_0
    return-void
.end method
