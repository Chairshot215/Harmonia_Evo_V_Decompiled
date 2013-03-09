.class public Lcom/htc/wrap/android/os/HtcWrapIPowerManager;
.super Ljava/lang/Object;
.source "HtcWrapIPowerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIPowerManagerService()Landroid/os/IPowerManager;
    .locals 1

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;->getIPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    return-void
.end method

.method public userActivityWithScreenDelay(JZIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;->getIPowerManagerService()Landroid/os/IPowerManager;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->userActivityWithScreenDelay(JZIII)V

    return-void
.end method
