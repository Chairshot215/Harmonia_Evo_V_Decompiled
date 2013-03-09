.class public Leu/chainfire/stickmount/StickMountService;
.super Landroid/app/IntentService;
.source "StickMountService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "StickMount IntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "eu.chainfire.stickmount.ServiceAction"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_0
    const-string v4, "unmountall"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Leu/chainfire/stickmount/Util;->mountDevices(Landroid/content/Context;Z)V

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 19
    :cond_2
    const-string v4, "mountall"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Leu/chainfire/stickmount/Util;->mountDevices(Landroid/content/Context;Z)V

    goto :goto_0

    .line 21
    :cond_3
    const-string v4, "attach"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Searching ..."

    invoke-static {v4, v5}, Leu/chainfire/stickmount/Util;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 25
    .local v2, start:J
    const/4 v1, 0x0

    .line 28
    .local v1, found:Z
    :goto_1
    invoke-static {}, Leu/chainfire/stickmount/Util;->getNewDeviceCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 29
    const/4 v1, 0x1

    .line 41
    :cond_4
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Leu/chainfire/stickmount/Util;->mountDevices(Landroid/content/Context;Z)V

    goto :goto_0

    .line 33
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x9c4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 36
    const-wide/16 v4, 0x20

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 37
    :catch_0
    move-exception v4

    goto :goto_1
.end method
