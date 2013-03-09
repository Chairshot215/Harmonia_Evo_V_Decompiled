.class public Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
