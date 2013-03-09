.class Lcom/android/certinstaller/CredentialHelper;
.super Ljava/lang/Object;
.source "CredentialHelper.java"


# static fields
.field private static final CERTS_KEY:Ljava/lang/String; = "crts"

.field static final CERT_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DATA_KEY:Ljava/lang/String; = "data"

.field private static final TAG:Ljava/lang/String; = "CredentialHelper"


# instance fields
.field private mBundle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mWapiAsCert:[B

.field private mWapiUserCert:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 66
    const-string v5, ""

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, name:Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 86
    if-eqz v4, :cond_1

    .line 87
    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 90
    :cond_1
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# extras: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    .local v1, bytes:[B
    const-string v6, "CredentialHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_2

    const/4 v5, -0x1

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_2
    array-length v5, v1

    goto :goto_2

    .line 96
    .end local v1           #bytes:[B
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    const-string v5, "CERT"

    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/certinstaller/CredentialHelper;->parseCert([B)V

    goto :goto_0
.end method

.method private extractPkcs12Internal(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    const-string v5, "PKCS12"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 385
    .local v3, keystore:Ljava/security/KeyStore;
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 386
    .local v4, passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "PKCS12"

    invoke-virtual {p0, v6}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 389
    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 390
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    const/4 v5, 0x0

    .line 404
    :goto_0
    return v5

    .line 394
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    .line 397
    .local v2, entry:Ljava/security/KeyStore$Entry;
    const-string v5, "CredentialHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extracted alias = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    instance-of v5, v2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v5, :cond_0

    .line 400
    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 401
    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v2           #entry:Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CredentialHelper;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z

    move-result v5

    goto :goto_0

    .line 404
    .end local v0           #alias:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .locals 10
    .parameter "entry"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v7

    iput-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    .line 409
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 411
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 412
    .local v4, certs:[Ljava/security/cert/Certificate;
    const-string v7, "CredentialHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# certs extracted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    .line 414
    move-object v1, v4

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 415
    .local v2, c:Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 416
    .local v3, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v3}, Lcom/android/certinstaller/CredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 417
    iget-object v7, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 420
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    :cond_1
    const-string v7, "CredentialHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# ca certs extracted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    .line 408
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v4           #certs:[Ljava/security/cert/Certificate;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .parameter "cert"

    .prologue
    const/4 v5, 0x0

    .line 206
    :try_start_0
    const-string v6, "2.5.29.19"

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 207
    .local v0, asn1EncodedBytes:[B
    if-nez v0, :cond_0

    .line 217
    .end local v0           #asn1EncodedBytes:[B
    :goto_0
    return v5

    .line 210
    .restart local v0       #asn1EncodedBytes:[B
    :cond_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 212
    .local v1, derOctetString:Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 213
    .local v3, octets:[B
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 215
    .local v4, sequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 216
    .end local v0           #asn1EncodedBytes:[B
    .end local v1           #derOctetString:Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3           #octets:[B
    .end local v4           #sequence:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    .line 217
    .local v2, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private isWapiAs(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1.2.156.11235."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, issuerName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, subjectName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    const/4 v3, 0x1

    .line 182
    .end local v1           #issuerName:Ljava/lang/String;
    .end local v2           #subjectName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isWapiUser(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    .line 188
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1.2.156.11235."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, issuerName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, subjectName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 193
    const/4 v3, 0x1

    .line 198
    .end local v1           #issuerName:Ljava/lang/String;
    .end local v2           #subjectName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private parseCert([B)V
    .locals 6
    .parameter "bytes"

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 145
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 149
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isWapiAs(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const-string v3, "CredentialHelper"

    const-string v4, "got a WAPI AS cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v3, "CredentialHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseCert(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v2           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isWapiUser(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    const-string v3, "CredentialHelper"

    const-string v4, "got a WAPI user cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    const-string v3, "CredentialHelper"

    const-string v4, "got a CA cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_3
    const-string v3, "CredentialHelper"

    const-string v4, "got a user cert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method containsAnyRawData()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createSystemInstallIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 317
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.credentials.INSTALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.CredentialStorage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :try_start_0
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_0

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_1

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 330
    :cond_1
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 331
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 333
    .local v0, caCerts:[Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 337
    .end local v0           #caCerts:[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v3, :cond_3

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 341
    :cond_3
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v3, :cond_4

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_4
    return-object v2

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method extractPkcs12(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    .line 374
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CredentialHelper;->extractPkcs12Internal(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 377
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CredentialHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractPkcs12(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getData(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v1, "<br>"

    .line 284
    .local v1, newline:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v3, :cond_0

    .line 285
    const v3, 0x7f060002

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v3, :cond_1

    .line 288
    const v3, 0x7f060003

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_2

    .line 292
    const v3, 0x7f06000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_3

    .line 295
    const v3, 0x7f06000f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3
    iget-object v3, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 298
    .local v0, n:I
    if-lez v0, :cond_4

    .line 299
    if-ne v0, v4, :cond_5

    .line 300
    const v3, 0x7f060010

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_4
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 302
    :cond_5
    const v3, 0x7f060011

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getUserCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method hasAnyForSystemInstall()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiAsCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiUserCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/certinstaller/CredentialHelper;->hasCaCerts()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasCaCerts()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasKeyPair()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPkcs12KeyStore()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKCS12"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasUserCertificate()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasWapiAsCertificate()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiAsCert:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasWapiUserCertificate()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mWapiUserCert:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method installCaCertsToKeyChain(Landroid/security/IKeyChainService;)Z
    .locals 7
    .parameter "keyChainService"

    .prologue
    .line 353
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 354
    .local v1, caCert:Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 356
    .local v0, bytes:[B
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 362
    :try_start_1
    invoke-interface {p1, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "CredentialHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installCaCertsToKeyChain(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v4, 0x0

    .line 369
    .end local v0           #bytes:[B
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #e:Landroid/os/RemoteException;
    :goto_1
    return v4

    .line 357
    .restart local v0       #bytes:[B
    .restart local v1       #caCert:Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v2

    .line 358
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 369
    .end local v0           #bytes:[B
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method onRestoreStates(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedStates"

    .prologue
    .line 121
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    .line 122
    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 123
    const-string v4, "USRPKEY_"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 128
    :cond_0
    const-string v4, "crts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 129
    .local v2, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 130
    .local v1, cert:[B
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CredentialHelper;->parseCert([B)V

    goto :goto_0

    .line 132
    .end local v1           #cert:[B
    :cond_1
    return-void
.end method

.method declared-synchronized onSaveStates(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outStates"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    const-string v4, "data"

    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    const-string v4, "name"

    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "USRPKEY_"

    iget-object v5, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 107
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v1, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/android/certinstaller/CredentialHelper;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 112
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    :try_start_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 114
    .restart local v1       #certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string v4, "crts"

    invoke-static {v1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    monitor-exit p0

    return-void
.end method

.method putPkcs12Data([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/certinstaller/CredentialHelper;->mBundle:Ljava/util/HashMap;

    const-string v1, "PKCS12"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/certinstaller/CredentialHelper;->mName:Ljava/lang/String;

    .line 310
    return-void
.end method

.method setPrivateKey([B)V
    .locals 3
    .parameter "bytes"

    .prologue
    .line 258
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 259
    .local v1, keyFactory:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/certinstaller/CredentialHelper;->mUserKey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    return-void

    .line 260
    .end local v1           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 262
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
