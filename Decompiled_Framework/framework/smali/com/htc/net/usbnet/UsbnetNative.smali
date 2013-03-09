.class public Lcom/htc/net/usbnet/UsbnetNative;
.super Ljava/lang/Object;
.source "UsbnetNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DoUsbnetDhcpRequest(Landroid/net/DhcpInfo;)Z
.end method

.method public static native GetUsbnetDhcpError()Ljava/lang/String;
.end method

.method public static native StartDhcpUsbnet()Z
.end method

.method public static native StopDhcpUsbnet()Z
.end method
