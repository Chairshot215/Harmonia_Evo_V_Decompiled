.class public Lcom/google/android/partnersetup/UpdateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x3

    .line 33
    const-string v0, "GooglePartnerSetup"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "GooglePartnerSetup"

    const-string v1, "UpdateIntentReceiver.onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    const-string v0, "GooglePartnerSetup"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "GooglePartnerSetup"

    const-string v1, "UpdateIntentReceiver: Forcing re-setting of client ids"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/google/android/partnersetup/ClientIdService;->startSetClientIdService(Landroid/content/Context;)V

    .line 43
    return-void
.end method
