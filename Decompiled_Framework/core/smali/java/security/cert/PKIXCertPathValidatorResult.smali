.class public Ljava/security/cert/PKIXCertPathValidatorResult;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorResult.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorResult;


# instance fields
.field private final policyTree:Ljava/security/cert/PolicyNode;

.field private final subjectPublicKey:Ljava/security/PublicKey;

.field private final trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object p2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    iput-object p3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustAnchor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subjectPublicKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": [\n Trust Anchor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Policy Tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    if-nez v1, :cond_0

    const-string v1, "no valid policy tree\n"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Subject Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
