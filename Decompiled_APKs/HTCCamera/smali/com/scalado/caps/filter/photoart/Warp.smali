.class public final Lcom/scalado/caps/filter/photoart/Warp;
.super Lcom/scalado/caps/Filter;
.source "Warp.java"


# instance fields
.field warptableBuffer:Lcom/scalado/base/Buffer;

.field warptableFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyWarp(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)I
.end method

.method private native nativeApplyWarp(Lcom/scalado/caps/Decoder;Ljava/lang/String;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither filename nor buffer set in Warp filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method

.method public set(Lcom/scalado/stream/BufferStream;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    return-void
.end method

.method public set(Lcom/scalado/stream/FileStream;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarp(Lcom/scalado/caps/Decoder;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    return-void
.end method
