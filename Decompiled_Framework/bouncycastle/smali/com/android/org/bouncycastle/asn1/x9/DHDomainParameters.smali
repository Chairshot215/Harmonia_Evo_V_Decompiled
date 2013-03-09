.class public Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private j:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private p:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private q:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

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

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getG()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getJ()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getP()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getQ()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getValidationParms()Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
