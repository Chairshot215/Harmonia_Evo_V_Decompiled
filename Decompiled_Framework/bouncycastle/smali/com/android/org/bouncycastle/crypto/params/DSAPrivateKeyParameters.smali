.class public Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPrivateKeyParameters.java"


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method
