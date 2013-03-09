.class public final Lorg/apache/harmony/security/x501/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field public static final ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private canonicalString:Ljava/lang/String;

.field private volatile encoded:[B

.field private rdn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private rfc1779String:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    new-instance v0, Lorg/apache/harmony/security/x501/Name$1;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/Name$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/harmony/security/x509/DNParser;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/x509/DNParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/DNParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->getEndOffset()I

    move-result v1

    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Wrong content length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-object v0
.end method

.method private getName0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_0
    if-ltz v3, :cond_5

    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v7, "CANONICAL"

    if-ne v7, p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;

    invoke-direct {v7}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;-><init>()V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    invoke-virtual {v2, p1, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->appendName(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "RFC1779"

    if-ne v7, p1, :cond_2

    const-string v7, " + "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v7, 0x2b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "RFC1779"

    if-ne p1, v7, :cond_4

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CANONICAL"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    return-object v6
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "RFC1779"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "RFC2253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "RFC1779"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "RFC1779"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "RFC2253"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "RFC2253"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "CANONICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "CANONICAL"

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v0
.end method
