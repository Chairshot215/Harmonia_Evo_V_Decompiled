.class Lcom/scalado/caps/speedview/Spmo;
.super Lcom/scalado/caps/PeerBase;
.source "Spmo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/speedview/Spmo;->nativeCreate()V

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

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Spmo;->nativeAddToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method copyToStream(Lcom/scalado/stream/Stream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Spmo;->nativeCopyToStream(Lcom/scalado/stream/Stream;)V

    return-void
.end method
