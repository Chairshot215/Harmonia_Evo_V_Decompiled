.class public Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private certificateIssuer:Ljavax/security/auth/x500/X500Principal;

.field private hashValue:I

.field private isHashValueSet:Z

.field private isIndirect:Z

.field private previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method private loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 7

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "      userCertificate: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "       revocationDate: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "       certificateIssuer: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "   crlEntryExtensions:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    const-string v9, "                       critical("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;-><init>(Lcom/android/org/bouncycastle/asn1/DEREnumerated;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " value = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "*****"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Certificate issuer: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, v9}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " value = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
