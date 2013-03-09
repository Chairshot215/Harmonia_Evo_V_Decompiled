.class public Lcom/android/internal/telephony/HtcSimLock;
.super Ljava/lang/Object;
.source "HtcSimLock.java"


# static fields
.field public static final NETWORK_LOCK_NETWORK:I = 0x1

.field public static final NETWORK_LOCK_NETWORK_SUBSET:I = 0x2

.field public static final NETWORK_LOCK_SERVICE_CORPORATE:I = 0x8

.field public static final NETWORK_LOCK_SERVICE_IMSI:I = 0x10

.field public static final NETWORK_LOCK_SERVICE_PROVIDER:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android_simlock"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getSubsidyLock()I
.end method

.method public static native setSubsidyLock(ILjava/lang/String;)I
.end method
