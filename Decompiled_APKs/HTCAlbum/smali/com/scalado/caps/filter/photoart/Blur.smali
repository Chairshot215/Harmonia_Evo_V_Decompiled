.class public final Lcom/scalado/caps/filter/photoart/Blur;
.super Lcom/scalado/caps/Filter;
.source "Blur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Blur$RegionMode;
    }
.end annotation


# static fields
.field public static final MAX_LEVEL:I = 0x8

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private level:I

.field private mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

.field private region:Lcom/scalado/base/Rect;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 67
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 69
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeBeginBlur(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 70
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Blur;->setHasActiveFilter(Z)V

    .line 71
    return-void
.end method

.method private native nativeBeginBlur(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndBlur(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetBlur(Lcom/scalado/caps/Decoder;ILcom/scalado/base/Rect;)I
.end method

.method private native nativeSetBlurRegionMode(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->level:I

    return v0
.end method

.method public getRegion()Lcom/scalado/base/Rect;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->region:Lcom/scalado/base/Rect;

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->clone()Lcom/scalado/base/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRegionMode()Lcom/scalado/caps/filter/photoart/Blur$RegionMode;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Blur;->mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->clone()Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeBeginBlur(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 143
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Blur;->level:I

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Blur;->region:Lcom/scalado/base/Rect;

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlur(Lcom/scalado/caps/Decoder;ILcom/scalado/base/Rect;)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Blur;->mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    iget v1, v1, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->value:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlurRegionMode(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 145
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeEndBlur(Lcom/scalado/caps/Decoder;)I

    .line 146
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Blur;->nativeEndBlur(Lcom/scalado/caps/Decoder;)I

    .line 151
    return-void
.end method

.method public set(ILcom/scalado/base/Rect;)V
    .locals 3
    .parameter "level"
    .parameter "region"

    .prologue
    .line 86
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlur(Lcom/scalado/caps/Decoder;ILcom/scalado/base/Rect;)I

    move-result v0

    .line 92
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 93
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Blur;->level:I

    .line 94
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Blur;->region:Lcom/scalado/base/Rect;

    .line 95
    return-void
.end method

.method public setRegionMode(Lcom/scalado/caps/filter/photoart/Blur$RegionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget v1, p1, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->value:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Blur;->nativeSetBlurRegionMode(Lcom/scalado/caps/Decoder;I)I

    .line 127
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Blur;->mode:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    .line 128
    return-void
.end method
