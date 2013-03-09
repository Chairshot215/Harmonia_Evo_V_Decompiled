.class public abstract Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;
.source "ECFieldElement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract toBigInteger()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
