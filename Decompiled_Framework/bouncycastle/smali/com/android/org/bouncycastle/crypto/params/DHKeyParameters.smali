.class public Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
