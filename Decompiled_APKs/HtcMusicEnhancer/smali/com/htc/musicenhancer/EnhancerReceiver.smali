.class public Lcom/htc/musicenhancer/EnhancerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnhancerReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[EnhancerReceiver]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "DownloadAlbumArtReceiver onReceive"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v3, "action_start_music_activity"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "Received ACTION_START_MUSIC_ACTIVITY"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, musicIntent:Landroid/content/Intent;
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2           #musicIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 26
    .restart local v2       #musicIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 27
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "Music activity not found."

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #musicIntent:Landroid/content/Intent;
    :cond_1
    const-string v3, "com.htc.musicenhancer.action_first_download"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "Received ACTION_FIRST_AUTO_DOWNLOAD"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_DATA_FEE_WARNING:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v2       #musicIntent:Landroid/content/Intent;
    sget-object v3, Lcom/htc/musicenhancer/DialogActivity;->DOWNLOAD_ACTION:Ljava/lang/String;

    const-string v4, "action_activity_on_start"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/high16 v3, 0x1480

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    .line 38
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "dialog activity not found."

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #musicIntent:Landroid/content/Intent;
    :cond_2
    const-string v3, "com.htc.musicenhancer.action_press_cancel_notif"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "Received ACTION_PRESS_CANCEL_NOTIF"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/htc/musicenhancer/util/EnhancerUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_CONNECTION_FAIL:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v2       #musicIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    :try_start_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v1

    .line 50
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v3, "[EnhancerReceiver]"

    const-string v4, "dialog activity not found."

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #musicIntent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "action_activity_on_start"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-class v3, Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
