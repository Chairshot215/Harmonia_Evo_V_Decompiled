.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field private attributes:Ljava/util/jar/Attributes;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private isFactoryChecked:Z

.field parentJar:Ljava/util/jar/JarFile;

.field signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    iget-object v0, p1, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iget-object v0, p1, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    iget-object v0, p1, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    return-void
.end method

.method private addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    iput-boolean v2, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Ljava/util/jar/JarEntry;->isFactoryChecked:Z

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Ljava/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    new-instance v1, Ljava/security/CodeSigner;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getCodeSigners([Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;
    .locals 11

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v6, 0x0

    new-instance v5, Ljava/util/ArrayList;

    array-length v10, p1

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    instance-of v10, v2, Ljava/security/cert/X509Certificate;

    if-nez v10, :cond_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v2

    check-cast v9, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_3

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0, v1, v5}, Ljava/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-direct {p0, v1, v5}, Ljava/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/security/CodeSigner;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    goto :goto_0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    iget-object v0, v2, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarVerifier;->getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/jar/JarEntry;->getCodeSigners([Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/CodeSigner;

    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method setAttributes(Ljava/util/jar/Attributes;)V
    .locals 0

    iput-object p1, p0, Ljava/util/jar/JarEntry;->attributes:Ljava/util/jar/Attributes;

    return-void
.end method
