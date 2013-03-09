.class public Lcom/android/settings/framework/activity/powersaver/PowerSaverStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaverStateReceiver.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final HTC_POWERSAVER_OFF:Ljava/lang/String; = "com.android.server.htcpowersaver.action.OFF"

.field public static final HTC_POWERSAVER_ON:Ljava/lang/String; = "com.android.server.htcpowersaver.action.ON"

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field public static final POWERSAVER_STATE:Ljava/lang/String; = "com.android.settings.power.powersaver.state"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-string v0, "PowerSaverStateReceiver"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverStateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverStateReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverStateReceiver;->TAG:Ljava/lang/String;

    const-string v2, "POWERSAVER ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.settings.power.powersaver.state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverStateReceiver;->TAG:Ljava/lang/String;

    const-string v2, "POWERSAVER OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.settings.power.powersaver.state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
