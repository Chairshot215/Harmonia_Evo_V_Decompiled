.class public final Lcom/scalado/caps/filter/clearshot/AutoEnhance;
.super Lcom/scalado/caps/Filter;
.source "AutoEnhance.java"


# instance fields
.field private parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBeginAutoEnhance(Lcom/scalado/caps/Decoder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->setHasActiveFilter(Z)V

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

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    if-nez v0, :cond_0

    new-instance v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    :goto_0
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v0

    return-object v0

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

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeBeginAutoEnhance(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEndAutoEnhance(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeEndAutoEnhance(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->nativeSetAutoEnhance(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    return-void
.end method
