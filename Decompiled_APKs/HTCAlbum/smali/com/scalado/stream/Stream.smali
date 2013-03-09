.class public abstract Lcom/scalado/stream/Stream;
.super Lcom/scalado/caps/PeerBase;
.source "Stream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isReadable()Z
.end method

.method public abstract isWritable()Z
.end method
