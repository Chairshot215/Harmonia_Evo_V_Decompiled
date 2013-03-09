.class public final Lcom/scalado/caps/filter/photoart/Warp;
.super Lcom/scalado/caps/Filter;
.source "Warp.java"


# instance fields
.field warptableBuffer:Lcom/scalado/base/Buffer;

.field warptableFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 15
    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 27
    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->setHasActiveFilter(Z)V

    .line 28
    return-void
.end method

.method private native nativeApplyWarp(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)I
.end method

.method private native nativeApplyWarp(Lcom/scalado/caps/Decoder;Ljava/lang/String;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)I

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither filename nor buffer set in Warp filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public set(Lcom/scalado/stream/BufferStream;)V
    .locals 3
    .parameter "warpTable"

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 44
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)I

    move-result v0

    .line 53
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 54
    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public set(Lcom/scalado/stream/FileStream;)V
    .locals 3
    .parameter "warpTable"

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 72
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    .line 83
    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    .line 84
    return-void
.end method
