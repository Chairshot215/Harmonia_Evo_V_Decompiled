.class public Lcom/htc/wrap/android/os/HtcWrapIDisplayService;
.super Ljava/lang/Object;
.source "HtcWrapIDisplayService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Get3DMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IDisplayService;->Get3DMode()I

    move-result v0

    return v0
.end method

.method public static IsHDMIConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public static IsHDMIEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IDisplayService;->IsHDMIEnable()Z

    move-result v0

    return v0
.end method

.method public static clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getIDisplayService()Landroid/os/IDisplayService;
    .locals 1

    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v0

    return-object v0
.end method

.method public static getTVMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IDisplayService;->getTVMode()I

    move-result v0

    return v0
.end method

.method public static set3DMode(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHDMI(ZLjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setStereoDisplayMode(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setStereoDisplayMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setTVMode(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setTVMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setTVoutMode(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setTVoutMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
