.class public Lcom/scalado/caps/stereo/Stereo;
.super Lcom/scalado/caps/PeerBase;
.source "Stereo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/scalado/caps/stereo/Stereo;->nativeCreate()I

    .line 15
    return-void
.end method

.method private native nativeCreate()I
.end method

.method private native nativeFinalizeJps(Lcom/scalado/stream/Stream;)I
.end method

.method private native nativeSetLeftEyeSession(Lcom/scalado/caps/Session;)I
.end method

.method private native nativeSetRightEyeSession(Lcom/scalado/caps/Session;)I
.end method


# virtual methods
.method public finalizeJps(Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeFinalizeJps(Lcom/scalado/stream/Stream;)I

    .line 42
    return-void
.end method

.method public setLeftEyeSession(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeSetLeftEyeSession(Lcom/scalado/caps/Session;)I

    .line 24
    return-void
.end method

.method public setRightEyeSession(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeSetRightEyeSession(Lcom/scalado/caps/Session;)I

    .line 33
    return-void
.end method
