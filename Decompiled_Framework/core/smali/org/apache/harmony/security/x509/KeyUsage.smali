.class public final Lorg/apache/harmony/security/x509/KeyUsage;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "KeyUsage.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

.field private static final USAGES:[Ljava/lang/String;


# instance fields
.field private final keyUsage:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "digitalSignature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nonRepudiation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "keyEncipherment"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dataEncipherment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "keyAgreement"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "keyCertSign"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cRLSign"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "encipherOnly"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "decipherOnly"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->USAGES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;

    invoke-direct {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    sget-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KeyUsage [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/security/x509/KeyUsage;->USAGES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/KeyUsage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/KeyUsage;->keyUsage:[Z

    return-object v0
.end method
