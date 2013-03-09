.class Lcom/htc/music/AudioPreview$9;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "[AudioPreview]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "[AudioPreview]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    iget-object v2, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #calls: Lcom/htc/music/AudioPreview;->updatePlayPause()V
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$1000(Lcom/htc/music/AudioPreview;)V

    :cond_2
    const-string v2, "finish"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v2}, Lcom/htc/music/AudioPreview;->finish()V

    :cond_3
    return-void
.end method
