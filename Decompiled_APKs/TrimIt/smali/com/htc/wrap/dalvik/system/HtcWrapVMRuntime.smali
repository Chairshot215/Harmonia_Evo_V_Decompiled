.class public final Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;
.super Ljava/lang/Object;
.source "HtcWrapVMRuntime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableGc(J)V
    .locals 1
    .parameter "size"

    .prologue
    .line 34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->disableGc(J)V

    .line 35
    return-void
.end method

.method public static disableGcForExternalAlloc(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 25
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 26
    return-void
.end method

.method public static enableGc()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->enableGc()V

    .line 43
    return-void
.end method
