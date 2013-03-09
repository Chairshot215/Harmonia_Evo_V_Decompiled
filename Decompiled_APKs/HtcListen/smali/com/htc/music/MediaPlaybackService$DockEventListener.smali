.class Lcom/htc/music/MediaPlaybackService$DockEventListener;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$DockEventListener;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive dockevent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onReceive dockevent state = EXTRA_DOCK_STATE_UNDOCKED + "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$DockEventListener;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$DockEventListener;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->pause()V

    :cond_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "onReceive dockevent state = EXTRA_DOCK_STATE_UNDOCKED - "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
