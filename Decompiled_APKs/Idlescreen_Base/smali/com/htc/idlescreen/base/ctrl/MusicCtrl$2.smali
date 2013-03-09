.class Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->registerMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x3e9

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, action:Ljava/lang/String;
    const-string v2, "MusicCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    const-string v2, "isplaying"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 187
    .local v1, isPlaying:Z
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V
    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->access$500(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;Z)V

    .line 188
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    iget-object v2, v2, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 189
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    iget-object v2, v2, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x32

    invoke-static {v2, v5, v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 191
    .end local v1           #isPlaying:Z
    :cond_1
    return-void
.end method
