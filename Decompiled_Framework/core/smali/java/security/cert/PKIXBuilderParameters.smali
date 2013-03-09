.class public Ljava/security/cert/PKIXBuilderParameters;
.super Ljava/security/cert/PKIXParameters;
.source "PKIXBuilderParameters.java"


# instance fields
.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    invoke-super {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    invoke-super {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    return-void
.end method


# virtual methods
.method public getMaxPathLength()I
    .locals 1

    iget v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public setMaxPathLength(I)V
    .locals 2

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "maxPathLength < -1"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/security/cert/PKIXParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Max Path Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
