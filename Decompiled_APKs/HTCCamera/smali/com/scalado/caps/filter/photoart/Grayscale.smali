.class public final Lcom/scalado/caps/filter/photoart/Grayscale;
.super Lcom/scalado/caps/Filter;
.source "Grayscale.java"


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Grayscale;->nativeApplyGrayscale(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/photoart/Grayscale;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyGrayscale(Lcom/scalado/caps/Decoder;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Grayscale;->nativeApplyGrayscale(Lcom/scalado/caps/Decoder;)I

    move-result v0

    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method
