.class public abstract Lorg/apache/harmony/security/asn1/ASN1TypeCollection;
.super Lorg/apache/harmony/security/asn1/ASN1Constructed;
.source "ASN1TypeCollection.java"


# instance fields
.field public final DEFAULT:[Ljava/lang/Object;

.field public final OPTIONAL:[Z

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method protected constructor <init>(I[Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructed;-><init>(I)V

    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 type is not designed to be encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final setDefault(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aput-object p1, v0, p2

    return-void
.end method

.method protected final setOptional(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
