.class public Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;
.source "NISTNamedCurves.java"


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    const-string v0, "B-571"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "B-409"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "B-283"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "B-233"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "B-163"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "P-521"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "P-384"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "P-256"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "P-224"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    const-string v0, "P-192"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 3

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 2

    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
