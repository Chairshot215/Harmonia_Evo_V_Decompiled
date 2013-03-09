.class Lcom/htc/dockmode/music/MusicView$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/music/MusicView;->bindMusicPlaybackService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/music/MusicView;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/music/MusicView;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$2;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$2;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v1}, Lcom/htc/dockmode/music/MusicView;->updateMusicInfo()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$2;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v1}, Lcom/htc/dockmode/music/MusicView;->updatePlaybackPanel()V

    goto :goto_0

    .line 264
    :cond_2
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$2;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v1}, Lcom/htc/dockmode/music/MusicView;->updatePlaybackPanel()V

    goto :goto_0
.end method
