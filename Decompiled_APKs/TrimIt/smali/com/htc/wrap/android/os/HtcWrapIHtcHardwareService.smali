.class public Lcom/htc/wrap/android/os/HtcWrapIHtcHardwareService;
.super Ljava/lang/Object;
.source "HtcWrapIHtcHardwareService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFnLedState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIHtcHardwareService;->getHtcHardwareService()Landroid/os/IHtcHardwareService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHtcHardwareService;->getFnLedState()I

    move-result v0

    return v0
.end method

.method private static getHtcHardwareService()Landroid/os/IHtcHardwareService;
    .locals 1

    .prologue
    .line 10
    const-string v0, "htchardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    return-object v0
.end method
