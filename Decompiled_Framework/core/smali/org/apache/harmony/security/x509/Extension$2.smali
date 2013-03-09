.class final Lorg/apache/harmony/security/x509/Extension$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;->setDefault(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    aget-object v0, v9, v1

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, [B

    move-object v4, v0

    check-cast v4, [B

    const/4 v6, 0x0

    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lorg/apache/harmony/security/x509/KeyUsage;

    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/harmony/security/x509/Extension;

    aget-object v1, v9, v1

    check-cast v1, [I

    check-cast v1, [I

    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension$1;)V

    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lorg/apache/harmony/security/x509/BasicConstraints;

    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/Extension;->extnID:[I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$100(Lorg/apache/harmony/security/x509/Extension;)[I

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/Extension;->critical:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$200(Lorg/apache/harmony/security/x509/Extension;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, p2, v2

    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/Extension;->extnValue:[B
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$300(Lorg/apache/harmony/security/x509/Extension;)[B

    move-result-object v2

    aput-object v2, p2, v1

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
