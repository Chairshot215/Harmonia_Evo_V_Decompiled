.class public final Lcom/scalado/caps/filter/photoart/Negative;
.super Lcom/scalado/caps/Filter;
.source "Negative.java"


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 3
    .parameter "session"

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-direct {p0, p1, v2}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 21
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Negative;->nativeApplyNegative(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 22
    .local v0, error:I
    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 23
    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/photoart/Negative;->setHasActiveFilter(Z)V

    .line 24
    return-void
.end method

.method private native nativeApplyNegative(Lcom/scalado/caps/Decoder;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Negative;->nativeApplyNegative(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 31
    .local v0, error:I
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
