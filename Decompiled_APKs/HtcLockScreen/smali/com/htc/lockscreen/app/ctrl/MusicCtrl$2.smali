.class Lcom/htc/lockscreen/app/ctrl/MusicCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->registerMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$2;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x3e9

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, action:Ljava/lang/String;
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$2;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    iget-object v1, v1, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 208
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$2;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    iget-object v1, v1, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v4, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 210
    :cond_1
    return-void
.end method
