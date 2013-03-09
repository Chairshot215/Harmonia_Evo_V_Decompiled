.class public abstract Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
.super Lorg/apache/harmony/security/asn1/ASN1Constructed;
.source "ASN1ValueCollection.java"


# instance fields
.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructed;-><init>(I)V

    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method
