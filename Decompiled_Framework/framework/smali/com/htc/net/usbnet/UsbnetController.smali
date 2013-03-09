.class public Lcom/htc/net/usbnet/UsbnetController;
.super Ljava/lang/Object;
.source "UsbnetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/usbnet/UsbnetController$1;,
        Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;
    }
.end annotation


# static fields
.field public static final CURRENT_USBNET_ENABLED_STATE:Ljava/lang/String; = "curUsbnetEnabledState"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_NETWORK_STATE:Ljava/lang/String; = "newNetworkState"

.field public static final EXTRA_USBNET_MODE:Ljava/lang/String; = "UsbnetSuccess"

.field public static final EXTRA_USBNET_PHASE:Ljava/lang/String; = "UsbnetPhase"

.field private static final LOCAL_LOGD:Z = true

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.usbnet.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.usbnet.STATE_CHANGE"

.field public static final NETWORK_STATE_CHANGED_NOTIFY:Ljava/lang/String; = "com.htc.net.usbnet.STATE_NOTIFY"

.field public static final PICK_USBNET_NETWORK_ACTION:Ljava/lang/String; = "com.htc.net.usbnet.PICK_USBNET_NETWORK"

.field public static final PREVIOUS_USBNET_ENABLED_STATE:Ljava/lang/String; = "preUsbnetEnabledState"

.field public static final STATE_IPT_CONNECTED:I = 0x2

.field public static final STATE_IPT_CONNECTING:I = 0x1

.field public static final STATE_IPT_DISCONNECTED:I = 0x0

.field public static final STATE_IPT_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UsbnetController"

.field public static final USBNET_ENABLED_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.usbnet.USBNET_ENABLED_CHANGED"

.field public static final USBNET_ENABLED_STATE_DISABLED:I = 0x1

.field public static final USBNET_ENABLED_STATE_DISABLING:I = 0x0

.field public static final USBNET_ENABLED_STATE_ENABLED:I = 0x3

.field public static final USBNET_ENABLED_STATE_ENABLING:I = 0x2

.field public static final USBNET_ENABLED_STATE_UNKNOWN:I = 0x4

.field public static final USBNET_MODE_CHANGED_NOTIFY:Ljava/lang/String; = "com.htc.net.usbnet.MODE_NOTIFY"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/htc/net/usbnet/IUsbnetController;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/usbnet/IUsbnetController;Landroid/os/Handler;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    iput-object p2, p0, Lcom/htc/net/usbnet/UsbnetController;->mHandler:Landroid/os/Handler;

    const-string v0, "UsbnetController"

    const-string v1, "UsbnetController init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public UsbMiscControl_IPT(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v1, p1}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public UsbMiscControl_MTP(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v1, p1}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_MTP(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public createUsbnetLock(Ljava/lang/String;)Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;
    .locals 2

    new-instance v0, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/net/usbnet/UsbnetController$UsbnetLock;-><init>(Lcom/htc/net/usbnet/UsbnetController;Ljava/lang/String;Lcom/htc/net/usbnet/UsbnetController$1;)V

    return-object v0
.end method

.method public getConnectionInfo()Lcom/htc/net/usbnet/UsbnetInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v1}, Lcom/htc/net/usbnet/IUsbnetController;->getConnectionInfo()Lcom/htc/net/usbnet/UsbnetInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsbnetState()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v1}, Lcom/htc/net/usbnet/IUsbnetController;->getUsbnetState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isDeviceReady()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v1}, Lcom/htc/net/usbnet/IUsbnetController;->isDeviceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbnetEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetController;->getUsbnetState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUsbnetEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetController;->mService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v1, p1}, Lcom/htc/net/usbnet/IUsbnetController;->setUsbnetEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
