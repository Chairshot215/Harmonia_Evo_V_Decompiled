.class public final Lcom/scalado/caps/filter/photoart/FrostedGlass;
.super Lcom/scalado/caps/Filter;
.source "FrostedGlass.java"


# static fields
.field public static final MAX_LEVEL:I = 0x9

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->nativeBeginFrostedGlass(Lcom/scalado/caps/Decoder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginFrostedGlass(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndFrostedGlass(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetFrostedGlass(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public get()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/FrostedGlass;->level:I

    int-to-float v0, v0

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->nativeBeginFrostedGlass(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/photoart/FrostedGlass;->level:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->nativeSetFrostedGlass(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->nativeEndFrostedGlass(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->nativeEndFrostedGlass(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/FrostedGlass;->nativeSetFrostedGlass(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/FrostedGlass;->level:I

    return-void
.end method
