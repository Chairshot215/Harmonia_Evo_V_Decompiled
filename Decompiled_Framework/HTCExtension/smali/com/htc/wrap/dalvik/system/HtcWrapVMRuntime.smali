.class public final Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;
.super Ljava/lang/Object;
.source "HtcWrapVMRuntime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableGc(J)V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->disableGc(J)V

    return-void
.end method

.method public static disableGcForExternalAlloc(Z)V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    return-void
.end method

.method public static enableGc()V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->enableGc()V

    return-void
.end method
