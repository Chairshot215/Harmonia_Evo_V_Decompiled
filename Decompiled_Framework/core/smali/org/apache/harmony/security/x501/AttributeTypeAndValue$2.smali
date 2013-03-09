.class final Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeValue;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->access$100(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->access$200(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;

    move-result-object v2

    aput-object v2, p2, v1

    return-void
.end method
