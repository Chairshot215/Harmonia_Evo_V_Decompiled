.class public Lcom/android/settings/framework/request/HtcBootCompletedRequest;
.super Ljava/lang/Object;
.source "HtcBootCompletedRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/request/HtcBootCompletedRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 94
    sget-object v0, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static onBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->getMetadata(Landroid/content/Context;)Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    move-result-object v0

    .line 43
    .local v0, metadata:Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
    invoke-virtual {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->getSkuName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, skuName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 47
    invoke-static {p0, p1}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->patchForTurningOffAnimation(Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_wifi_2g_call_netmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    return-void
.end method

.method private static patchForTurningOffAnimation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 68
    const-string v0, "patchForTurningOffAnimation20120108"

    .line 69
    .local v0, PATCH_KEY:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "patchForTurningOffAnimation20120108"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "The function patchForTurningOffAnimation(...) has been invoked!"

    invoke-static {v2}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->Log(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v2, "patchForTurningOffAnimation20120108"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 82
    const-string v2, "window_animation_scale"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 84
    const-string v2, "transition_animation_scale"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 86
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAnimationScales([F)Z

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
