.class public Lcom/scalado/base/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private denominator:I

.field private numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/base/Rational;->numerator:I

    iput v0, p0, Lcom/scalado/base/Rational;->denominator:I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Denominator must not be zero!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/base/Rational;->numerator:I

    iput p2, p0, Lcom/scalado/base/Rational;->denominator:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/scalado/base/Rational;

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

    iget v0, p0, Lcom/scalado/base/Rational;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    iget v0, p0, Lcom/scalado/base/Rational;->numerator:I

    return v0
.end method

.method public setDenominator(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Rational;->denominator:I

    return-void
.end method

.method public setNumerator(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/base/Rational;->numerator:I

    return-void
.end method
