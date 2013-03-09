.class public Lcom/google/android/partnersetup/GservicesChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GservicesChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    const-string v0, "GooglePartnerSetup"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "GooglePartnerSetup"

    const-string v1, "GservicesChangedReceiver.onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    invoke-static {p1}, Lcom/google/android/partnersetup/AppHiderService;->startSetVisibilityService(Landroid/content/Context;)V

    .line 25
    invoke-static {p1}, Lcom/google/android/partnersetup/ClientIdService;->startSetClientIdService(Landroid/content/Context;)V

    .line 26
    return-void
.end method
