.class public Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;
.super Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
.source "HtcRmiDisplayInvocator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiDisplayInvocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "methodName"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 31
    return-void
.end method

.method public setAutoRotationStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 47
    .local v1, status:Z
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    .end local v1           #status:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public setBrightnessAutomaticModeStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, automaticMode:Z
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-static {p1, v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAutomaticBrightnessMode(Landroid/content/Context;Z)Z

    move-result v1

    .line 107
    .end local v0           #automaticMode:Z
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public setBrightnessStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, result:Z
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "extra_status"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, brightness:I
    const-string v2, "extra_status"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncUnderlyingBrightness(I)Z

    move-result v1

    .line 82
    .end local v0           #brightness:I
    :cond_0
    const-string v2, "extra_successful"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method
