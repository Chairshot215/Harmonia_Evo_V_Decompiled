.class Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "OnCompletionListener...onCompletion()...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$3800(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
