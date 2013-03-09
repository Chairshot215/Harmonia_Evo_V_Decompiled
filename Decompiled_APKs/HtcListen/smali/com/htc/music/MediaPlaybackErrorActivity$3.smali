.class Lcom/htc/music/MediaPlaybackErrorActivity$3;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$3;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$3;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$100(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MediaPlaybackErrorActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$3;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$3;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$100(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
