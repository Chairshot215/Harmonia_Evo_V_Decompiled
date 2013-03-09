.class public Lcom/htc/wrap/android/os/HtcWrapIDisplayService;
.super Ljava/lang/Object;
.source "HtcWrapIDisplayService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Get3DMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
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

    .prologue
    .line 22
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

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IDisplayService;->IsHDMIEnable()Z

    move-result v0

    return v0
.end method

.method public static clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 1
    .parameter "appname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getIDisplayService()Landroid/os/IDisplayService;
    .locals 1

    .prologue
    .line 10
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

    .prologue
    .line 50
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IDisplayService;->getTVMode()I

    move-result v0

    return v0
.end method

.method public static set3DMode(ILjava/lang/String;)I
    .locals 1
    .parameter "Mode3D"
    .parameter "appname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHDMI(ZLjava/lang/String;)I
    .locals 1
    .parameter "enable"
    .parameter "appname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setStereoDisplayMode(ILjava/lang/String;)I
    .locals 1
    .parameter "ModeSD"
    .parameter "appname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setStereoDisplayMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setTVMode(ILjava/lang/String;)I
    .locals 1
    .parameter "ModeTV"
    .parameter "appname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setTVMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setTVoutMode(ILjava/lang/String;)I
    .locals 1
    .parameter "ModeTVout"
    .parameter "appname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->setTVoutMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "appname"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->getIDisplayService()Landroid/os/IDisplayService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
