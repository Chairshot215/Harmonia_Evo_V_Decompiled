.class final Lorg/apache/harmony/security/x509/EDIPartyName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EDIPartyName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/EDIPartyName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/EDIPartyName$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    new-instance v3, Lorg/apache/harmony/security/x509/EDIPartyName;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/harmony/security/x509/EDIPartyName;-><init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/harmony/security/x509/EDIPartyName$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/EDIPartyName;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/EDIPartyName;->nameAssigner:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/EDIPartyName;->access$100(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/EDIPartyName;->partyName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/EDIPartyName;->access$200(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    return-void
.end method
