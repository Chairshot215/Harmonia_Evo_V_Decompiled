.class public Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPublicKeyParameters.java"


# instance fields
.field Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
