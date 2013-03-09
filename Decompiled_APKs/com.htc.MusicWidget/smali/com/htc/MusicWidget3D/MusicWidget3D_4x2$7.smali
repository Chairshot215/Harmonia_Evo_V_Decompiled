.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;
.super Landroid/content/BroadcastReceiver;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    const-string v3, "[MusicWidget3D]"

    const-string v4, "Playback status receiver: com.htc.music.metachanged"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v3, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1435
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "animationtype"

    const-string v4, "animationtype"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1437
    const-string v3, "reloadqueue"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1438
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3, v5, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1439
    .end local v1           #data:Landroid/os/Bundle;
    :cond_2
    const-string v3, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1440
    const-string v3, "[MusicWidget3D]"

    const-string v4, "Playback status receiver: com.htc.music.playstatechanged"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlaybackPanel()V

    goto :goto_0

    .line 1442
    :cond_3
    const-string v3, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1443
    const-string v3, "[MusicWidget3D]"

    const-string v4, "Playback status receiver: com.htc.music.playbackcomplete"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlaybackPanel()V

    goto :goto_0

    .line 1445
    :cond_4
    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1446
    const-string v3, "[MusicWidget3D]"

    const-string v4, "Playback status receiver: com.htc.music.queuechanged"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v3, "updatewidget"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1448
    .local v2, needUpdateWidget:Z
    if-eqz v2, :cond_0

    .line 1449
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1450
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v3, "animationtype"

    const-string v4, "animationtype"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1452
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3, v5, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
