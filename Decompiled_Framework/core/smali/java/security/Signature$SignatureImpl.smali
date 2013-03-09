.class Ljava/security/Signature$SignatureImpl;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignatureImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/SignatureSpi;


# direct methods
.method public constructor <init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    #setter for: Ljava/security/Signature;->provider:Ljava/security/Provider;
    invoke-static {p0, p2}, Ljava/security/Signature;->access$002(Ljava/security/Signature;Ljava/security/Provider;)Ljava/security/Provider;

    iput-object p1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    instance-of v1, v1, Ljava/lang/Cloneable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v1}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SignatureSpi;

    new-instance v1, Ljava/security/Signature$SignatureImpl;

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v1}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v1
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected engineSign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method
