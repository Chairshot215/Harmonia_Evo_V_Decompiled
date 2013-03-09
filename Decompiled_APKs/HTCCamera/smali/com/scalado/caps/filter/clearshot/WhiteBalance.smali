.class public final Lcom/scalado/caps/filter/clearshot/WhiteBalance;
.super Lcom/scalado/caps/Filter;
.source "WhiteBalance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;
    }
.end annotation


# instance fields
.field private b:I

.field private g:I

.field private mode:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

.field private r:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x80

    invoke-direct {p0, p1, v2}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    sget-object v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->CLUSTER:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->mode:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    iput v1, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->r:I

    iput v1, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->g:I

    iput v1, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->b:I

    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyWhiteBalance(Lcom/scalado/caps/Decoder;IIII)I
.end method


# virtual methods
.method public getB()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->b:I

    return v0
.end method

.method public getG()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->g:I

    return v0
.end method

.method public getMode()Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->mode:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    return-object v0
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->r:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 7

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->mode:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    iget v2, v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->value:I

    iget v3, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->r:I

    iget v4, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->g:I

    iget v5, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->nativeApplyWhiteBalance(Lcom/scalado/caps/Decoder;IIII)I

    move-result v6

    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method

.method public final set(Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;III)V
    .locals 7

    const/16 v1, 0xff

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->MANUAL:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    if-ne p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v1, :cond_1

    if-ltz p4, :cond_1

    if-le p4, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter to set method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_3
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget v2, p1, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->value:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->nativeApplyWhiteBalance(Lcom/scalado/caps/Decoder;IIII)I

    move-result v6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->mode:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    iput p2, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->r:I

    iput p3, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->g:I

    iput p4, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance;->b:I

    return-void
.end method
