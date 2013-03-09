.class public Lcom/android/org/bouncycastle/asn1/x509/Time;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "Time.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field time:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v4, "Z"

    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x79e

    if-lt v3, v4, :cond_0

    const/16 v4, 0x801

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERUTCTime;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Time;->time:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
