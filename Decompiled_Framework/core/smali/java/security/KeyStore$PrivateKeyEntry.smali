.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/Certificate;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .locals 10

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "privateKey == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "chain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    array-length v7, p2

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "chain.length == 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    aget-object v7, p2, v9

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, v9

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Algorithm of private key does not match algorithm of public key in end certificate of entry (with index number: 0)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    const/4 v2, 0x1

    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_5

    aget-object v7, p2, v2

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Certificates from the given chain have different types"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    move-object v0, p2

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_6

    aget-object v1, v0, v3

    instance-of v7, v1, Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_7

    const/4 v4, 0x0

    :cond_6
    if-eqz v4, :cond_8

    array-length v7, p2

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    :goto_2
    iget-object v7, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v8, p2

    invoke-static {p2, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    return-void

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    array-length v7, p2

    new-array v7, v7, [Ljava/security/cert/Certificate;

    iput-object v7, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_2
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 2

    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrivateKeyEntry: number of elements in certificate chain is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
