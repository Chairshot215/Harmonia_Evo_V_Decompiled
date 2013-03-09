.class public abstract Lcom/scalado/caps/Decoder;
.super Lcom/scalado/caps/PeerBase;
.source "Decoder.java"


# instance fields
.field private changed:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return-void
.end method

.method private native nativeBlendBackgroundColor(Z)I
.end method

.method private native nativeGetDimensions(Lcom/scalado/base/Size;)I
.end method

.method private native nativeRemoveAllFilters()I
.end method

.method private native nativeRemoveLastFilter()I
.end method

.method private native nativeSetBackgroundColor(Lcom/scalado/base/Color;)I
.end method

.method private native nativeSetPrefetchEnabled(Z)I
.end method

.method private native nativeSetSamplingMode(I)I
.end method


# virtual methods
.method protected blendBackgroundColor(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeBlendBackgroundColor(Z)I

    move-result v0

    return-void
.end method

.method protected final doSetPrefetchEnabled(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetPrefetchEnabled(Z)I

    move-result v0

    return-void
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v2, v2}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/scalado/caps/Decoder;->nativeGetDimensions(Lcom/scalado/base/Size;)I

    move-result v1

    return-object v0
.end method

.method public final hasChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return v0
.end method

.method protected final markChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return-void
.end method

.method removeAllFilters()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveAllFilters()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method removeLastFilter()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveLastFilter()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetBackgroundColor(Lcom/scalado/base/Color;)I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 2

    invoke-virtual {p1}, Lcom/scalado/caps/SamplingMode;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/Decoder;->nativeSetSamplingMode(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method
