.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient hash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "signerCertPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/security/CodeSigner;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/security/CodeSigner;

    iget-object v3, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    iget-object v4, v0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v3, v4}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v3, :cond_3

    iget-object v3, v0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    iget-object v2, v0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .locals 1

    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v1

    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/CodeSigner;->hash:I

    :cond_0
    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    return v0

    :cond_1
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v0}, Ljava/security/Timestamp;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CodeSigner ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v1, :cond_0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
