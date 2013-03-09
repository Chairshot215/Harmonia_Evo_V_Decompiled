.class Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeNotifier;
.super Ljava/lang/Object;
.source "HtcWirelessSleepModeNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeNotifier;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method static final broadcast(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "htc_wireless_sleep_mode_enabled"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    .line 46
    .local v4, wirelessSleepMode:Z
    const-string v5, "htc_wireless_sleep_start_time"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, startTime:I
    const-string v5, "htc_wireless_sleep_end_time"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, endTime:I
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.WIRELESS_SLEEP_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "htc_wireless_sleep_mode_enabled"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "htc_wireless_sleep_start_time"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "htc_wireless_sleep_end_time"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 75
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
