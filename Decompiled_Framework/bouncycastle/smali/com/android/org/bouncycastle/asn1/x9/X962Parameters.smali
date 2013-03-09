.class public Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private params:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public isImplicitlyCA()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    return v0
.end method

.method public isNamedCurve()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method
