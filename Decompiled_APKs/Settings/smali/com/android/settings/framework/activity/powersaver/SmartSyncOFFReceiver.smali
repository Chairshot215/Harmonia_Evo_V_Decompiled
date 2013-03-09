.class public Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSyncOFFReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "SmartSyncOFFReceiver"

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 25
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Receive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Receive OFF intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SMARTSYNC_NIGHT_ENABLE"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    const-class v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {v0, v2, v5, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, intent_cancel_time:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncOFFReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    const-class v3, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;

    invoke-direct {v1, v2, v5, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v1, intent_service_stoping:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    .end local v0           #intent_cancel_time:Landroid/content/Intent;
    .end local v1           #intent_service_stoping:Landroid/content/Intent;
    :cond_0
    return-void
.end method
