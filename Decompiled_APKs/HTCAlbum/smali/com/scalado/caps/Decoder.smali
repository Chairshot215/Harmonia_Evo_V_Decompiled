.class public abstract Lcom/scalado/caps/Decoder;
.super Lcom/scalado/caps/PeerBase;
.source "Decoder.java"


# instance fields
.field private changed:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    .line 24
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
    .parameter "blend"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeBlendBackgroundColor(Z)I

    move-result v0

    .line 105
    .local v0, error:I
    return-void
.end method

.method protected final doSetPrefetchEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetPrefetchEnabled(Z)I

    move-result v0

    .line 41
    .local v0, error:I
    return-void
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, v2, v2}, Lcom/scalado/base/Size;-><init>(II)V

    .line 52
    .local v0, dimensions:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/caps/Decoder;->nativeGetDimensions(Lcom/scalado/base/Size;)I

    move-result v1

    .line 53
    .local v1, error:I
    return-object v0
.end method

.method public final hasChanged()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    return v0
.end method

.method protected final markChanged()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Decoder;->changed:Z

    .line 87
    return-void
.end method

.method removeAllFilters()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveAllFilters()I

    move-result v0

    .line 98
    .local v0, error:I
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 99
    return-void
.end method

.method removeLastFilter()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;->nativeRemoveLastFilter()I

    move-result v0

    .line 92
    .local v0, error:I
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 93
    return-void
.end method

.method setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/scalado/caps/Decoder;->nativeSetBackgroundColor(Lcom/scalado/base/Color;)I

    move-result v0

    .line 82
    .local v0, error:I
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 83
    return-void
.end method

.method setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/scalado/caps/SamplingMode;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/Decoder;->nativeSetSamplingMode(I)I

    move-result v0

    .line 110
    .local v0, error:I
    invoke-virtual {p0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 111
    return-void
.end method
