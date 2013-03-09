.class public final Lcom/scalado/caps/filter/photoart/Sepia;
.super Lcom/scalado/caps/Filter;
.source "Sepia.java"


# static fields
.field public static final MAX_LEVEL:I = 0x5

.field public static final MIN_LEVEL:I = 0x1


# instance fields
.field private sepiaLevel:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 34
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 36
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Sepia;->nativeBeginSepia(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 37
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Sepia;->setHasActiveFilter(Z)V

    .line 38
    return-void
.end method

.method private native nativeBeginSepia(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndSepia(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetSepia(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Sepia;->sepiaLevel:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Sepia;->nativeBeginSepia(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 75
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Sepia;->sepiaLevel:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Sepia;->nativeSetSepia(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 76
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Sepia;->nativeEndSepia(Lcom/scalado/caps/Decoder;)I

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

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Sepia;->nativeEndSepia(Lcom/scalado/caps/Decoder;)I

    .line 82
    return-void
.end method

.method public set(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v2, 0x1

    .line 50
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    if-lt p1, v2, :cond_1

    const/4 v1, 0x5

    if-le p1, v1, :cond_2

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal value of sepialevel"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/Sepia;->nativeSetSepia(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 58
    .local v0, error:I
    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 59
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Sepia;->sepiaLevel:I

    .line 60
    return-void
.end method
