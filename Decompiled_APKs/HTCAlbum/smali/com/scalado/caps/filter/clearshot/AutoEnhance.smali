.class public final Lcom/scalado/caps/filter/clearshot/AutoEnhance;
.super Lcom/scalado/caps/Filter;
.source "AutoEnhance.java"


# instance fields
.field private parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 28
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    .line 30
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBeginAutoEnhance(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 31
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->setHasActiveFilter(Z)V

    .line 32
    return-void
.end method

.method private native nativeBeginAutoEnhance(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndAutoEnhance(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeGetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I
.end method

.method private native nativeSetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I
.end method


# virtual methods
.method public final get()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeGetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I

    goto :goto_0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBeginAutoEnhance(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 83
    .local v0, error:I
    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I

    move-result v0

    .line 84
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEndAutoEnhance(Lcom/scalado/caps/Decoder;)I

    .line 85
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEndAutoEnhance(Lcom/scalado/caps/Decoder;)I

    .line 90
    return-void
.end method

.method public set(Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 46
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I

    move-result v0

    .line 55
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 56
    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    .line 57
    return-void
.end method
