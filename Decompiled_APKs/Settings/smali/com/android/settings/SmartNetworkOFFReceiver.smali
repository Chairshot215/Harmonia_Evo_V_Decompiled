.class public Lcom/android/settings/SmartNetworkOFFReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetworkOFFReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "SmartNetworkOFFReceiver"

    sput-object v0, Lcom/android/settings/SmartNetworkOFFReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    sget-object v1, Lcom/android/settings/SmartNetworkOFFReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lcom/android/settings/SmartNetworkOFFReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Receive OFF intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaver_switch_2G_call"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    sget-object v1, Lcom/android/settings/SmartNetworkOFFReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Send switch call Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, it:Landroid/content/Intent;
    const-string v1, "POWERSAVER_SWITCH_TO_2G_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    .end local v0           #it:Landroid/content/Intent;
    :cond_0
    return-void
.end method
