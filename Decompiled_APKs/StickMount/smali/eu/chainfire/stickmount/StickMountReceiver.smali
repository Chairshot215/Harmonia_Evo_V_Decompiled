.class public Leu/chainfire/stickmount/StickMountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StickMountReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.stickmount.StickMountService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .local v0, svc:Landroid/content/Intent;
    if-eqz p2, :cond_0

    const-string v1, "eu.chainfire.stickmount.unmountall"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    const-string v1, "eu.chainfire.stickmount.ServiceAction"

    const-string v2, "unmountall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    return-void

    .line 15
    :cond_0
    const-string v1, "eu.chainfire.stickmount.ServiceAction"

    const-string v2, "mountall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
