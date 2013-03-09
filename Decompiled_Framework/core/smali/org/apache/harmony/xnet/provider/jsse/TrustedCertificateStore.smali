.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;
    }
.end annotation


# static fields
.field private static final CA_CERTS_DIR_ADDED:Ljava/io/File; = null

.field private static final CA_CERTS_DIR_DELETED:Ljava/io/File; = null

.field private static final CA_CERTS_DIR_SYSTEM:Ljava/io/File; = null

.field private static final CERT_FACTORY:Ljava/security/cert/CertificateFactory; = null

.field private static final PREFIX_SYSTEM:Ljava/lang/String; = "system:"

.field private static final PREFIX_USER:Ljava/lang/String; = "user:"


# instance fields
.field private final addedDir:Ljava/io/File;

.field private final deletedDir:Ljava/io/File;

.field private final systemDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v3, "ANDROID_ROOT"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ANDROID_DATA"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/etc/security/cacerts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CA_CERTS_DIR_SYSTEM:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/keychain/cacerts-added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CA_CERTS_DIR_ADDED:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/keychain/cacerts-removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CA_CERTS_DIR_DELETED:Ljava/io/File;

    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CA_CERTS_DIR_SYSTEM:Ljava/io/File;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CA_CERTS_DIR_ADDED:Ljava/io/File;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CA_CERTS_DIR_DELETED:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    return-void
.end method

.method private addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v1, v3

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private containsAlias(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private fileForAlias(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-string v3, "system:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-string v3, "user:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/lang/Boolean;

    if-ne p4, v4, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const-class v4, Ljava/io/File;

    if-eq p4, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p3, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-class v4, Ljava/security/cert/X509Certificate;

    if-ne p4, v4, :cond_5

    move-object v1, v0

    goto :goto_1

    :cond_5
    const-class v4, Ljava/lang/Boolean;

    if-ne p4, v4, :cond_6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    const-class v4, Ljava/io/File;

    if-eq p4, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .locals 3

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$1;

    invoke-direct {v0, p0, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-class v2, Ljava/io/File;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    return-object v1
.end method

.method private hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static final isSystem(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "system:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isTombstone(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUser(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "user:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private removeUnnecessaryTombstones(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_1
    const-string v4, "user:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v2, v5}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, -0x1

    :cond_4
    if-ltz v3, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v4, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {p1, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    return-void

    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public aliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "user:"

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    const-string v1, "system:"

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public allSystemAliases()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-object v6

    :cond_1
    move-object v1, v3

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public containsAlias(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateEntry(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->removeUnnecessaryTombstones(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 6

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v0, v1, v5}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v0, v1, v5}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public installCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cert == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    goto :goto_0
.end method

.method public isTrustAnchor(Ljava/security/cert/X509Certificate;)Z
    .locals 7

    const/4 v4, 0x1

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    invoke-direct {p0, v3, v5, v0, v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const-class v6, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v3, v5, v0, v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public userAliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "user:"

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method
