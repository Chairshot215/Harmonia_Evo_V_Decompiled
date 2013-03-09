.class public Lcom/scalado/base/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private denominator:I

.field private numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/scalado/base/Rational;->numerator:I

    .line 11
    iput v0, p0, Lcom/scalado/base/Rational;->denominator:I

    .line 20
    if-nez p2, :cond_0

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Denominator must not be zero!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput p1, p0, Lcom/scalado/base/Rational;->numerator:I

    .line 25
    iput p2, p0, Lcom/scalado/base/Rational;->denominator:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 62
    move-object v0, p1

    check-cast v0, Lcom/scalado/base/Rational;

    .line 64
    .local v0, that:Lcom/scalado/base/Rational;
    iget v1, p0, Lcom/scalado/base/Rational;->numerator:I

    iget v2, v0, Lcom/scalado/base/Rational;->numerator:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/scalado/base/Rational;->denominator:I

    iget v2, v0, Lcom/scalado/base/Rational;->denominator:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDenominator()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/scalado/base/Rational;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/scalado/base/Rational;->numerator:I

    return v0
.end method

.method public setDenominator(I)V
    .locals 0
    .parameter "denominator"

    .prologue
    .line 57
    iput p1, p0, Lcom/scalado/base/Rational;->denominator:I

    .line 58
    return-void
.end method

.method public setNumerator(I)V
    .locals 0
    .parameter "numerator"

    .prologue
    .line 41
    iput p1, p0, Lcom/scalado/base/Rational;->numerator:I

    .line 42
    return-void
.end method
