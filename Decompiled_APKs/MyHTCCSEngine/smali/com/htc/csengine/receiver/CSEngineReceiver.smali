.class public Lcom/htc/csengine/receiver/CSEngineReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CSEngineReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "csEngineReceiver"

.field private static final _DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    const-string v4, "cslib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "csEngineReceiver.onReceive(): intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v4, "com.htc.csengine.startservice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    const-string v4, "test"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "profiler.csputdeviceprof"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 41
    .local v3, test:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.csengine.csEngineService.forcestart"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, intentEngine:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    .end local v1           #intentEngine:Landroid/content/Intent;
    .end local v3           #test:Ljava/lang/Boolean;
    :cond_2
    :goto_1
    const-string v4, "android.server.checkin.FOTA_INSTALL_COMPLETE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    new-instance v2, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;

    invoke-direct {v2, p0, p1}, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;-><init>(Lcom/htc/csengine/receiver/CSEngineReceiver;Landroid/content/Context;)V

    .line 56
    .local v2, setPrefThread:Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;
    invoke-virtual {v2}, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;->start()V

    goto :goto_0

    .line 46
    .end local v2           #setPrefThread:Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;
    .restart local v3       #test:Ljava/lang/Boolean;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.csengine.csEngineService.start"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v1       #intentEngine:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
