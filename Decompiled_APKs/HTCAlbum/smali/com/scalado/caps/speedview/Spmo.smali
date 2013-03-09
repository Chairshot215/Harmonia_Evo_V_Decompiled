.class Lcom/scalado/caps/speedview/Spmo;
.super Lcom/scalado/caps/PeerBase;
.source "Spmo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/scalado/caps/speedview/Spmo;->nativeCreate()V

    .line 16
    return-void
.end method

.method private native nativeAddToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeCopyToStream(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeCreate()V
.end method


# virtual methods
.method addToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Spmo;->nativeAddToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    .line 24
    return-void
.end method

.method copyToStream(Lcom/scalado/stream/Stream;)V
    .locals 0
    .parameter "spmoStream"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Spmo;->nativeCopyToStream(Lcom/scalado/stream/Stream;)V

    .line 20
    return-void
.end method
