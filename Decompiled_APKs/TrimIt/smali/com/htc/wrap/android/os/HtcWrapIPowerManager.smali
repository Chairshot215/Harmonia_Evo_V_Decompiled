.class public Lcom/htc/wrap/android/os/HtcWrapIPowerManager;
.super Ljava/lang/Object;
.source "HtcWrapIPowerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIPowerManagerService()Landroid/os/IPowerManager;
    .locals 1

    .prologue
    .line 11
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setBacklightBrightness(I)V
    .locals 1
    .parameter "brightness"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;->getIPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 23
    return-void
.end method

.method public timeSinceScreenOn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;->getIPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v0

    return-wide v0
.end method
