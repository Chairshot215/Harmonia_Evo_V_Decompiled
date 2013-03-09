.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    }
.end annotation


# instance fields
.field a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method
