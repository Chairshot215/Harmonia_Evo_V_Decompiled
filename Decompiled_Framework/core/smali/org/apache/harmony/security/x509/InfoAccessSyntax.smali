.class public final Lorg/apache/harmony/security/x509/InfoAccessSyntax;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InfoAccessSyntax.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final accessDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;

    sget-object v1, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AccessDescriptions list is null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AccessDescriptions:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "NULL\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n---- InfoAccessSyntax:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "\n---- InfoAccessSyntax END\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
