.class public Ljava/security/cert/PKIXCertPathBuilderResult;
.super Ljava/security/cert/PKIXCertPathValidatorResult;
.source "PKIXCertPathBuilderResult.java"

# interfaces
.implements Ljava/security/cert/CertPathBuilderResult;


# instance fields
.field private final certPath:Ljava/security/cert/CertPath;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    iput-object p1, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    iget-object v0, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/security/cert/PKIXCertPathValidatorResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n Certification Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
