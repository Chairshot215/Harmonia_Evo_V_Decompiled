.class public Landroid/net/hotspot/HotspotNative;
.super Ljava/lang/Object;
.source "HotspotNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native stopEventWaiting()Z
.end method

.method public static native waitForEvent()Ljava/lang/String;
.end method
