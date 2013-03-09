.class public Lcom/htc/net/usbnet/UsbnetMonitor;
.super Ljava/lang/Object;
.source "UsbnetMonitor.java"


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbnetMonitor"


# instance fields
.field private final mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/net/usbnet/UsbnetStateTracker;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UsbnetMonitor"

    const-string v1, "UsbnetMonitor init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetMonitor;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    return-void
.end method


# virtual methods
.method public getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetMonitor;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    return-object v0
.end method
