.class public final Lcom/scalado/caps/filter/photoart/Despeckle;
.super Lcom/scalado/caps/Filter;
.source "Despeckle.java"


# static fields
.field public static final MAX_LEVEL:I = 0x8

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 36
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 37
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Despeckle;->nativeBeginDespeckle(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 38
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Despeckle;->setHasActiveFilter(Z)V

    .line 39
    return-void
.end method

.method private native nativeBeginDespeckle(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndDespeckle(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetDespeckle(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Despeckle;->level:I

    int-to-float v0, v0

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Despeckle;->nativeBeginDespeckle(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 70
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Despeckle;->level:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Despeckle;->nativeSetDespeckle(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 71
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Despeckle;->nativeEndDespeckle(Lcom/scalado/caps/Decoder;)I

    .line 72
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Despeckle;->nativeEndDespeckle(Lcom/scalado/caps/Decoder;)I

    .line 77
    return-void
.end method

.method public set(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/Despeckle;->nativeSetDespeckle(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 55
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 56
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Despeckle;->level:I

    .line 58
    return-void
.end method
