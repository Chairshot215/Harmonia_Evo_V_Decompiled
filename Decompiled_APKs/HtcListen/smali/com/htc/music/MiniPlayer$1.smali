.class Lcom/htc/music/MiniPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MiniPlayer]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mini player receiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updateThumb()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    :cond_2
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updateTrackInfo()V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    :cond_3
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    goto :goto_0

    :cond_4
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    goto :goto_0

    :cond_5
    const-string v1, "com.htc.music.dmcsvcman.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updatePlayPauseBtn()V

    goto :goto_0

    :cond_6
    const-string v1, "com.htc.music.dmcsvcman.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updateDMCInfo()V

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$1;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->updateDMCThumb()V

    goto :goto_0
.end method
