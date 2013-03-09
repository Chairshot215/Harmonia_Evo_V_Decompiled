.class public final Lcom/scalado/caps/CAPS;
.super Lcom/scalado/caps/PeerBase;
.source "CAPS.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 12
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/scalado/caps/CAPS;->nativeGetCapsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetCapsVersion()Ljava/lang/String;
.end method
