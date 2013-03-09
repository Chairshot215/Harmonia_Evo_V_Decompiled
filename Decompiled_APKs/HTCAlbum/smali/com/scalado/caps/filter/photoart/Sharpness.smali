.class public final Lcom/scalado/caps/filter/photoart/Sharpness;
.super Lcom/scalado/caps/Filter;
.source "Sharpness.java"


# static fields
.field public static final MAX_LEVEL:I = 0x7

.field public static final MIN_LEVEL:I


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    .line 37
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeBeginSharpness(Lcom/scalado/caps/Decoder;)I

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->setHasActiveFilter(Z)V

    .line 39
    return-void
.end method

.method private native nativeBeginSharpness(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndSharpness(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetSharpness(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeBeginSharpness(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 74
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeSetSharpness(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 75
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeEndSharpness(Lcom/scalado/caps/Decoder;)I

    .line 76
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeEndSharpness(Lcom/scalado/caps/Decoder;)I

    .line 81
    return-void
.end method

.method public set(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/Sharpness;->nativeSetSharpness(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 57
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 58
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Sharpness;->level:I

    .line 59
    return-void
.end method
