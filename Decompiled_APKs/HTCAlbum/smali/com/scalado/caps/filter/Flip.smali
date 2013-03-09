.class public final Lcom/scalado/caps/filter/Flip;
.super Lcom/scalado/caps/Filter;
.source "Flip.java"


# static fields
.field private static final HORIZONTAL:I = 0x2

.field private static final VERTICAL:I = 0x1


# instance fields
.field private horizontal:Z

.field private vertical:Z


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 38
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 40
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/Flip;->nativeBeginFlip(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 41
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/Flip;->setHasActiveFilter(Z)V

    .line 42
    return-void
.end method

.method private native nativeBeginFlip(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndFlip(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetFlip(Lcom/scalado/caps/Decoder;I)I
.end method

.method private translateFlipToInt(ZZ)I
    .locals 1
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, value:I
    if-eqz p1, :cond_0

    .line 87
    or-int/lit8 v0, v0, 0x2

    .line 89
    :cond_0
    if-eqz p2, :cond_1

    .line 90
    or-int/lit8 v0, v0, 0x1

    .line 92
    :cond_1
    return v0
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Flip;->nativeBeginFlip(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 75
    .local v0, error:I
    iget-boolean v1, p0, Lcom/scalado/caps/filter/Flip;->horizontal:Z

    iget-boolean v2, p0, Lcom/scalado/caps/filter/Flip;->vertical:Z

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/Flip;->translateFlipToInt(ZZ)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/Flip;->nativeSetFlip(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 76
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/Flip;->nativeEndFlip(Lcom/scalado/caps/Decoder;)I

    .line 77
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/Flip;->nativeEndFlip(Lcom/scalado/caps/Decoder;)I

    .line 82
    return-void
.end method

.method public set(ZZ)V
    .locals 3
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 60
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/filter/Flip;->translateFlipToInt(ZZ)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/Flip;->nativeSetFlip(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 66
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 67
    iput-boolean p2, p0, Lcom/scalado/caps/filter/Flip;->vertical:Z

    .line 68
    iput-boolean p1, p0, Lcom/scalado/caps/filter/Flip;->horizontal:Z

    .line 69
    return-void
.end method
