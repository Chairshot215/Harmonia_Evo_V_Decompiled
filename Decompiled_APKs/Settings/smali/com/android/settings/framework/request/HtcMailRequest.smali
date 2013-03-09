.class public final Lcom/android/settings/framework/request/HtcMailRequest;
.super Ljava/lang/Object;
.source "HtcMailRequest.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/framework/request/HtcMailRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/request/HtcMailRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMaxInactiveTimeChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 42
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v2, "com.htc.intent.action.MAX_INACTIVITY_TIME_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0005:Z

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inactivity_time"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    :cond_2
    const-string v0, "com.htc.intent.extra.PREVIOUS_SCREEN_TIMEOUT"

    .line 61
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, previousScreenTimeout:I
    if-eqz v1, :cond_3

    .line 71
    const-string v2, "screen_off_timeout"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    :cond_3
    const-string v2, "screen_off_timeout"

    invoke-static {p0, v2, v4}, Lcom/android/settings/framework/storage/HtcStorage$Local;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
