.class public Lcom/android/settings/framework/activity/powersaver/SmartSyncONReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSyncONReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "SmartSyncONReceiver"

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncONReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncONReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncONReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncONReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Receive ON intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SMARTSYNC_NIGHT_ENABLE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncONReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, intent_service_runing:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    .end local v0           #intent_service_runing:Landroid/content/Intent;
    :cond_0
    return-void
.end method
