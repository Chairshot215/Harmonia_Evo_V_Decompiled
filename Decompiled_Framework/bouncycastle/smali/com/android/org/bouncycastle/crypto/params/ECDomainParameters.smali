.class public Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field h:Ljava/math/BigInteger;

.field n:Ljava/math/BigInteger;

.field seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    sget-object v0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-void
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-object v0
.end method
