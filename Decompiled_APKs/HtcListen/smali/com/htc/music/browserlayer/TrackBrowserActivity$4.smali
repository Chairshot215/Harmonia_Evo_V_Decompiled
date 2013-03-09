.class Lcom/htc/music/browserlayer/TrackBrowserActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[TrackBrowser]"

    const-string v2, "set play/pause Buttun because change."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[TrackBrowser]"

    const-string v2, "set play/pause Buttun because playback complete."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0
.end method
