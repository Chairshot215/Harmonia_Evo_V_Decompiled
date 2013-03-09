.class public Lcom/android/providers/settings/util/HtcKernelSynchronizer;
.super Ljava/lang/Object;
.source "HtcKernelSynchronizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncAnimationScales([F)Z
    .locals 5
    .parameter "animationScales"

    .prologue
    const/4 v2, 0x0

    .line 31
    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 38
    .local v1, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const/4 v2, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
